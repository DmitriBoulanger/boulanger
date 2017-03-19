echo off
echo.
echo =====================================================================================================================
echo.
echo               Complete build-up of the workspace
echo.
echo The build-up uses the common local repository to allocate the
echo maven artifacts.This repository is cleaned up before ruuning maven.
echo The workspace repository is NOT changed. The build-up only performs 
echo clean-up of the target-directories in the workspace
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
SET MAVEN_REPOSITORY=%WORKSPACE_DIRECTORY%..\_m2\repository
SET MAVEN_SETTINGS=%WORKSPACE_DIRECTORY%..\_m2\settings-jbehave.xml
rem =====================================================================================================================

CALL %CURRENT_DIRECTORY%cleaner.cmd
CALL %CURRENT_DIRECTORY%alles-clean-install-job.cmd
