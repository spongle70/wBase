@echo off

set C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx

echo "base_Logon: FIXTIME"

w32tm /unregister

w32tm /register

sc start w32time

sc config w32time start=auto

w32tm /config /update /manualpeerlist:"time.windows.com"

w32tm /resync

@REM sc queryex state=all type=service
