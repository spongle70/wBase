@echo off

set C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx

set LOCAL_ONBOOT=%LOCAL%\local_Onboot.bat

echo "base_Onboot: Started"

set SPEEDUP=C:\Scripts\NetworkScripts\SpeedUp.bat

call %TMESSAGE% '"%check_computername% Onboot starting "'


echo "Fixing time...."
call %BASE%baseFixTime.bat

call %TMESSAGE% '"...STARTED base %check_computername% "'

echo "base_Onboot: Finished"