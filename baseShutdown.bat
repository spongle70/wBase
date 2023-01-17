@echo off
call C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx
echo "%~n0: Start"

if "%check_computername%" EQU "SERVER" (
  set SHUTDOWN=0
)

if [%SHUTDOWN%] == [0] (
  echo "Not shutting down"
) else (
  echo "shutting down"
  call %TMESSAGE% '"%check_computername% shutting down"'
  C:\Windows\System32\shutdown.exe /s /t 1
)
