# -*- coding: utf-8 -*-
from odoo import api, fields, models, _, SUPERUSER_ID
from odoo.exceptions import ValidationError, UserError

class ProductTemplate(models.Model):
    _inherit = 'product.template'


    @api.onchange('detailed_type','is_consignments')
    def onchange_detailed_type(self):
        ''' Tracking is default lot while choosing Product Type is storable '''
        for record in self:
            if record.detailed_type == 'product' and record.is_consignments:
                record.tracking = 'lot'


class ProductProduct(models.Model):
    _inherit = 'product.product'

    @api.onchange('detailed_type','is_consignments')
    def onchange_detailed_type(self):
        ''' Tracking is default lot while choosing Product Type is storable '''
        for record in self:
            if record.detailed_type == 'product' and record.is_consignments:
                record.tracking = 'lot'