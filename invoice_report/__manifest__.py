# -*- coding: utf-8 -*-

{
    'name': "Invoice Report",
    'summary': "Invoice Report",
    'description': "Invoice Report",
    'category': 'Stock',
    'version': '1.0',
    'depends': ['account','pways_purchase_consignment'],
    'data': [
        "report/invoice_report_template.xml",
        "report/report.xml",
        "views/account_move_view.xml",
    ],
    'installable': True,
    'application': True,
    'license': 'OEEL-1',
}