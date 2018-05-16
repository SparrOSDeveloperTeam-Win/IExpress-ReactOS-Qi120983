@echo off
mkdir lib
mkdir bin
echo Place the following files in the lib folder then press any key to start the compilation progress:
echo IEXPRESS.EX_
echo MAKECAB.EX_
echo MSVCRT.DL_
echo WEXTRACT.EX_
echo Visit my Github.url
echo QI120983.ISS
echo.
pause >nul
if not exist lib\EXPAND.EXE goto noexpand
if not exist lib\MAKECAB.EX_ goto nomakecab
if not exist lib\IEXPRESS.EX_ goto noiexpress
if not exist lib\MSVCRT.DL_ goto nomsvcrt
if not exist lib\WEXTRACT.EX_ goto nowextract
if not exist "lib\Visit my Github.url" goto nourl
if not exist lib\QI120983.ISS goto noscript
cls
echo All files are present! Beginning compilation. Note: You will need Inno Setup Compiler 1.3.26 to compile setup script.
cd lib
expand IEXPRESS.EX_ iexpress.exe
expand MAKECAB.EX_ makecab.exe
expand MSVCRT.DL_ msvcrt.dll
expand WEXTRACT.EX_ wextract.exe
if not exist iexpress.exe goto noiexpressexe
if not exist makecab.exe goto nomakecabexe
if not exist msvcrt.dll goto nomsvcrtdll
if not exist wextract.exe goto nowextractexe
echo Done expanding files.
cls
echo Files can be found in BIN.
copy iexpress.exe ..\BIN
copy makecab.exe ..\BIN
copy msvcrt.dll ..\BIN
copy wextract.exe ..\BIN
copy qi120983.iss ..\BIN
copy "visit my github.url" ..\BIN
del iexpress.exe
del makecab.exe
del msvcrt.dll
del wextract.exe
pause
exit
:noexpand
cls
echo lib\EXPAND.EXE is missing or corrupt. Please grab a new copy from your Windows Xp CD.
echo.
pause
exit
:nomakecab
cls
echo lib\MAKECAB.EX_ is missing or corrupt. Please grab a new copy from your Windows Xp CD.
echo.
pause
exit
:noiexpress
cls
echo lib\IEXPRESS.EX_ is missing or corrupt. Please grab a new copy from your Windows Xp CD.
echo.
pause
exit
:nomsvcrt
cls
echo lib\MSVCRT.DL_ is missing or corrupt. Please grab a new copy from your Windows Xp CD.
echo.
pause
exit
:nowextract
cls
echo lib\WEXTRACT.EX_ is missing or corrupt. Please grab a new copy from your Windows Xp CD.
echo.
pause
exit
:nourl
cls
echo "lib\Visit my Github.url" is missing or corrupt.
echo.
pause
exit
:noscript
cls
echo lib\QI120983.ISS is missing or corrupt.
echo.
pause
exit
:noiexpressexe
cls
echo Failed to create IEXPRESS.EXE!
echo.
pause
exit
:nomakecabexe
cls
echo Failed to create MAKECAB.EXE!
echo.
pause
exit
:nomsvcrtdll
cls
echo Failed to create MSVCRT.DLL!
echo.
pause
exit
:nowextractexe
cls
echo Failed to create WEXTRACT.EXE!
echo.
pause
exit
