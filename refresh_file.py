import os

import win32com.client

path = os.getcwd()

office = win32com.client.Dispatch("Excel.Application")

number_of_zones = 19
sectors = ["BUI", "TRA"]
filename_format = "VT_BDX%s_%s_V01.xlsx""

for i in range(1, number_of_zones + 1):
    for file in sectors:
        filename = filename_format % (f"{i:02d}", file)
        filepath = os.path.join(path, filename)
        print("Refreshes", filepath)

        wb = office.Workbooks.Open(filepath)
        wb.RefreshAll()
        wb.Save()
        wb.Close()
