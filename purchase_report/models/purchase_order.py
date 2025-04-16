from odoo import models, fields, api, _

class PurchaseOrder(models.Model):
	_inherit = 'purchase.order'

	extra_notes = fields.Text('Extra Notes')