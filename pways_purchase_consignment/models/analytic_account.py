# -*- coding: utf-8 -*-
from odoo import api, fields, models, _, SUPERUSER_ID
from datetime import datetime, date
from odoo.exceptions import ValidationError, UserError
import json

class AccountAnalyticPlan(models.Model):
	_inherit = 'account.analytic.plan'

	is_consignment = fields.Boolean(string="Consignment", help="Consignment")

class AccountAsset(models.Model):
	_inherit = 'account.move'

	analytic_id = fields.Many2one('account.analytic.account', string="Analytic", copy=False)
	consignment_id = fields.Many2one('sale.consignment.order', copy=False)
	consignment_bill = fields.Boolean(copy=False)


class AnalyticAccountScrap(models.TransientModel):
	_name = 'analytic.account.stock.scrap'
	_description = 'Consumption Scrap'

	account_stock_scrap_line = fields.One2many('analytic.account.stock.scrap.line', 'analytic_scrap_id', string='Account Scrap')

	@api.constrains('account_stock_scrap_line')
	def check_valid_account_stock_scrap_line(self):
		for record in self:
			for line in record.account_stock_scrap_line:
				if line.purchased_qty < (line.sold_qty + line.scrapped_qty + line.to_scrap_qty):
					raise UserError(_("To Scrap Qty is higher for the Product '%s' !") % line.product_id.name)

	def action_create_stock_scrap(self):
		for record in self:
			for scrap_line in record.account_stock_scrap_line.filtered(lambda x: x.to_scrap_qty):
				analytic_lot_id = self.env['stock.lot'].sudo().search([
					('product_id', '=', scrap_line.product_id.id)
				]).filtered(lambda x: x.account_analytic_id.id == scrap_line.analytic_account_id.id)
				scrap_id = self.env['stock.scrap'].create({
					'analytic_account_id': scrap_line.analytic_account_id.id,
					'product_id': scrap_line.product_id.id,
					'scrap_qty': scrap_line.to_scrap_qty,
					'scrap_reason': scrap_line.scrap_reason,
					'lot_id':analytic_lot_id.id if analytic_lot_id else None
				})
				scrap_id.action_validate()


class AnalyticAccountScrapLines(models.TransientModel):
	_name = 'analytic.account.stock.scrap.line'
	_description = 'Consumption Scrap Lines'

	analytic_scrap_id = fields.Many2one('analytic.account.stock.scrap', string='Account Scrap')
	analytic_account_id = fields.Many2one('account.analytic.account', string='Account')
	product_id = fields.Many2one('product.product', string='Product')
	purchased_qty = fields.Float('Purchase Qty')
	sold_qty = fields.Float('Sold Qty')
	scrapped_qty = fields.Float('Scrapped Qty')
	to_scrap_qty = fields.Float('To Scrap Qty')
	scrap_reason = fields.Text('Scrap Reason')

	@api.onchange('to_scrap_qty')
	def onchange_to_scrap_qty(self):
		if self.to_scrap_qty and self.purchased_qty < (self.sold_qty + self.scrapped_qty + self.to_scrap_qty):
			self.to_scrap_qty = self.purchased_qty - self.sold_qty - self.scrapped_qty
			return {'warning': {'title': _("Warning"), 'message': _("Product '%s' has higher To Scrap Qty than Actual !") % self.product_id.name or ''}}


class AnalyticAccountStockScrap(models.Model):
	_inherit = 'stock.scrap'

	analytic_account_id = fields.Many2one('account.analytic.account', string='Consignment Account', domain="[('is_consignments', '=', True)]")
	scrap_reason = fields.Text('Scrap Reason', copy=False)


class AccountAnalyticAccount(models.Model):
	_inherit = 'account.analytic.account'
	_order = 'id desc'

	purchase_order_id = fields.Many2one('purchase.order', string="Purchase",copy=False)
	consign_container_no = fields.Char('Container No.', copy=False)
	consignment_ids = fields.One2many('consignments.details', 'analytic_id', string="Consignment")
	is_consignments = fields.Boolean(string="Consignments", help="Consignments", copy=False)
	bill_count = fields.Integer(string="Bill", compute="_compute_bill_count")
	commission = fields.Float(string="Commission (%)")
	residual_value = fields.Float('Residual',compute="compute_on_residual_value")

	@api.constrains('consignment_ids')
	def check_valid_consignment_ids(self):
		if len(self.consignment_ids.filtered(lambda x: x.expenses_c_id.is_commission_expense).ids) > 1:
			raise UserError(_("We cannot create multiple commission entries. Please create a single commission entry.!"))


	def get_product_so_lines(self):
		data_wise = []
		data_total_wise = []
		commision_expense_list = []
		pro_exp_data_list = []
		for record in self:
			for po_line in record.purchase_order_id.order_line:
				so_lines = self.env['sale.order.line'].search([('analytic_id','=',record.id),('product_id','=',po_line.product_id.id)])
				so_order = 	so_lines.mapped('order_id').filtered(lambda x:x.state != 'cancel')
				total_sold_value_product = 0.0
				total_sold_qty_product = 0.0
				total_remaining_qty_product = 0.0
				product_data = {'product_header_name': po_line.product_id.name + " (Total Qty:" + str(po_line.product_qty) + ")",
								}
				so_data_list = []
				for so in so_order:
					po_so_lines  = so_lines.filtered(lambda x:x.order_id.id == so.id)
					for so_line in po_so_lines:

						so_data = {'sold_qty':so_line.qty_delivered ,
								'remaining_qty':so_line.product_uom_qty - so_line.qty_delivered,
								'selling_price':so_line.price_unit,
								'total_sold_value':so_line.price_subtotal,
								'sold_by':so_line.order_id.user_id.name
								}
						so_data_list.append(so_data)
						total_sold_value_product += so_line.price_subtotal
						total_sold_qty_product += so_line.qty_delivered
						total_remaining_qty_product += (so_line.product_uom_qty - so_line.qty_delivered)
				#if so_data_list:
				product_data.update({'so_data_list':so_data_list,
									 'total_sold_value_product':total_sold_value_product,
									 'total_sold_qty_product':total_sold_qty_product,
									 'total_remaining_qty_product':total_remaining_qty_product
									 })
				data_wise.append(product_data)
				data_total_wise.append({'product_name':po_line.product_id.name,'total_sold_value_product':total_sold_value_product})

			consignment_ids = record.consignment_ids.filtered(lambda x:x.expenses_c_id.id)
			for con in consignment_ids:
				commision_expense_list.append({'expense_name':con.expenses_c_id.name,
											   'amount':con.others_expense,
											   'is_commission': con.expenses_c_id.is_commission_expense
											   })



		product_data_len = len(data_total_wise) - 1
		exp_data_len = len(commision_expense_list) - 1
		for i in range(0,max([len(data_total_wise),len(commision_expense_list)])):

			pro_exp_data = {'product_name':"",
							'total_sold_value_product': 0.0,
							'expense_name': "",
							'amount': 0.0,
							}


			if product_data_len >= i:
				pro_exp_data['product_name'] = data_total_wise[i]['product_name']
				pro_exp_data['total_sold_value_product'] = data_total_wise[i]['total_sold_value_product']

			if exp_data_len >= i:
				pro_exp_data['expense_name'] = commision_expense_list[i]['expense_name']
				pro_exp_data['amount'] = commision_expense_list[i]['amount']

			pro_exp_data_list.append(pro_exp_data)

		total_sales_amt = sum(record.consignment_ids.filtered(lambda x: x.sale_id.id).mapped('sales'))
		consignment_expense_ids = record.consignment_ids.filtered(lambda x: x.expenses_c_id.id)

		return [{'data_wise':data_wise,
				 'data_total_wise':data_total_wise,
				 'commision_expense_list':commision_expense_list,
				 'pro_exp_data_list':pro_exp_data_list,
				 'total_sales_amt':total_sales_amt,
				'net_payable_amt':total_sales_amt - sum(consignment_expense_ids.filtered(lambda x: not x.expenses_c_id.is_commission_expense).mapped('others_expense')),
				'net_amount':total_sales_amt - sum(consignment_expense_ids.mapped('others_expense')) ,
				 }]










	# def sale_xlsx_print_report(self):
	# 	# Prepare the data to be used in the XLSX report
	# 	data = {
	# 		'company_logo': self.env.company.logo,
	# 		'company_name': self.env.company.name,
	# 		'company_address': self.env.company.street,
	# 		'order_lines': self.order_line,
	# 	}
	# 	return self.env.ref('pways_purchase_consignment.action_consignment_detail_report_xlsx').report_action(self,
	# 																									  data=data)
	#
	# def action_print_pdf_report(self):
	# 	return self.env.ref('pways_purchase_consignment.action_consignment_detail_report_pdf').report_action(self)


	@api.depends('consignment_ids')
	def compute_on_residual_value(self):
		for rec in self:
			particulars_lines = rec.consignment_ids.filtered(lambda x:x.consignment_type != 'expense' and x.sale_id)
			expensed_lines = rec.consignment_ids.filtered(lambda x:x.consignment_type == 'expense')
			total_income = sum(particulars_lines.mapped('sales'))
			total_expense = sum(expensed_lines.mapped('others_expense'))
			rec.residual_value = total_income - total_expense

	def _compute_bill_count(self):
		for analytic in self:
			analytic.bill_count = len(self.env['account.move'].search([('analytic_id', '=', self.id)]))

	def action_generate_bill(self):

		for record in self:
			po_product_lines = record.purchase_order_id.order_line
			purchased_qty = sum(po_product_lines.mapped('qty_received')) or 0
			sold_qty = sum(
				record.consignment_ids.filtered(lambda x: x.consignment_type == 'income').mapped(
					'qty')) or 0
			scrapped_qty = sum(record.consignment_stock_scrap_line.mapped('scrap_qty')) or 0

			if purchased_qty > (sold_qty + scrapped_qty):
				raise UserError(_("Consignment is not fully stock-cleared !"))

		invoice_line_list = [(0, 0, {
			'product_id': False,
			'name': "",
			'quantity': 1,
			'product_uom_id': False,
			'tax_ids': [],
			'price_unit': self.residual_value,
			'analytic_distribution': {self.id:100},
		})]
		product_commission = self.env['product.product']
		
		journal_domain = [('type', '=', 'purchase'),('company_id', '=', self.env.company.id)]
		journal_id = self.env['account.journal'].search(journal_domain, limit=1)
		if not journal_id:
			raise ValidationError(_('Purchase type journal is not found'))
		
		# income_ids = self.consignment_ids.filtered(lambda x: x.consignment_type == "income" and not x.is_invoices)
		income_ids = self.consignment_ids.filtered(lambda x: x.consignment_type == "income")
		# expenses_ids = self.consignment_ids.filtered(lambda x: x.consignment_type == "expense" and not x.is_invoices)
		expenses_ids = self.consignment_ids.filtered(lambda x: x.consignment_type == "expense")
		
		if income_ids or expenses_ids:
			
			if self.commission:
				product_commission = self.env['product.product'].search([('default_code', '=', 'commission')], limit=1)
				if not product_commission:
					raise ValidationError(_('Please create service type product with default code commission'))
			
			# # for line in income_ids:
			# 	vals = (0, 0, {
			# 		'product_id': line.product_id.id or False,
			# 		'name': line.product_id.name,
			# 		'quantity': line.qty,
			# 		'product_uom_id': line.uom_id.id or False,
			# 		'price_unit': line.unit_price,
			# 		'analytic_distribution': {self.id:100},
			# 	})
			# 	invoice_line_list.append(vals)
			
			# for line in expenses_ids:
			# 	vals = (0, 0, {
			# 		'product_id': line.product_id.id or False,
			# 		'name': line.product_id.name,
			# 		'quantity': line.qty,
			# 		'product_uom_id': line.uom_id.id or False,
			# 		'price_unit': -abs(line.unit_price),
			# 		'analytic_distribution': {self.id:100},
			# 	})
			# 	invoice_line_list.append(vals)
			
			# if self.commission and income_ids and product_commission:
			# 	total_amount = sum(income_ids.mapped('sales'))
			# 	commission_price = (total_amount * self.commission) / 100
			# 	vals = (0, 0, {
			# 		'product_id': product_commission.id or False,
			# 		'name': product_commission.name,
			# 		'quantity': 1,
			# 		'price_unit': -abs(commission_price),
			# 		'analytic_distribution': {self.id:100},
			# 	})
			# 	invoice_line_list.append(vals)
			
			# purchase journal
			# consignments_bill = self.env['account.move'].search([('analytic_id', '=', self.id), ('move_type', '=', 'in_invoice'), ('state', '=', 'draft')], limit=1)
			# if not consignments_bill and invoice_line_list:
			if invoice_line_list:
				consignments_bill = self.env['account.move'].create({
								'move_type': 'in_invoice',
								'partner_id': self.partner_id.id or False,
								'journal_id': journal_id.id or False,
								'invoice_line_ids': invoice_line_list or False,
								'invoice_date': date.today(),
								'analytic_id': self.id,
								'purchase_id': self.purchase_order_id.id,
								'is_create_from_consign': True,
							})
			# if consignments_bill:
				# consignments_bill.invoice_line_ids[0].write({'price_unit': self.residual_value}) 
			# self.consignment_ids.write({'is_invoices': True})

	def action_open_bill(self):
		move_id = self.env['account.move'].search([('analytic_id', '=', self.id)])
		return {
			'name': _('Bills'),
			'view_type': 'form',
			'view_mode': 'tree,form',
			'res_model': 'account.move',
			'view_id': False,
			'type': 'ir.actions.act_window',
			'domain': [('id', 'in', move_id.ids)],
		}

	consignment_stock_scrap_line = fields.One2many('stock.scrap', 'analytic_account_id', string='Account Scrap(s)')
	consignment_stock_scrap_count = fields.Integer(compute='compute_consignment_stock_scrap_count', string='Scrap(s) Count')

	def compute_consignment_stock_scrap_count(self):
		for record in self:
			record.consignment_stock_scrap_count = len(record.consignment_stock_scrap_line) or 0

	def action_consign_account_scrap(self):
		if self.filtered(lambda x: not x.is_consignments):
			raise UserError(_("Only Consignment Accounts are eligible for Scrapping !"))

		account_stock_scrap_line = []
		for record in self:
			po_product_ids = list(set(record.purchase_order_id.order_line.mapped('product_id')))
			for po_product_id in po_product_ids:
				po_product_lines = record.purchase_order_id.order_line.filtered(lambda x: x.product_id.id == po_product_id.id)
				purchased_qty = sum(po_product_lines.mapped('qty_received')) or 0
				sold_qty = sum(record.consignment_ids.filtered(lambda x: x.product_id.id == po_product_id.id and x.consignment_type == 'income').mapped('qty')) or 0
				scrapped_qty = sum(record.consignment_stock_scrap_line.filtered(lambda x: x.product_id.id == po_product_id.id).mapped('scrap_qty')) or 0

				analytic_lot_id = self.env['stock.lot'].sudo().search([
					('product_id', '=', po_product_id.id)
				]).filtered(lambda x: x.account_analytic_id.id == record.id)
				to_scrap_qty = purchased_qty - sold_qty - scrapped_qty
				if analytic_lot_id:
					if to_scrap_qty > analytic_lot_id.product_qty:
						to_scrap_qty = analytic_lot_id.product_qty

				account_stock_scrap_line.append((0, 0, {
					'analytic_account_id': record.id,
					'product_id': po_product_id.id,
					'purchased_qty': purchased_qty,
					'sold_qty': sold_qty,
					'scrapped_qty': scrapped_qty,
					'to_scrap_qty': to_scrap_qty if to_scrap_qty > 0 else 0,
				}))

		ctx = {
			'default_account_stock_scrap_line': account_stock_scrap_line,
		}
		return {
			'type': 'ir.actions.act_window',
			'view_mode': 'form',
			'res_model': 'analytic.account.stock.scrap',
			'views': [(False, 'form')],
			'view_id': False,
			'target': 'new',
			'context': ctx,
		}

	def action_open_consign_account_scraps(self):
		action = self.env['ir.actions.actions']._for_xml_id('stock.action_stock_scrap')
		action['domain'] = [('analytic_account_id', '=', self.id)]
		return action

	@api.model
	def create(self, vals):
		res = super(AccountAnalyticAccount, self).create(vals)
		if 'purchase_order_id' in vals or 'consignment_ids' in vals or 'consignment_stock_scrap_line' in vals:
			res.update_consignment_account_stock()
		return res

	def write(self, vals):
		res = super(AccountAnalyticAccount, self).write(vals)
		if 'purchase_order_id' in vals or 'consignment_ids' in vals or 'consignment_stock_scrap_line' in vals:
			self.update_consignment_account_stock()
		return res

	def update_consignment_account_stock(self):
		for record in self:
			po_product_ids = list(set(record.purchase_order_id.order_line.mapped('product_id')))
			for po_product_id in po_product_ids:
				po_product_lines = record.purchase_order_id.order_line.filtered(lambda x: x.product_id.id == po_product_id.id)
				purchased_qty = sum(po_product_lines.mapped('qty_received')) or 0
				sold_qty = sum(record.consignment_ids.filtered(lambda x: x.product_id.id == po_product_id.id and x.consignment_type == 'income').mapped('qty')) or 0
				scrapped_qty = sum(record.consignment_stock_scrap_line.filtered(lambda x: x.product_id.id == po_product_id.id).mapped('scrap_qty')) or 0

				exist_account_quant = self.env['analytic.account.stock.quant'].sudo().search([
					('analytic_account_id', '=', record.id), ('product_id', '=', po_product_id.id)
				], limit=1)
				if exist_account_quant:
					exist_account_quant.sudo().write({
						'purchased_qty': purchased_qty,
						'sold_qty': sold_qty,
						'scrapped_qty': scrapped_qty,
						'remaining_qty': purchased_qty - sold_qty - scrapped_qty,
					})
				else:
					self.env['analytic.account.stock.quant'].sudo().create({
						'analytic_account_id': record.id,
						'product_id': po_product_id.id,
						'purchased_qty': purchased_qty,
						'sold_qty': sold_qty,
						'scrapped_qty': scrapped_qty,
						'remaining_qty': purchased_qty - sold_qty - scrapped_qty,
					})

	def action_open_consign_account_inventory(self):
		self.update_consignment_account_stock()
		action = self.env['ir.actions.actions']._for_xml_id('pways_purchase_consignment.action_account_consignment_stock_inventory')
		action['domain'] = [('analytic_account_id', '=', self.id)]
		return action


class AnalyticAccountInventoryData(models.Model):
	_name = 'analytic.account.stock.quant'
	_description = 'Consumption Account Stock'

	analytic_account_id = fields.Many2one('account.analytic.account', string='Consignment Account')
	product_id = fields.Many2one('product.product', string='Product')
	purchased_qty = fields.Float('Purchase Qty')
	sold_qty = fields.Float('Sold Qty')
	scrapped_qty = fields.Float('Scrapped Qty')
	remaining_qty = fields.Float('Remaining Qty')


class ConsignmentsDetails(models.Model):
	_name = 'consignments.details'

	analytic_id = fields.Many2one('account.analytic.account', string="Analytic")
	product_id = fields.Many2one('product.product', string="Product")
	description = fields.Char(string="Desc", related='product_id.name')
	date = fields.Date(string="Date", default=fields.Date.today())
	consignment_type = fields.Selection([('income', 'Income'),('expense', 'Expense')], string="Type")
	qty = fields.Float(string="Qty")
	uom_id = fields.Many2one('uom.uom', string="Uom")
	unit_price = fields.Float(string="Price")
	sales = fields.Float(string="Sale Qty", compute="_compute_sales", store=True)
	others_expense = fields.Float(string="Expenses")
	sale_id = fields.Many2one('sale.order', string="Sale")
	is_invoices = fields.Boolean(string="Invoiced")
	expenses_id = fields.Many2one('expenses.details', string="Expenses")
	purchase_order_line_id = fields.Many2one('purchase.order.line', string="Purchase")
	expenses_c_id = fields.Many2one('expenses.config', string='Expense')
	is_commission_expense = fields.Boolean(related='expenses_c_id.is_commission_expense', string='Is Commission ?')

	@api.depends('unit_price', 'qty')
	def _compute_sales(self):
		for line in self:
			if line.consignment_type == 'income':
				line.sales = line.qty * line.unit_price
			else:
				line.sales = 0

	@api.onchange('expenses_c_id', 'qty', 'unit_price')
	def onchange_expenses_c_id(self):
		self.others_expense = 0
		if self.expenses_c_id:
			self.consignment_type = 'expense'
			self.product_id = False

			if self.expenses_c_id.is_commission_expense:
				po_product_lines = self.analytic_id.purchase_order_id.order_line
				purchased_qty = sum(po_product_lines.mapped('qty_received')) or 0
				sold_qty = sum(self.analytic_id.consignment_ids.filtered(lambda x: x.consignment_type == 'income').mapped('qty')) or 0
				scrapped_qty = sum(self.analytic_id.consignment_stock_scrap_line.mapped('scrap_qty')) or 0

				if purchased_qty > (sold_qty + scrapped_qty):
					self.expenses_c_id = False
					return {'warning': {'title': _("Warning"), 'message': _("Consignment is not fully stock-cleared !")}}

				if self.expenses_c_id:
					self.uom_id = False
					self.qty = self.unit_price = self.sales = 0

					sales_total = sum(self.analytic_id.consignment_ids.filtered(lambda x: x.consignment_type == 'income').mapped('sales')) or 0
					self.others_expense = sales_total * (self.expenses_c_id.commission_percent / 100)
			else:
				self.others_expense = self.qty * self.unit_price

	@api.constrains('expenses_c_id')
	def check_valid_consignment_expenses(self):
		for record in self.filtered(lambda x: x.expenses_c_id.is_commission_expense):
			po_product_lines = record.analytic_id.purchase_order_id.order_line
			purchased_qty = sum(po_product_lines.mapped('qty_received')) or 0
			sold_qty = sum(record.analytic_id.consignment_ids.filtered(lambda x: x.consignment_type == 'income').mapped('qty')) or 0
			scrapped_qty = sum(record.analytic_id.consignment_stock_scrap_line.mapped('scrap_qty')) or 0

			if purchased_qty > (sold_qty + scrapped_qty):
				raise UserError(_("Consignment is not fully stock-cleared !"))

