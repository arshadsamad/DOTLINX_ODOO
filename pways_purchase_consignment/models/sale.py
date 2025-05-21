# -*- coding: utf-8 -*-
from odoo import models, fields, api, _
from odoo.exceptions import ValidationError


class SaleOrder(models.Model):
    _inherit = "sale.order"

    is_consignments = fields.Boolean(string="Consignment", help="Consignments", copy=False)
    is_consignments_purchase = fields.Boolean(string="Purchase Consignments", help="Consignments", copy=False)
    analytic_id = fields.Many2one('account.analytic.account', string='Consignment Account', copy=False)

    def action_confirm(self):
        res = super(SaleOrder, self).action_confirm()

        if self.is_consignments:
            self._check_product_line()
            for line in self.order_line:
                if line.analytic_id:
                    consignments_data = []
                    d_vals = {
                        'product_id': line.product_id.id,
                        'description': line.product_id.name,
                        'consignment_type': 'income',
                        'qty': line.product_uom_qty,
                        'uom_id': line.product_id.uom_id.id,
                        'unit_price': line.price_unit,
                        'sales': line.price_unit,
                        'sale_id': self.id,
                        'purchase_order_line_id': line.purchase_order_line_id.id,
                    }
                    consignments_data.append((0, 0, d_vals))
                    line.analytic_id.consignment_ids = consignments_data

            # Update Delivery Lot No.
            for picking in self.picking_ids.filtered(lambda x: x.state != 'cancel'):
                if not picking.picking_type_id.show_reserved:
                    picking.picking_type_id.sudo().show_reserved = True
                for move_line in picking.move_line_ids_without_package.filtered(
                        lambda x: x.product_id and x.product_id.tracking == 'lot'):
                    if move_line.move_id.sale_line_id and move_line.move_id.sale_line_id.consignment_lot_id:
                        move_line.write({'lot_id': move_line.move_id.sale_line_id.consignment_lot_id.id})

        return res

    @api.constrains('order_line')
    def _check_product_line(self):
        if self.is_consignments:
            for record in self.order_line:
                analytic_id = record.analytic_id
                if analytic_id:
                    if record.product_id.id not in analytic_id.purchase_order_id.order_line.mapped('product_id').ids:
                        raise ValidationError(_("Product %s not found in this consignment(%s) purchase order" % (record.product_id.name,analytic_id.name)))
                    else:
                        purchase_line_ids = analytic_id.purchase_order_id.order_line.filtered(
                            lambda x: x.product_id.id == record.product_id.id)
                        qty = sum(purchase_line_ids.mapped('product_qty'))
                        product_uom_qty_with_exsting = self.env['sale.order.line'].search([('analytic_id','=',record.analytic_id.id),
                                                                                           ('product_id','=',record.product_id.id ),
                                                                                           ('order_id.state','!=','cancel')
                                                                                           ])
                        product_uom_qty_with_exsting = sum(product_uom_qty_with_exsting.mapped('product_uom_qty'))
                        if record.product_uom_qty > qty or product_uom_qty_with_exsting > qty:
                            raise ValidationError(_("The order quantity of product %s is greater than the consignment purchase order" % (record.product_id.name)))


class SaleOrderLine(models.Model):
    _inherit = "sale.order.line"

    purchase_order_line_id = fields.Many2one('purchase.order.line', "Purchase Line")
    analytic_id = fields.Many2one('account.analytic.account', string='Consignment Account', copy=False)
    consignment_lot_id = fields.Many2one('stock.lot', string='Consignment Lot', compute='_compute_consignment_lot_id')
    consignment_product_ids = fields.Many2many('product.product', compute='_compute_consignment_product_ids', string='Consignment Products')
    consignment_product_id = fields.Many2one('product.product', string='Products')

    @api.onchange('consignment_product_id')
    def onchange_consignment_product_id(self):
        for record in self:
            record.product_id = record.consignment_product_id.id

    @api.depends('analytic_id', 'product_id')
    def _compute_consignment_lot_id(self):
        for record in self:
            consignment_lot_id = False
            if record.analytic_id and record.product_id:
                analytic_lot_id = self.env['stock.lot'].sudo().search([
                    ('product_id', '=', record.product_id.id)
                ]).filtered(lambda x: x.account_analytic_id.id == record.analytic_id.id)
                if analytic_lot_id:
                    consignment_lot_id = analytic_lot_id[0].id
            record.consignment_lot_id = consignment_lot_id

    @api.depends("analytic_id")
    def _compute_consignment_product_ids(self):
        for record in self:
            po_products = []
            if record.order_id.is_consignments:
                if record.analytic_id:
                    product_ids = record.analytic_id.purchase_order_id.order_line.mapped(
                        "product_id"
                    )
                    po_products = product_ids.ids

                    # for (
                    #     product_id
                    # ) in record.analytic_id.purchase_order_id.order_line.mapped(
                    #     "product_id"
                    # ):
                    #     analytic_product_lot_id = (
                    #         self.env["stock.lot"]
                    #         .sudo()
                    #         .search([("product_id", "=", product_id.id)])
                    #         .filtered(
                    #             lambda x: x.account_analytic_id.id
                    #             == record.analytic_id.id
                    #         )
                    #     )
                    #     if (
                    #         analytic_product_lot_id
                    #         and sum(analytic_product_lot_id.mapped("product_qty")) > 0
                    #     ):
                    #         po_products.append(product_id.id)
            else:
                po_products = self.env["product.product"].search([]).ids
            record.consignment_product_ids = [(6, 0, po_products)]

    @api.constrains('analytic_id', 'consignment_product_id', 'product_uom_qty',)
    def check_consignment_product(self):
        for record in self:
            SaleOrderLine = self.env['sale.order.line']
            if record.consignment_product_id and record.analytic_id.purchase_order_id:
            # for line in record.account_stock_scrap_line:
            #     if line.purchased_qty < (line.sold_qty + line.scrapped_qty + line.to_scrap_qty):
                product_qty = 0.0
                purchase_line = record.analytic_id.purchase_order_id.order_line.filtered(
                            lambda x: x.product_id.id == record.consignment_product_id.id)
                if purchase_line:
                    product_qty = sum(purchase_line.mapped('product_qty'))
                order_line = SaleOrderLine.search([
                    ('analytic_id', '=', record.analytic_id.id),
                    ('id', '!=', record.id),
                    ('consignment_product_id', '=', record.consignment_product_id.id),
                    ('state', '!=', 'cancel')
                ])
                
                product_uom_qty = sum(order_line.mapped('product_uom_qty'))
                print("order_line", order_line.mapped('order_id'), product_qty, product_uom_qty)
                if product_uom_qty > product_qty:
                    raise ValidationError(_("Order quantity is more than the available consignment stock. '%s' !") % record.product_id.name)

    def _prepare_invoice_line(self, **optional_values):
        if 'sequence' in optional_values:
            del optional_values['sequence']
        values = super(SaleOrderLine, self)._prepare_invoice_line(**optional_values)
        if self.analytic_id:
            values['analytic_distribution'] = {self.analytic_id.id: 100}
        return values

    @api.depends('product_id')
    def _compute_product_uom(self):
        super()._compute_product_uom()
        if self.order_id.is_consignments:
            for rec in self:
                # if rec.order_id.is_consignments_purchase and not rec.order_id.analytic_id:
                #    raise ValidationError(_("Please select consignment account"))
                if rec.order_id.is_consignments_purchase and rec.analytic_id:
                    product_line_ids = rec.analytic_id.purchase_order_id.order_line.filtered(
                        lambda x: x.product_id == rec.product_id)
                    if product_line_ids:
                        rec.purchase_order_line_id = product_line_ids[0]

    def _compute_qty_delivered(self):
        super()._compute_qty_delivered()
        if self.order_id.is_consignments:
            for record in self:
                con_product_details = self.env['consignments.details'].search([('product_id','=',record.product_id.id),
                                                         ('analytic_id','=',record.analytic_id.id),
                                                         ('sale_id','=',record.order_id.id)
                                                         ])
                con_product_details.write({'qty':record.qty_delivered})

                """ This method compute the delivered quantity of the SO lines: it covers the case provide by sale module, aka
                    expense/vendor bills (sum of unit_amount of AAL), and manual case.
                    This method should be overridden to provide other way to automatically compute delivered qty. Overrides should
                    take their concerned so lines, compute and set the `qty_delivered` field, and call super with the remaining
                    records.
                """
                # compute for analytic lines
                lines_by_analytic = record.filtered(lambda sol: sol.qty_delivered_method == 'analytic')
                mapping = lines_by_analytic._get_delivered_quantity_by_analytic([('amount', '<=', 0.0)])
                for so_line in lines_by_analytic:
                    so_line.qty_delivered = mapping.get(so_line.id or so_line._origin.id, 0.0)

    @api.constrains('product_id','analytic_id')
    def _constrains_product_uom(self):
        for rec in self:
            if rec.order_id.is_consignments:
                if rec.order_id.is_consignments_purchase and not rec.analytic_id:
                    raise ValidationError(_("Please select consignment account"))
                consignments_ids = self.search([('product_id','=',rec.product_id.id),('analytic_id','=',rec.analytic_id.id),('order_id','=',rec.order_id.id)]).ids
                if len(consignments_ids) > 1:
                    raise ValidationError(_("You have given the same product(%s) and consignment account number(%s) multiple times, so we should use unique product and consignment account numbers.") %(rec.product_id.name,rec.analytic_id.name))
                record = rec
                if record.analytic_id and record.product_id:
                    analytic_product_lot_id = self.env['stock.lot'].sudo().search([
                        ('product_id', '=', record.product_id.id)
                    ]).filtered(lambda x: x.account_analytic_id.id == record.analytic_id.id)
                    if analytic_product_lot_id and sum(analytic_product_lot_id.mapped('product_qty')) < 1:
                        raise ValidationError(
                            _("You have given the Out Stock product(%s) and consignment account number(%s).") % (rec.product_id.name, rec.analytic_id.name))

    def create(self, values):
        if isinstance(values, list):
            for values1 in values:
                if 'analytic_id' in values1:
                    values1['analytic_distribution'] = {values1['analytic_id']: 100}
        if 'analytic_id' in values:
            values['analytic_distribution'] = {values['analytic_id']: 100}
        lines = super(SaleOrderLine, self).create(values)
        return lines

    def write(self, values):
        if 'analytic_id' in values:
            values['analytic_distribution'] = {self.analytic_id.id: 100}
        result = super(SaleOrderLine, self).write(values)
        return result

    # @api.onchange('product_id')
    # def product_id_change(self):
    #     values = super(SaleOrderLine, self).product_id_change()
    #     if self.order_id.is_consignments_purchase and not self.order_id.analytic_id:
    #         raise ValidationError(_("Please select consignment account"))
    #     if self.order_id.is_consignments_purchase and self.order_id.analytic_id:
    #         product_line_ids = self.order_id.analytic_id.purchase_order_id.order_line.filtered(lambda x: x.product_id == self.product_id)
    #         if product_line_ids:
    #             self.purchase_order_line_id = product_line_ids[0]
    #     return values
