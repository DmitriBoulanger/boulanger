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
rem =====================================================================================================================

SET MAVEN_REPOSITORY=%WORKSPACE_DIRECTORY%..\_m2\repository
SET MAVEN_SETTINGS=%WORKSPACE_DIRECTORY%..\_m2\settings-jbehave.xml

echo.
echo ======================================================================================================================
echo          Clean-up of the common local artifacts
echo ======================================================================================================================
echo Removing all maven-artifacts in %MAVEN_REPOSITORY% ...
echo.
pause
cd %MAVEN_REPOSITORY%
rem dir /B
cd ..
RMDIR %MAVEN_REPOSITORY% /S /Q
MKDIR %MAVEN_REPOSITORY% 
cd %MAVEN_REPOSITORY%
rem echo.
rem dir /B

echo.
echo ======================================================================================================================
echo             Installation of jbehave-core
echo ======================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\jbehave-core
cd %WORKING_DIRECTORY%
rem dir /B
echo.
echo Working Directory %WORKING_DIRECTORY% ...
echo Runnig Maven for root-MAVEN_REPOSITORY with clean install skipTests ...

pause

call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ======================================================================================================================
echo             Installation of tools
echo ======================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\tools
cd %WORKING_DIRECTORY%
rem dir /B
echo.
echo Working Directory %WORKING_DIRECTORY% ...
echo Runnig Maven for tools-MAVEN_REPOSITORY with clean install with skipTests ...

pause

call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ======================================================================================================================
echo             Installation of mvn-plugins
echo ======================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\mvn-plugins
cd %WORKING_DIRECTORY%
rem dir /B
echo.
echo Working Directory %WORKING_DIRECTORY% ...
echo Runnig Maven for mvn-plugins-MAVEN_REPOSITORY with clean install with skipTests ...

pause

call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ======================================================================================================================
echo             Installation of samples-spring-boot
echo ======================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\samples-spring-boot
cd %WORKING_DIRECTORY%
rem dir /B
echo.
echo Working Directory %WORKING_DIRECTORY% ...
echo Runnig Maven for samples-spring-boot-MAVEN_REPOSITORY with clean install with skipTests ...

pause

call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ======================================================================================================================
echo             Installation of samples
echo ======================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\samples
cd %WORKING_DIRECTORY%
rem dir /B
echo.
echo Working Directory %WORKING_DIRECTORY% ...
echo Runnig Maven for samples-MAVEN_REPOSITORY with clean install skipTests ...

pause

call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

echo.
echo ======================================================================================================================
echo            Installation of tests
echo ======================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\tests
cd %WORKING_DIRECTORY%
rem dir /B
echo.
echo Working Directory %WORKING_DIRECTORY% ...
echo Runnig Maven for tests-MAVEN_REPOSITORY with clean install skipTests ...

pause

call mvn clean install -s %MAVEN_SETTINGS% -DskipTests=true

pause