
echo.
echo =====================================================================================================================
echo             Installation of jbehave-core
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\jbehave-core
CD %WORKING_DIRECTORY%
rem dir /B
echo.
echo WORKING_DIRECTORY=%WORKING_DIRECTORY% ...
echo Runnig Maven for jbehave-core-repository with install profile=examples ...
echo.
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true -Dmaven.javadoc.skip=true --batch-mode -e
echo.
pause