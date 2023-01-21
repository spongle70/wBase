@echo off
call C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx
echo "START: %~n0"

echo "Fixing time...."
call %BASE%\baseFixTime.bat

call %TMESSAGE% '"...STARTED base %check_computername% "'

echo "FINISHED: %~n0"