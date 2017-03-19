echo off
echo.
echo =====================================================================================================================
echo.
echo               Complete build-up of the workspace
echo.
echo The build-up uses the common local repository to allocate the maven artifacts.
echo This local repository is cleaned up before ruuning maven.
echo The workspace repository is NOT changed. The build-up only cleans up the target-directories
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
SET MAVEN_SETTINGS=%WORKING_DIRECTORY_GIT%\XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\settings.xml
rem =====================================================================================================================

CALL %CURRENT_DIRECTORY%cleaner.cmd
CALL %CURRENT_DIRECTORY%alles-clean-install-job.cmd
