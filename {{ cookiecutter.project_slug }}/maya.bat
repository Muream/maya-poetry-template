@ECHO OFF

set MAYA_MODULE_PATH=%~dp0;%MAYA_MODULE_PATH%

for /f "tokens=2*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Autodesk\Maya\{{ cookiecutter.maya_version }}\Setup\InstallPath" /v MAYA_INSTALL_LOCATION') do set "MAYA_LOCATION=%%~b"
"%MAYA_LOCATION%\bin\maya.exe" %*