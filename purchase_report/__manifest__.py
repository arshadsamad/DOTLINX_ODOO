# -*- coding: utf-8 -*-

{
    'name': "Purchase Report",
    'summary': "Purchase Report",
    'description': "Purchase Report",
    'category': 'Purchase',
    'version': '1.0',
    'depends': ['purchase'],
    'data': [
        "report/purchase_report_template.xml",
        "report/report.xml",
        "views/purchase_order_view.xml",
    ],
    'installable': True,
    'application': True,
    'license': 'OEEL-1',
}