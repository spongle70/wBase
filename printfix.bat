@echo off
echo.
echo TH PrintFix v1 
echo Checking Print Jobs..
wmic printjob get jobid, document, jobstatus
Pause
echo Purging the print queue...
net stop Spooler
echo Deleting all print jobs...
ping localhost -n 4 > nul
del /q %SystemRoot%\system32\spool\printers\*.*
net start Spooler
echo Current Print Jobs...
wmic printjob get jobid, document, jobstatus
echo Done! - Windows will automaticaly close...
ping localhost -n 5 > nul