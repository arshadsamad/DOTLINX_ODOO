from odoo import models
import xlsxwriter

class Reportconsignment_detail_report_xlsx(models.AbstractModel):
    _name = 'report.consignment.consignment_detail_report_xlsx'
    _inherit = 'report.report_xlsx.abstract'

    def generate_xlsx_report(self, workbook, data, orders):
        sheet = workbook.add_worksheet('Sale Report')

        bold = workbook.add_format({'bold': True, 'border': 1})
        center_align = workbook.add_format({'align': 'center', 'valign': 'vcenter', 'border': 1})
        wrap_text = workbook.add_format({'text_wrap': True, 'border': 1})

        sheet.set_column('A:H', 20)  

        sheet.merge_range('A1:H1', 'GUJARAT FREIGHT TOOLS', bold)
        
        sheet.merge_range('A2:H2', 'Manufacturing and Supply of Precision Press Tool', bold)

        sheet.write('A4', 'Address:', bold)
        sheet.write('B4', data.get('company_address', ''), wrap_text)
        sheet.write('A5', 'Phone:', bold)
        sheet.write('B5', self.env.company.phone, wrap_text)
        sheet.write('A6', 'Website:', bold)
        sheet.write('B6', self.env.company.website, wrap_text)
        sheet.write('A7', 'Email:', bold)
        sheet.write('B7', self.env.company.email, wrap_text)

        sheet.merge_range('A9:H9', 'Consignment Detailed Report', bold)
        
        sheet.write('A10', 'Date', bold)
        sheet.write('B10', 'Parking Date', bold)
        sheet.write('C10', 'Items', bold)
        sheet.write('D10', 'Vessel Name', bold)
        sheet.write('E10', 'Container Qty', bold)
        sheet.write('F10', 'Container No', bold)

        row = 10
        for order in orders:
            #sheet.write(row, 0, order.date_order.strftime('%Y-%m-%d'), wrap_text)
            sheet.write(row, 0, '', wrap_text)
            sheet.write(row, 1, '', wrap_text)
            sheet.write(row, 2, '', wrap_text)
            sheet.write(row, 3, '', wrap_text)
            sheet.write(row, 4, '', wrap_text)
            sheet.write(row, 5, '', wrap_text)
            row += 1

        sheet.write('A12', 'S.No', bold)
        sheet.write('B12', 'Sold Qty', bold)
        sheet.write('C12', 'Remaining Qty', bold)
        sheet.write('D12', 'Selling Price (AED)', bold)
        sheet.write('E12', 'Total Sold Value (AED)', bold)
        sheet.write('F12', 'Sold By', bold)

        serial_no = 1
        # for line in orders:
        #     sheet.write(row, 0, serial_no, center_align)
        #     sheet.write(row, 1, line.product_uom_qty, center_align)
        #     sheet.write(row, 2, line.product_uom_qty - line.qty_delivered, center_align)
        #     sheet.write(row, 3, line.price_unit, center_align)
        #     sheet.write(row, 4, line.price_total, center_align)
        #     sheet.write(row, 5, line.salesperson_id.name if line.salesperson_id else '', center_align)
        #     serial_no += 1
        #     row += 1
