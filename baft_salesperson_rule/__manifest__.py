{
    'name': 'Salesperson Access Restriction',
    'version': '1.0',
    'depends': ['sale', 'product', 'base', "purchase","account"],
    'data': [
        'security/salesperson_security.xml',
        'security/ir.model.access.csv',
        'views/product_view_inherit.xml',
    ],
    'instalable':True,
    'application':True
}