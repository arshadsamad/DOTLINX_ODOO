# -*- coding: utf-8 -*-

from odoo import fields, models, api


class AccountMove(models.Model):
    _inherit = "account.move"

    @api.model
    def _get_invoice_in_payment_state(self):
        return "in_payment"


class AccountJournal(models.Model):
    _inherit = "account.journal"

    available_payment_method_ids = fields.Many2many(
        comodel_name="account.payment.method",
        compute="_compute_available_payment_method_ids",
    )

    @api.depends(
        "outbound_payment_method_line_ids",
        "inbound_payment_method_line_ids",
    )
    def _compute_available_payment_method_ids(self):
        super()._compute_available_payment_method_ids()
        payment_method = self.env["account.payment.method"].search([])
        for journal in self:
            journal.available_payment_method_ids = [(6, 0, payment_method.ids)]
