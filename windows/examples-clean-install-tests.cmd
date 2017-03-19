echo off
echo.
echo =====================================================================================================================
echo.
echo               Build-up of the selected examples
echo.
echo The build-up uses the workspace repository to allocate the
echo maven artifacts. The build-up runs in the examples-reactor
echo.
echo =====================================================================================================================

echo.
CALL java -version
CALL mvn -version
echo.

rem =====================================================================================================================
pause
SET CURRENT_DIRECTORY=%~dp0
CALL %CURRENT_DIRECTORY%location.cmd
rem =====================================================================================================================

SET MAVEN_REPOSITORY=%WORKSPACE_DIRECTORY%m2\repository
SET MAVEN_SETTINGS=%WORKSPACE_DIRECTORY%m2\settings.xml

echo.
echo =====================================================================================================================
echo            Running examples
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\jbehave-core\examples
CD %WORKING_DIRECTORY%
rem dir /B
echo.
echo WORKING_DIRECTORY=%WORKING_DIRECTORY% ...
echo Runnig Maven for jbehave-core-repository with install profile=examples ...
echo.
pause
CALL mvn install -s %MAVEN_SETTINGS% -P examples --batch-mode -e
echo.


pause