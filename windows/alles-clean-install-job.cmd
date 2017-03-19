
echo.
echo =====================================================================================================================
echo             Installation of jbehave-core
echo =====================================================================================================================
SET WORKING_DIRECTORY=%WORKING_DIRECTORY_GIT%\jbehave-core
CD %WORKING_DIRECTORY%
SET MVN_ARGS= -Dmaven.repo.local=%MAVEN_REPOSITORY% clean install -s %MAVEN_SETTINGS% -DskipTests=true -Dmaven.javadoc.skip=true --batch-mode -e
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