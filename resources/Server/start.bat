@echo off

:: switch to the script directory
pushd "%~dp0"

:: run
"bin\CitizenMP.Server.exe" %*
