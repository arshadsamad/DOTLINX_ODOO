{
	"name": "Purchase  Consignments",
	"version":"16.0.1.0.10",
	"category": "Purchases",
	'summary': "Seller can consign his product to retailer to sales product based on commision. commision based on consignments and multiple reports",
	'author': "Preciseways",
	'website': "http://www.preciseways.com",
	"depends": ['purchase', 'stock','purchase_stock','sale_management','sale_purchase_fix_discount','sale_fixed_amount_discount','report_xlsx'],
	"data": [
		'security/ir.model.access.csv',
		'security/purchase_security_inherit.xml',
		'data/data.xml',
		'data/demo.xml',
		'views/purchase_order_view.xml',
		'views/res_partner_view.xml',
		'views/sale_order_view.xml',
		'views/analytic_account_view.xml',
		'views/expense_config_view.xml',
		#'views/product_view.xml',
		'report/consignments_template.xml',
		'report/consignments_account.xml',

		#'report/consignment_report_template.xml',
		'report/consignment_damage_report.xml',
		'report/consignment_status_report.xml',
		'report/consignment_detail_report_pdf.xml',
		# Wizard
		'wizard/consignment_damage_report_view.xml',
		'wizard/consignment_status_report_view.xml',
		'wizard/consignment_report_wizard_view.xml',
		'report/report_action.xml',
	],
	"Application": True,
	"installable": True,
	'price': 25.0,
	'currency': 'EUR',
	'images':['static/description/banner.png'],
	'license': 'OPL-1',

    'assets': {
        'web.assets_backend': [
            'pways_purchase_consignment/static/src/css/style.css',
        ],
    }
}