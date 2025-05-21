# -*- coding: utf-8 -*-

from odoo import api, fields, models, _

class ExpenseConfig(models.Model):
    _name = "expenses.config"
    _description = "Expenses Config"

    name = fields.Char('Name')
    is_commission_expense = fields.Boolean('Is Commission ?', default=False)
    commission_percent = fields.Float('Commission %', default=0)

    @api.onchange('is_commission_expense')
    def onchange_is_commission_expense(self):
        self.commission_percent = 0
