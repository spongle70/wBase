@echo off
call C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx
echo "START: %~n0"

echo "Fixing time...."
call %BASE%\baseFixTime.bat

del C:\Scripts\bSecrets\b_Syncthing.bat
del C:\Scripts\lSecrets\l_Syncthing.bat

call %TMESSAGE% '"...STARTED base %check_computername% "'


echo "FINISHED: %~n0"