@echo off

set var=1

:start
set /a var+=1
if %var% EQU 20 goto end
if %var% lss 10 (
    copy "VT_BDX01_BUI_V01.xlsx" "VT_BDX0%var%_BUI_V01.xlsx"
    copy "VT_BDX01_TRA_V01.xlsx" "VT_BDX0%var%_TRA_V01.xlsx"
) else (
    copy "VT_BDX01_BUI_V01.xlsx" "VT_BDX%var%_BUI_V01.xlsx"
    copy "VT_BDX01_TRA_V01.xlsx" "VT_BDX%var%_TRA_V01.xlsx"
)
goto start
:end
python refresh_file.py
pause
exit