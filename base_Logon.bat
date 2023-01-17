@echo off

set C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx

set LOCAL_LOGON=%LOCAL%\local_Logon.bat

echo "base_Logon: Started"

FOR %%x IN (%BASE%\b_*.bat) DO (
    echo "%%x"
    call "%%x"
)

if exist "%LOCAL_LOGON%" (
    echo "Starting LOCALISED logon %LOCAL_LOGON%"
    call %LOCAL_LOGON%
)

echo "base_Logon: Finished"

