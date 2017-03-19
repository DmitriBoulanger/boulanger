
echo.
echo =====================================================================================================================
echo             Installation of XXXXXXXXXXXXXXXXXXXXXXXX
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\XXXXXXXXXXXXXXXXXXXXXXXX
CD %WORKING_DIRECTORY%
SET MVN_ARGS= ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
echo.
rem dir /B
echo.
echo Running Maven:
echo WORKING_DIRECTORY=%WORKING_DIRECTORY%
echo MVN_ARGS=%MVN_ARGS%
echo.
echo.
pause
call mvn %MVN_ARGS%
echo.
pause