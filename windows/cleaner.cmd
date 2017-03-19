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