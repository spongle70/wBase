@echo on
set check_computername=%COMPUTERNAME%
echo "Found computer %check_computername%"

set PACKAGES="C:\Packages"
set WPUBLIC="C:\wPublic"
set SCRIPTS="C:\Scripts"
set GIT="C:\Program Files\Git\git-bash.exe"

mkdir %SCRIPTS%


if exist %GIT% (
   echo "Found git. Attempting pull"
   cd %SCRIPTS%\wBase
   %GIT% -c "git pull"

   cd %SCRIPTS%\wLocal
   %GIT% -c "git pull"

   cd \
)
