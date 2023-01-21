@echo off
call C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx
echo "%~n0: Start"

set LOCAL_LOGON=%LOCAL%\local_Logon.bat

FOR %%x IN (%BASE%\b_*.bat) DO (
    echo "%%x"
    call "%%x"
)

FOR %%x IN (C:\Scripts\bSecrets\b_*.bat) DO (
    echo "%%x"
    call "%%x"
)

if exist %LOCAL_LOGON% (
    echo "Starting LOCALISED logon %LOCAL_LOGON% "
    call %LOCAL_LOGON%
)

echo "%~n0: Finished"