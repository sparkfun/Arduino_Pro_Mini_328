@echo off

forfiles /S /M *.b#* /C "cmd /c echo @file"
forfiles /S /M *.s#* /C "cmd /c echo @file"
forfiles /S /M *.G** /C "cmd /c echo @file"
forfiles /S /M *.dri /C "cmd /c echo @file"
forfiles /S /M *.TXT /C "cmd /c echo @file"
forfiles /S /M *.ZIP /C "cmd /c echo @file"

echo.

set /p input=Found above files, would you like me to delete them? (y/n)

IF "%input%" == "y" goto delete_all

EXIT

:delete_all

forfiles /S /M *.b#* /C "cmd /c del @file"
forfiles /S /M *.s#* /C "cmd /c del @file"
forfiles /S /M *.G** /C "cmd /c del @file"
forfiles /S /M *.dri /C "cmd /c del @file"
forfiles /S /M *.TXT /C "cmd /c del @file"
forfiles /S /M *.ZIP /C "cmd /c del @file"

EXIT