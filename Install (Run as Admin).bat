@echo off
dism.exe /Online /Add-Package /PackagePath:"%~dp0netfx3\update.mum"
pause