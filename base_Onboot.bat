@echo off
call C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx
echo "%~n0: Start"

echo "Fixing time...."
call %BASE%\baseFixTime.bat

call %TMESSAGE% '"...STARTED base %check_computername% "'

echo "%~n0: Finished"