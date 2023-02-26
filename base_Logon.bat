@echo off
call C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx
echo "START: %~n0"

set LOCAL_LOGON=%LOCAL%\local_Logon.bat

del C:\Scripts\bSecrets\b_Syncthing.bat
del C:\Scripts\lSecrets\l_Syncthing.bat

set ZUPER=0

if "%USERNAME%" == "zuper" (
    echo "Found user %USERNAME%"
	echo "Not running Base scripts for %USERNAME%"
    set ZUPER=1
    )



if [%ZUPER%] == [1] (
	echo "Not running Base scripts for %USERNAME%"
) else (
        @REM if [%PRINTER%] == [1] (
        @REM     echo "Installing Brother"
        @REM     %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
        @REM )

        call C:\Scripts\wBase\BaseGit.bat
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
    )

echo "FINISHED: %~n0"