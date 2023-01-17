@echo off
set myname=%COMPUTERNAME%
echo "Found computer %myname%"

@REM set DUFUS="1816161258:AAGNRS1t_ApXwAm0jJyms5H6H7BaJFPvyok"
@REM set TCHATID="1462463122"

call C:\Scripts\Base\tenv.bat

set MSG=bungler dungler
set STRING='%~1%'

curl -X POST -H 'content-type: application/json'  -F "chat_id=%TCHATID%" -F "text=%STRING%"  https://api.telegram.org/bot%DUFUS%/sendmessage

