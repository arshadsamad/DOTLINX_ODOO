from odoo import models, fields, api, _
from datetime import date, datetime
from dateutil.relativedelta import relativedelta
from odoo.exceptions import UserError, ValidationError


class ConsignmentDamageReport(models.TransientModel):
    _name = 'consignment.damage.report.wizard'
    _description = 'Consignment Damage Report'

    consignment_account_ids = fields.Many2many('account.analytic.account', string='Consignment Account', domain="[('is_consignments', '=', True)]")

    def action_print_report(self):
        data = {'consignment_account_ids': self.consignment_account_ids.ids or []}
        return self.env.ref('pways_purchase_consignment.print_consignment_damage_report').report_action(self, data=data)


class ConsignmentDamageTemplateReport(models.AbstractModel):
    _name = 'report.pways_purchase_consignment.consignment_damage_template'

    @api.model
    def _get_report_values(self, docids, data=None):
        domain = []
        consignment_account_ids = data.get('consignment_account_ids', [])
        if consignment_account_ids:
            domain += [('analytic_account_id', 'in', consignment_account_ids or [])]
        stock_scrap_ids = self.env['stock.scrap'].sudo().search(domain)

        model = self.env.context.get('active_model')
        docs = self.env[model].browse(self.env.context.get('active_id'))

        return {
            'docs': docs,
            'company': self.env.company,
            'stock_scrap_ids': stock_scrap_ids,
        }
