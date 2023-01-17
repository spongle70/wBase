@echo off

set C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx


if "%check_computername%" EQU "SERVER" (
  echo " NOT shutting down server "
) else (
  echo "echo "shutting down""
  call %TMESSAGE% '"%check_computername% shutting down"'
  C:\Windows\System32\shutdown.exe /s /t 1
)
