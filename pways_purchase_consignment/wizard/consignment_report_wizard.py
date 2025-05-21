from odoo import models, fields, api, _
from datetime import date, datetime
from dateutil.relativedelta import relativedelta
from odoo.exceptions import UserError, ValidationError

class ConsignmentReportWizard(models.TransientModel):
    _name = 'consignment.report.wizard'
    _description =" Consignment Purchase Report"

    report_type = fields.Selection([('consignment_details_report', 'Consignment Sale Report'), ('purchase_sale_report', 'Consignment Detail Report')], string="Report", default="consignment_details_report")
    consignment_account_id = fields.Many2one('account.analytic.account', string="Consignment Account")
    date_from = fields.Date(string='Date From', required=True, default=lambda self: fields.Date.to_string(date.today().replace(day=1)))
    date_to = fields.Date(string='Date To', required=True, default=lambda self: fields.Date.to_string((datetime.now() + relativedelta(months=+1, day=1, days=-1)).date()))
    customer_ids = fields.Many2many('res.partner', string="Customers")
    product_ids = fields.Many2many('product.product', string="Product")

    def action_print_report(self):
        data = {
            'report_type': self.report_type,
            'consignment_account_id': self.consignment_account_id.id,
            'date_from' : self.date_from,
            'date_to' : self.date_to,
            'customer_ids': self.customer_ids.ids,
            'product_ids': self.product_ids.ids,
            }
        return self.env.ref('pways_purchase_consignment.consignment_report').report_action(self, data=data)

    @api.constrains('date_from', 'date_to')
    def _check_dates(self):
        if any(muster.date_from > muster.date_to for muster in self):
            raise ValidationError(_(" The 'Date From' must be earlier 'Date To'."))

class ConsignmentTemplateReport(models.AbstractModel):
    _name = 'report.pways_purchase_consignment.consignments_template'

    @api.model
    def _get_report_values(self, docids, data=None):
        model = self.env.context.get('active_model')
        docs = self.env[model].browse(self.env.context.get('active_id'))
        consignment_account_id = self.env['account.analytic.account'].browse(data.get('consignment_account_id'))
        report_type = data.get('report_type')
        date_from = data.get('date_from')
        date_to = data.get('date_to')
        consignment_detailes_report = [] 
        consignment_header_report = []
        expenses_details = []
        if report_type == "consignment_details_report":
            sale_domain_consignment = [('is_consignments', '=', True),('state', '=', 'sale')]
            purchase_order_id = consignment_account_id.purchase_order_id
            sale_order_ids = self.env['sale.order'].search(sale_domain_consignment)
            sale_order_lines = sale_order_ids.mapped('order_line').filtered(lambda x:x.analytic_id.id == consignment_account_id.id)
            sale_order_ids = sale_order_lines.mapped('order_id')
            purchase_order_lines = purchase_order_id.mapped('order_line')
            vendor_name = purchase_order_id.partner_id.name
            purchase_date = purchase_order_id.date_order.date()
            consignment_name = consignment_account_id.code
            #total_sale_amount = sum(sale_order_ids.mapped('amount_total'))
            #commission_amount = (total_sale_amount * consignment_account_id.commission)/100
            consignment_lines = consignment_account_id.mapped('consignment_ids').filtered(lambda x:x.consignment_type == 'expense' and not x.expenses_c_id.is_commission_expense)
            pl_consignment_lines = consignment_account_id.mapped('consignment_ids').filtered(
                lambda x: x.consignment_type == 'expense' and x.expenses_c_id.is_commission_expense)
            expense_product_amount = sum(consignment_lines.mapped('unit_price'))
            #total_expense = commission_amount + expense_product_amount
            #paid_amount = total_sale_amount - total_expense
            expense_amount = sum(consignment_lines.mapped('others_expense'))
            pl_expense_amount = sum(pl_consignment_lines.mapped('others_expense'))
            # for expense in consignment_lines:
            #     expenses_details.append({
            #         'name': expense.product_id.name,
            #         'unit_price': round(expense.unit_price, 2),
            #         })
            # for po in purchase_order_id:
            #     for line in po.order_line:
            #         consignment_detailes_report.append({
            #         'product_name': line.product_id.name,
            #         'purchase_qty': line.product_qty,
            #         'purchase_price': round(line.price_subtotal,2),
            #         'uom': line.product_uom.name,
            #         'sale_qty':"",
            #         'sale_price':""
            #         })
            for so_line in sale_order_lines:
                
                rate_value = 0
                rate = self.env['consignments.details'].search([('sale_id','=',so_line.order_id.id),
                                                         ('product_id','=',so_line.product_id.id)])
                if rate:
                    rate_value = rate[0].unit_price

                aml = self.env['account.move.line'].search([('sale_line_ids','in',so_line.id)])
                inv_no = aml.move_id.name
                invoice_date = aml.move_id.invoice_date
                consignment_detailes_report.append({
                    'inv_no': inv_no,
                    'date':invoice_date,
                    'customer':so_line.order_id.partner_id.name,
                    'item':so_line.product_id.name,
                    'uom':so_line.product_uom.name,
                    'oty':round(so_line.product_uom_qty,2),
                    'rate':round(rate_value,2),
                    'amount':round(so_line.price_unit * so_line.product_uom_qty,2),
                })
                # consignment_detailes_report.append({
                #     'product_name': so_line.product_id.name,
                #     'sale_qty': round(so_line.product_uom_qty,2),
                #     'sale_price': round(so_line.price_subtotal,2),
                #     'uom': line.product_uom.name,
                #     'purchase_qty': "",
                #     'purchase_price': "",
                # })


            consignment_header_report.append({
                'vendor_name': vendor_name,
                'sale_order_ids': ', '.join(sale.name for sale in sale_order_ids),
                'purchase_date': purchase_date,
                'consignment_id':purchase_order_id.name,
                'consignment_number': consignment_name,
                'purchase_amount':round(consignment_account_id.residual_value,2),
                'expense_amount': round(expense_amount, 2),
                'pl_expense_amount':round(pl_expense_amount, 2),
                })
        customer_ids = data.get('customer_ids')
        product_ids = data.get('product_ids')
        lines = []
        if report_type == "purchase_sale_report":
            sale_domain = [('is_consignments', '=', True), ('date_order', '>=', date_from),('date_order', '<=', date_to), ('state', '=', 'sale')]
            if customer_ids:
                sale_domain.append(('partner_id', 'in', customer_ids))
            sale_ids = self.env['sale.order'].search(sale_domain)
            for sale in sale_ids:
                order_line = self.env['sale.order.line']
                if product_ids:
                    order_line = sale.order_line.filtered(lambda x: x.product_id.id in product_ids)
                else:
                    order_line = sale.mapped('order_line')
                lines.append({
                    'sale': sale,
                    'name': sale.name,
                    'sale_ids': sale_ids,
                    'customer': sale.partner_id.name,
                    'analytic_id': sale.analytic_id.name,
                    'order_line': order_line,
                    'purchase_id': sale.analytic_id.purchase_order_id.name,
                })

        return {
            'docs': docs,
            'company': self.env.company,
            'lines':lines,
            'consignment_detailes_report': consignment_detailes_report,
            'report_type': report_type,
            'date_from': date_from,
            'date_to': date_to,
            'consignment_header_report': consignment_header_report,
        }
