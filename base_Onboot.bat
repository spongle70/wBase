@echo off
call C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx
echo "%~n0: Start"

set LOCAL_ONBOOT=%LOCAL%\local_Onboot.bat

echo "base_Onboot: Started"

set SPEEDUP=C:\Scripts\NetworkScripts\SpeedUp.bat

call %TMESSAGE% '"%check_computername% Onboot starting "'


echo "Fixing time...."
call %BASE%baseFixTime.bat

call %TMESSAGE% '"...STARTED base %check_computername% "'

echo "base_Onboot: Finished"