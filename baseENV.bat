@echo off
set check_computername=%COMPUTERNAME%
echo "Found computer %check_computername%"

set PACKAGES=C:\Packages
set WPUBLIC=C:\wPublic

set BASE=C:\Scripts\wBase
set LOCAL=C:\Scripts\wLocal
set TMESSAGE=%BASE%\Msg\tmessage.bat
set TMESSAGEH=%BASE%\Msg\tmessageH.bat
set POWERSHELL=%SYSTEMROOT%\system32\WindowsPowerShell\v1.0\powershell.exe
