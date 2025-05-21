# -*- coding: utf-8 -*-

from datetime import datetime, date
from odoo import api, fields, models, _
from num2words import num2words

class ReportPurchaseorder(models.AbstractModel):
	_name = "report.pways_purchase_consignment.report_sale"
	_description = "Report For Purchase Order"

	@api.model
	def _get_report_values(self, docids, data):
		active_id = self._context.get('active_id')
		docs = self.env['account.analytic.account'].browse(docids)
		sale_order = self.env['sale.order'].search([('analytic_id','=',docs.id)],limit=1)
		invoice_ids = sale_order.invoice_ids
		purchase_order = docs.purchase_order_id
		particulars_lines = docs.consignment_ids.filtered(lambda x:x.consignment_type != 'expense' and x.sale_id)
		expensed_lines = docs.consignment_ids.filtered(lambda x:x.consignment_type == 'expense')

		def get_amount_to_word(amount):
			amount_string = num2words(amount,lang="en")
			if "point" in amount_string:
				amount_string = amount_string.replace("point","Dirham")
				amount_string += " fils"
			return amount_string

		return {
			"doc_ids": docids,
			"docs": docs,
			"invoice_ids": invoice_ids,
			"purchase_order": purchase_order,
			"particulars_lines": particulars_lines,
			"expensed_lines": expensed_lines,
			"date_today": date.today(),
			"num2words": num2words,
			"get_amount_to_word": get_amount_to_word,
		}