
echo.
echo =====================================================================================================================
echo             Installation of samples-spring-boot
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\samples-spring-boot
CD %WORKING_DIRECTORY%
SET MVN_ARGS= -Dmaven.repo.local=%MAVEN_REPOSITORY% clean install -s %MAVEN_SETTINGS% -DskipTests=true
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