echo off
echo.
echo ==================================================================
echo.
echo               Complete build-up of the workspace
echo.
echo The build-up uses the workspace repository to allocate the
echo maven artifacts. The build-up performs clean-up of the targets in the workspace
echo.
echo ==================================================================
echo.
call java -version
call mvn -version
pause

rem ==================================================================
SET WORKSPACE_DIRECTORY=%~dp0%..\..\..\..\XXXXXXXXXXXXXXXXXXXXXX\
rem ==================================================================

SET MAVEN_REPOSITORY=%WORKSPACE_DIRECTORY%m2\repository
SET MAVEN_SETTINGS=%WORKSPACE_DIRECTORY%\m2\settings.xml
SET GIT_DIRECTORY=%WORKSPACE_DIRECTORY%git

echo.
echo ===================================================================
echo             Installation of XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo ===================================================================
pushd %GIT_DIRECTORY%\XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
rem dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install with skipTests ...
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true


pause