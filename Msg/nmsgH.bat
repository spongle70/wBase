@echo off
set SECRETS="%BASE%\secrets\nenvH.bat"
call %SECRETS%

set MSG=bungler dungler
set STRING='%~1%'

curl -d %STRING% ntfy.sh/%DUFUS%

