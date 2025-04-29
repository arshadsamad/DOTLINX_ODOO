from odoo import models, api, exceptions, _

class ProductProduct(models.Model):
    _inherit = "product.product"

    # @api.model
    # def create(self, vals):
    #     if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
    #         raise exceptions.UserError(_("You are not allowed to create products."))
    #     return super(ProductProduct, self).create(vals)

    @api.model
    def _search(self, args, offset=0, limit=None, order=None, count=False, access_rights_uid=None):
        context = self._context or {}

        if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
            args = [('create_uid', '=', self.env.user.id)]

        return super(ProductProduct, self)._search(args, offset, limit, order, count=count, access_rights_uid=access_rights_uid)


class ProductTemplate(models.Model):
    _inherit = "product.template"

    # @api.model
    # def create(self, vals):
    #     if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
    #         raise exceptions.UserError(_("You are not allowed to create products."))
    #     return super(ProductTemplate, self).create(vals)

    @api.model
    def _search(self, args, offset=0, limit=None, order=None, count=False, access_rights_uid=None):
        context = self._context or {}

        if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
            args = [('create_uid', '=', self.env.user.id)]

        return super(ProductTemplate, self)._search(args, offset, limit, order, count=count, access_rights_uid=access_rights_uid)


class SaleOrder(models.Model):
    _inherit = "sale.order"

    # @api.model
    # def create(self, vals):
    #     if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
    #         raise exceptions.UserError(_("You are not allowed to create sale order."))
    #     return super(SaleOrder, self).create(vals)

    @api.model
    def _search(self, args, offset=0, limit=None, order=None, count=False, access_rights_uid=None):
        context = self._context or {}

        if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
            args = [('create_uid', '=', self.env.user.id)]

        return super(SaleOrder, self)._search(args, offset, limit, order, count=count, access_rights_uid=access_rights_uid)

    def action_confirm(self):
        if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
            raise exceptions.UserError(_("You are not allowed to confirm sale order."))
        result = super(SaleOrder, self).action_confirm()
        return result

class PurchaseOrder(models.Model):
    _inherit = "purchase.order"

    # @api.model
    # def create(self, vals):
    #     if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
    #         raise exceptions.UserError(_("You are not allowed to create sale order."))
    #     return super(SaleOrder, self).create(vals)

    @api.model
    def _search(self, args, offset=0, limit=None, order=None, count=False, access_rights_uid=None):
        context = self._context or {}

        if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
            args = [('create_uid', '=', self.env.user.id)]

        return super(PurchaseOrder, self)._search(args, offset, limit, order, count=count, access_rights_uid=access_rights_uid)


class StockPicking(models.Model):
    _inherit = "stock.picking"

    # @api.model
    # def create(self, vals):
    #     result = super(StockPicking, self).create(vals)
    #     if result.picking_type_code == 'outgoing':
    #         if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
    #             raise exceptions.UserError(_("You are not allowed to create transfer."))
    #     return result

    @api.model
    def _search(self, args, offset=0, limit=None, order=None, count=False, access_rights_uid=None):
        context = self._context or {}

        if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
            args = [('create_uid', '=', self.env.user.id)]

        return super(StockPicking, self)._search(args, offset, limit, order, count=count, access_rights_uid=access_rights_uid)


class AccountMove(models.Model):
    _inherit = "account.move"

    # @api.model
    # def create(self, vals):
    #     result = super(AccountMove, self).create(vals)
    #     if result.move_type == 'out_invoice':
    #         if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
    #             raise exceptions.UserError(_("You are not allowed to create invoice."))
    #     return result

    @api.model
    def _search(self, args, offset=0, limit=None, order=None, count=False, access_rights_uid=None):
        context = self._context or {}

        if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
            args = [('create_uid', '=', self.env.user.id)]

        return super(AccountMove, self)._search(args, offset, limit, order, count=count, access_rights_uid=access_rights_uid)
