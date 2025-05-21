from odoo import models

import logging
_logger = logging.getLogger(__name__)

class ConsignmentXlsxReport(models.AbstractModel):
    _name = 'report.pways_purchase_consignment.consignment_xlsx_report'
    _inherit = 'report.report_xlsx.abstract'

    # def generate_xlsx_report(self, workbook, data, partners):
    #     for obj in partners:
    #         report_name = obj.name
    #         # One sheet by partner
    #         sheet = workbook.add_worksheet(report_name[:31])
    #         bold = workbook.add_format({'bold': True})
    #         sheet.write(0, 0, obj.name, bold)
            
    def generate_xlsx_report(self, workbook, data, lines):
        _logger.info('self: %s', self)
        _logger.info('lines: %s', lines)
        _logger.info('workbook: %s', workbook)
        _logger.info('data: %s', data)
        _logger.info('context: %s', self.env.context)
        # lines - purchase.order
        # head = workbook.add_format({'align': 'center', 'bold': True,
        #                             'font_size': '20px'})
        # sub_heading = workbook.add_format(
        #     {'align': 'center', 'bold': True, 'font_size': '10px',
        #      'border': 1,'border_color': 'black'})
        # txt = workbook.add_format({'font_size': '10px', 'border': 1})
        # txt_l = workbook.add_format(
        #     {'font_size': '10px', 'border': 1, 'bold': True})
        
        date_head = workbook.add_format({'align': 'center', 'bold': True,'font_size': '10px'})
        date_style = workbook.add_format({'align': 'center','font_size': '10px'})
        
        
        title_style1 = workbook.add_format({'italic':True, 'bold':True, 'font_color': 'black', 'bg_color': 'yellow','text_wrap' :True,'border':True,'align':'center','valign': 'vcenter','font_size':18})
        sub_header_style1 = workbook.add_format({'bold':True , 'font_color': 'black', 'bg_color': '#00B0F0','text_wrap' :True,'border':True,'align':'center','font_size':15})
        sub_header_style2 = workbook.add_format({'bold':True , 'font_color': 'black', 'bg_color': 'yellow','text_wrap' :True,'border':True,'align':'left','font_size':15})
        sub_header_style3 = workbook.add_format({'bold':True, 'font_color': 'yellow', 'bg_color': '#00B0F0','text_wrap' :True,'border':True,'align':'left','valign': 'vcenter','font_size':15})
        sub_header_style4 = workbook.add_format({'bold':True , 'font_color': 'black', 'bg_color': 'yellow','text_wrap' :True,'border':True,'align':'center','font_size':15})

        bold_text_style = workbook.add_format({'bold':True,'font_color': 'black','bg_color': 'white','text_wrap' :True,'border':True,'align':'left','valign': 'vcenter','font_size':12})
        normal_text_style = workbook.add_format({'bold':False,'font_color': 'black','bg_color': 'white','text_wrap' :True,'border':True,'align':'center','valign': 'vcenter','font_size':12})
        
        for line in lines:
            sheet = workbook.add_worksheet(line.name or 'Consignment Repport')
            rindex = 1
            cindex = 0
            sheet.set_column(0,6,20)
            sheet.merge_range('%s:%s'%("A"+str(rindex), "D"+str(rindex)),line.company_id.name or ' ',title_style1)
            # rindex += 1
            columns = ['','', 'BS',94]
            for col in columns:
                sheet.write(rindex, cindex, col, sub_header_style1 if col else normal_text_style)
                cindex += 1
            rindex += 2
            sheet.merge_range('%s:%s'%("A"+str(rindex), "D"+str(rindex)),'SALES STATEMENT OF  ',sub_header_style2)
            cindex = 0
            sheet.write(rindex, cindex, 'DATE', bold_text_style)
            sheet.write(rindex, cindex+1, '31/08/2024', bold_text_style)
            sheet.write(rindex, cindex+2, 'ITEMS', bold_text_style)
            sheet.write(rindex, cindex+3, 'MIX FRUITS & VEG', bold_text_style)
            rindex += 1
            sheet.write(rindex, cindex, 'VESSEL NAME', bold_text_style)
            sheet.write(rindex, cindex+1, 'MUARA', bold_text_style)
            sheet.write(rindex, cindex+2, 'CONTAINER QTY', bold_text_style)
            sheet.write(rindex, cindex+3, '40 FT', bold_text_style)
            rindex += 1
            sheet.write(rindex, cindex, 'PARKING DATE', bold_text_style)
            sheet.write(rindex, cindex+1, '20/08/2024', bold_text_style)
            sheet.write(rindex, cindex+2, 'RELEASE DATE', bold_text_style)
            sheet.write(rindex, cindex+3, '23/08/2024', bold_text_style)
            rindex += 1
            sheet.write(rindex, cindex, 'LANDED DATE', bold_text_style)
            sheet.write(rindex, cindex+1, '19/08/2024', bold_text_style)
            sheet.write(rindex, cindex+2, 'CONTAINER NO.', bold_text_style)
            sheet.write(rindex, cindex+3, 'TRIU8014894', bold_text_style)
            rindex += 2
            cindex = 0
            if line.order_line:
                order_columns = ['No of Boxes','Price','Amount']

                orders_data = [
                    {
                        'name':'TENDER COCONUT',
                        'total_count':2008,
                        'data':[
                            {
                                'box_count':29,
                                'price':28,
                                'amount':812
                            },
                            {
                                'box_count':72,
                                'price':26,
                                'amount':1872
                            },
                            {
                                'box_count':428,
                                'price':25,
                                'amount':10700
                            },
                            {
                                'box_count':369,
                                'price':24,
                                'amount':8856
                            },
                            {
                                'box_count':203,
                                'price':23,
                                'amount':4669
                            },
                            {
                                'box_count':868,
                                'price':22,
                                'amount':19096
                            },
                            {
                                'box_count':39,
                                'price':0,
                                'amount':0
                            }
                        ]
                    },
                    {
                        'name':'RED PAPPAYA',
                        'total_count':300,
                        'data':[
                            {
                                'box_count':17,
                                'price':27,
                                'amount':459
                            },
                            {
                                'box_count':127,
                                'price':26,
                                'amount':3302
                            },
                            {
                                'box_count':133,
                                'price':25,
                                'amount':3325
                            },
                            {
                                'box_count':18,
                                'price':24,
                                'amount':432
                            },
                            {
                                'box_count':5,
                                'price':0,
                                'amount':0
                            }
                        ]
                    },
                    {
                        'name':'GREEN PAPPAYA',
                        'total_count':400,
                        'data':[
                            {
                                'box_count':400,
                                'price':16,
                                'amount':6400
                            },
                            {
                                'box_count':400,
                                'price':0,
                                'amount':6400
                            }
                        ]
                    },
                    {
                        'name':'KAPPA',
                        'total_count':300,
                        'data':[
                            {
                                'box_count':1,
                                'price':24,
                                'amount':24
                            },
                            {
                                'box_count':12,
                                'price':23,
                                'amount':276
                            },
                            {
                                'box_count':166,
                                'price':22,
                                'amount':3652
                            },
                            {
                                'box_count':15,
                                'price':21,
                                'amount':315
                            },
                            {
                                'box_count':4,
                                'price':20,
                                'amount':80
                            },
                            {
                                'box_count':2,
                                'price':18,
                                'amount':36
                            },
                            {
                                'box_count':100,
                                'price':0,
                                'amount':0
                            }
                        ]
                    }
                ]
                item_names = []
                item_amounts = []
                for order in orders_data:
                    item_names.append(order['name'])
                    sheet.write(rindex, cindex, order['name'], sub_header_style3)
                    sheet.write(rindex, cindex+1, '', sub_header_style3)
                    sheet.write(rindex, cindex+2, order['total_count'], sub_header_style3)
                    rindex += 1
                    for ordel_col in order_columns:
                        sheet.write(rindex, cindex, ordel_col, sub_header_style4)
                        cindex += 1
                    rindex += 1
                    cindex = 0
                    total_boxes = 0
                    total_amount = 0
                    for order_data in order['data']:
                        sheet.write(rindex, cindex, order_data['box_count'], normal_text_style)
                        sheet.write(rindex, cindex+1, order_data['price'], normal_text_style)
                        sheet.write(rindex, cindex+2, order_data['amount'], normal_text_style)
                        rindex += 1
                        total_boxes += order_data['box_count']
                        total_amount += order_data['amount']
                    sheet.write(rindex, cindex, total_amount,sub_header_style4)
                    sheet.write(rindex, cindex+1, '',sub_header_style4)
                    sheet.write(rindex, cindex+2, total_boxes,sub_header_style4)
                    rindex += 2
                    item_amounts.append(total_amount)
                rindex += 1
                col_headings = ['ITEMS','AMOUNT','EXPENSES','AED']
                for col in col_headings:
                    sheet.write(rindex, cindex, col, sub_header_style4)
                    cindex += 1
                rindex += 1
                cindex = 0
                for item_name in item_names:
                    sheet.write(rindex, cindex, item_name, bold_text_style)
                    cindex += 1
                    sheet.write(rindex, cindex, item_amounts[cindex-1], bold_text_style)
                    cindex += 1
                    sheet.write(rindex, cindex, '', bold_text_style)
                    cindex += 1
                    sheet.write(rindex, cindex, '', bold_text_style)
                    cindex = 0
                    rindex += 1
                sheet.write(rindex, cindex, '', bold_text_style)
                sheet.write(rindex, cindex+1, '', bold_text_style)
                sheet.write(rindex, cindex+2, 'REPACKING CHARGES', bold_text_style)
                sheet.write(rindex, cindex+3, '', bold_text_style)
                rindex += 1
                sheet.write(rindex, cindex, '', bold_text_style)
                sheet.write(rindex, cindex+1, '', bold_text_style)
                sheet.write(rindex, cindex+2, 'TRANSPORTATION CHARGES', bold_text_style)
                sheet.write(rindex, cindex+3, '', bold_text_style)
                rindex += 1
                sheet.write(rindex, cindex, '', bold_text_style)
                sheet.write(rindex, cindex+1, '', bold_text_style)
                sheet.write(rindex, cindex+2, 'CLEARING CHAREGS', bold_text_style)
                sheet.write(rindex, cindex+3, '', bold_text_style)
                rindex += 1
                sheet.write(rindex, cindex, 'TOTAL', sub_header_style3)
                sheet.write(rindex, cindex+1, '', sub_header_style3)
                sheet.write(rindex, cindex+2, 'TOTAL  =  ', sub_header_style3)
                sheet.write(rindex, cindex+3, '', sub_header_style3)
                rindex += 1
                sheet.write(rindex, cindex, 'TOTAL SALES = ', bold_text_style)
                sheet.write(rindex, cindex+1, '', bold_text_style)
                rindex += 1
                sheet.write(rindex, cindex, 'TOTAL EXPENSES = ', bold_text_style)
                sheet.write(rindex, cindex+1, '', bold_text_style)
                rindex += 1
                sheet.write(rindex, cindex, 'NET PROFIT = ', sub_header_style1)
                sheet.write(rindex, cindex+1, '', sub_header_style1)
                sheet.write(rindex, cindex+2, 'NET PAYABLE =', sub_header_style1)
                sheet.write(rindex, cindex+3, '', sub_header_style1)
                rindex += 1
                bold_center_text_style = workbook.add_format({'bold':True,'font_color': 'black','bg_color': 'white','text_wrap' :True,'border':True,'align':'center','valign': 'vcenter','font_size':12})
                sheet.write(rindex, cindex, 'REMARKS', bold_center_text_style)
                sheet.merge_range('%s:%s'%("B"+str(rindex), "D"+str(rindex)),'',bold_center_text_style)
                
                        
            
            
            


        
        
        