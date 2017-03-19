echo off
echo.
echo =====================================================================================================================
echo.
echo               Complete build-up of the workspace
echo.
echo The build-up uses the workspace repository to allocate the
echo maven artifacts. The build-up removes targets in the workspace
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
SET MAVEN_REPOSITORY=%WORKSPACE_DIRECTORY%m2\repository
SET MAVEN_SETTINGS=%WORKSPACE_DIRECTORY%m2\settings.xml
rem =====================================================================================================================

CALL %CURRENT_DIRECTORY%alles-clean-install-job.cmd