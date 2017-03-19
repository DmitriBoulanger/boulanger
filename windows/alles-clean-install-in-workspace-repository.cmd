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
E:
SET WORKSPACE_DIRECTORY=%~dp0%..\..\..\..\samples\
rem ==================================================================

SET MAVEN_REPOSITORY=%WORKSPACE_DIRECTORY%m2\repository
SET MAVEN_SETTINGS=%WORKSPACE_DIRECTORY%\m2\settings.xml
SET GIT_DIRECTORY=%WORKSPACE_DIRECTORY%git

echo.
echo ===================================================================
echo             Installation of root
echo ===================================================================
pushd %GIT_DIRECTORY%\root
rem dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install with skipTests ...
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ===================================================================
echo             Installation of tools
echo ===================================================================
pushd %GIT_DIRECTORY%\tools
rem dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install with skipTests ...
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ===================================================================
echo             Installation of mvn-plugins
echo ===================================================================
pushd %GIT_DIRECTORY%\mvn-plugins
rem dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install with skipTests ..
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ===================================================================
echo             Installation of samples-spring-boot
echo ===================================================================
pushd %GIT_DIRECTORY%\samples-spring-boot
rem dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install skipTests ..
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ===================================================================
echo             Installation of samples
echo ===================================================================
SET WORKING_DIRECTORY=%GIT_DIRECTORY%\samples
pushd %WORKING_DIRECTORY%
rem dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install skipTests ..
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ===================================================================
echo            Installation of tests
echo ===================================================================
pushd %GIT_DIRECTORY%\tests
rem dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install skipTests ..
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

pause