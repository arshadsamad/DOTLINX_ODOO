from odoo import models, fields, api, _
from datetime import date, datetime
from dateutil.relativedelta import relativedelta
from odoo.exceptions import UserError, ValidationError


class ConsignmentStatusReport(models.TransientModel):
    _name = 'consignment.status.report.wizard'
    _description = 'Consignment Status Report'

    consignment_account_ids = fields.Many2many('account.analytic.account', string='Consignment Account', domain="[('is_consignments', '=', True)]")

    def action_print_report(self):
        data = {'consignment_account_ids': self.consignment_account_ids.ids or []}
        return self.env.ref('pways_purchase_consignment.print_consignment_status_report').report_action(self, data=data)


class ConsignmentStatusTemplateReport(models.AbstractModel):
    _name = 'report.pways_purchase_consignment.consignment_status_template'

    @api.model
    def _get_report_values(self, docids, data=None):
        domain = []
        consignment_account_ids = data.get('consignment_account_ids', [])
        if consignment_account_ids:
            domain += [('analytic_account_id', 'in', consignment_account_ids or [])]
        analytic_quant_ids = self.env['analytic.account.stock.quant'].sudo().search(domain)

        model = self.env.context.get('active_model')
        docs = self.env[model].browse(self.env.context.get('active_id'))

        return {
            'docs': docs,
            'company': self.env.company,
            'analytic_quant_ids': analytic_quant_ids,
        }
