# -*- coding: utf-8 -*-

from odoo import api, fields, models, _
from odoo.tools import float_compare


class AccountMove(models.Model):
	_inherit = 'account.move'

	is_create_from_consign = fields.Boolean('Is Created From Consign')


class AccountMoveLine(models.Model):
	_inherit = 'account.move.line'

	is_create_from_consign = fields.Boolean('Is Created From Consign')

	invoice_line_ids = fields.One2many(  # /!\ invoice_line_ids is just a subset of line_ids.
		'account.move.line',
		'move_id',
		string='Invoice lines',
		copy=False,
		readonly=True,
		domain=[('display_type', 'in', ('product', 'line_section', 'line_note'))],
		states={'draft': [('readonly', False)]},
	)

	def _prepare_analytic_distribution_line(self, distribution, account_id, distribution_on_each_plan):
		""" Prepare the values used to create() an account.analytic.line upon validation of an account.move.line having
			analytic tags with analytic distribution.
		"""
		self.ensure_one()
		# account_id = int(account_id) or False
		try:
		    account_id = int(account_id)
		except (ValueError, TypeError):
		    account_id = False
		account = self.env['account.analytic.account'].browse(account_id)
		distribution_plan = distribution_on_each_plan.get(account.root_plan_id, 0) + distribution
		decimal_precision = self.env['decimal.precision'].precision_get('Percentage Analytic')
		if float_compare(distribution_plan, 100, precision_digits=decimal_precision) == 0:
			amount = -self.balance * (100 - distribution_on_each_plan.get(account.root_plan_id, 0)) / 100.0
		else:
			amount = -self.balance * distribution / 100.0
		distribution_on_each_plan[account.root_plan_id] = distribution_plan
		default_name = self.name or (self.ref or '/' + ' -- ' + (self.partner_id and self.partner_id.name or '/'))
		return {
			'name': default_name,
			'date': self.date,
			'account_id': account_id,
			'partner_id': self.partner_id.id,
			'unit_amount': self.quantity,
			'product_id': self.product_id and self.product_id.id or False,
			'product_uom_id': self.product_uom_id and self.product_uom_id.id or False,
			'amount': amount,
			'general_account_id': self.account_id.id,
			'ref': self.ref,
			'move_line_id': self.id,
			'user_id': self.move_id.invoice_user_id.id or self._uid,
			'company_id': account.company_id.id or self.company_id.id or self.env.company.id,
			'category': 'invoice' if self.move_id.is_sale_document() else 'vendor_bill' if self.move_id.is_purchase_document() else 'other',
		}
