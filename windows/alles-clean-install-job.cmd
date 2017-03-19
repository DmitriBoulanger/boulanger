
echo.
echo =====================================================================================================================
echo             Installation of root
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\root
CD %WORKING_DIRECTORY%
SET MVN_ARGS= -Dmaven.repo.local=%MAVEN_REPOSITORY% clean install -s %MAVEN_SETTINGS% -DskipTests=true
echo.
rem dir /B
echo.
echo Running Maven:
echo WORKING_DIRECTORY=%WORKING_DIRECTORY%
echo MVN_ARGS=%MVN_ARGS%
echo.
echo.
pause
call mvn %MVN_ARGS%
echo.
pause

echo.
echo =====================================================================================================================
echo             Installation of tools
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\tools
CD %WORKING_DIRECTORY%
SET MVN_ARGS= -Dmaven.repo.local=%MAVEN_REPOSITORY% clean install -s %MAVEN_SETTINGS% -DskipTests=true
echo.
rem dir /B
echo.
echo Running Maven:
echo WORKING_DIRECTORY=%WORKING_DIRECTORY%
echo MVN_ARGS=%MVN_ARGS%
echo.
echo.
pause
call mvn %MVN_ARGS%
echo.
pause

echo.
echo =====================================================================================================================
echo             Installation of mvn-plugins
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\mvn-plugins
CD %WORKING_DIRECTORY%
SET MVN_ARGS= -Dmaven.repo.local=%MAVEN_REPOSITORY% clean install -s %MAVEN_SETTINGS% -DskipTests=true
echo.
rem dir /B
echo.
echo Running Maven:
echo WORKING_DIRECTORY=%WORKING_DIRECTORY%
echo MVN_ARGS=%MVN_ARGS%
echo.
echo.
pause
call mvn %MVN_ARGS%
echo.
pause

echo.
echo =====================================================================================================================
echo             Installation of samples
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\samples
CD %WORKING_DIRECTORY%
SET MVN_ARGS= -Dmaven.repo.local=%MAVEN_REPOSITORY% clean install -s %MAVEN_SETTINGS% -DskipTests=true
echo.
rem dir /B
echo.
echo Running Maven:
echo WORKING_DIRECTORY=%WORKING_DIRECTORY%
echo MVN_ARGS=%MVN_ARGS%
echo.
echo.
pause
call mvn %MVN_ARGS%
echo.
pause

echo.
echo =====================================================================================================================
echo             Installation of tests
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\tests
CD %WORKING_DIRECTORY%
SET MVN_ARGS= -Dmaven.repo.local=%MAVEN_REPOSITORY% clean install -s %MAVEN_SETTINGS% -DskipTests=true
echo.
rem dir /B
echo.
echo Running Maven:
echo WORKING_DIRECTORY=%WORKING_DIRECTORY%
echo MVN_ARGS=%MVN_ARGS%
echo.
echo.
pause
call mvn %MVN_ARGS%
echo.
pause