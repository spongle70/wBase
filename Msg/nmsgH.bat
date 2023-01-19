@echo off
set SECRETS="C:\Scripts\bSecrets\nenv.bat"
call %SECRETS%

set MSG=bungler dungler
set STRING='%~1%'

curl -d %STRING% ntfy.sh/%DUFUS%

