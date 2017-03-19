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
SET MAVEN_SETTINGS=%WORKING_DIRECTORY_GIT%\jbehave-core\settings.xml

echo.
echo =====================================================================================================================
echo            Running examples
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\jbehave-core\examples
SET MVN_ARGS=-Dmaven.repo.local=%MAVEN_REPOSITORY% install -s %MAVEN_SETTINGS% -P examples --batch-mode -e
CD %WORKING_DIRECTORY%
rem dir /B
echo.
echo Running Maven:
echo WORKING_DIRECTORY=%WORKING_DIRECTORY%
echo MVN_ARGS=%MVN_ARGS%
echo.
pause
CALL mvn %MVN_ARGS%
echo.


pause