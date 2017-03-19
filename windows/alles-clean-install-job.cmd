
echo.
echo =====================================================================================================================
echo             Installation of XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
CD %WORKING_DIRECTORY%
rem dir /B
echo.
echo WORKING_DIRECTORY=%WORKING_DIRECTORY% ...
echo Runnig Maven for XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX-repository YYYYYYYYYYYYYYYYYYYYYYYY ...
echo.
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
echo.
pause