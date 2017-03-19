echo off
echo.
echo ==================================================================
echo.
echo               Complete build-up of the workspace
echo.
echo The build-up uses the common local repository to allocate the
echo maven artifacts.This repository is cleaned up before ruuning maven.
echo The workspace repository is NOT changed. The build-up only performs 
echo clean-up of the target-directories in the workspace
echo.
echo ==================================================================
echo.
call java -version
call mvn -version
pause

rem ==================================================================
E:
SET WORKSPACE_DIRECTORY=%~dp0..\..\..\..\samples\
rem ==================================================================

SET MAVEN_REPOSITORY=%WORKSPACE_DIRECTORY%..\_m2\repository
SET MAVEN_SETTINGS=%WORKSPACE_DIRECTORY%..\_m2\settings.xml
SET GIT_DIRECTORY=%WORKSPACE_DIRECTORY%git

echo.
echo ===================================================================
echo          Clean-up of the common local artifacts
echo ===================================================================
cd %MAVEN_REPOSITORY%
dir /B
echo Removing all maven-artifacts ...
pause
cd ..
RMDIR %MAVEN_REPOSITORY% /S /Q
MKDIR %MAVEN_REPOSITORY% 
cd %MAVEN_REPOSITORY%
rem echo.
rem dir /B

echo.
echo ===================================================================
echo             Installation of root
echo ===================================================================
cd %GIT_DIRECTORY%\root
dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install with skipTests ...
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ===================================================================
echo             Installation of tools
echo ===================================================================
cd %GIT_DIRECTORY%\tools
dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install with skipTests ...
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ===================================================================
echo             Installation of mvn-plugins
echo ===================================================================
cd %GIT_DIRECTORY%\mvn-plugins
dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install with skipTests ..
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ===================================================================
echo             Installation of samples
echo ===================================================================
SET WORKING_DIRECTORY=%GIT_DIRECTORY%\samples
cd %WORKING_DIRECTORY%
dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install skipTests ..
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ===================================================================
echo            Installation of tests
echo ===================================================================
cd %GIT_DIRECTORY%\tests
dir /B
echo.
echo Working Directory %~dp0 ...
echo Runnig Maven clean install skipTests ..
pause
call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

pause