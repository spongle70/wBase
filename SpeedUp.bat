@echo off
set EXE="%SYSTEMROOT%\system32\WindowsPowerShell\v1.0\powershell.exe"
set TEMPLATE="C:\Packages\SSH\SpeedUp.ps1"

%EXE% -ExecutionPolicy Bypass -File %TEMPLATE%

