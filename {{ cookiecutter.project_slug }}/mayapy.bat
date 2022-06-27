@ECHO OFF

set MAYA_APP_DIR=%~dp0\tmp\maya
set MAYA_MODULE_PATH=%~dp0;%MAYA_MODULE_PATH%
set PYTHONPATH=%~dp0\.venv\Lib\site-packages;%PYTHONPATH%

if not exist "%MAYA_APP_DIR%" mkdir %MAYA_APP_DIR%

for /f "tokens=2*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Autodesk\Maya\{{ cookiecutter.maya_version }}\Setup\InstallPath" /v MAYA_INSTALL_LOCATION') do set "MAYA_LOCATION=%%~b"
"%MAYA_LOCATION%\bin\mayapy.exe" %*