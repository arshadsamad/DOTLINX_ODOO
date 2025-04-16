from odoo import fields, models, api, _

class AccountMove(models.Model):
	_inherit = 'account.move'

	extra_notes = fields.Text('Notes')