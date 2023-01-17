@echo off
call C:\Scripts\wBase\baseENV.bat
@REM xxxxxxx


set STRING='%~1%'

call %BASE%\Msg\nmsg.bat %STRING%

