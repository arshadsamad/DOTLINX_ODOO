from odoo import models, api, exceptions, _

class ResPartner(models.Model):
    _inherit = "res.partner"

    # @api.model
    # def create(self, vals):
    #     if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
    #         raise exceptions.UserError(_("You are not allowed to create contacts."))
    #     return super(ResPartner, self).create(vals)

    @api.model
    def _search(self, args, offset=0, limit=None, order=None, count=False, access_rights_uid=None):
        context = self._context or {}

        if self.env.user.has_group("baft_salesperson_rule.group_restricted_salesperson"):
            args = [('create_uid', '=', self.env.user.id)]

        return super(ResPartner, self)._search(args, offset, limit, order, count=count, access_rights_uid=access_rights_uid)