@echo off
copy iexpress.exe C:\reactos\system32
copy wextract.exe C:\reactos\system32
copy cabextract.exe C:\reactos\system32
copy msvcrt.dll C:\reactos\system32
del iexpress.exe
del wextract.exe
del cabextract.exe
del msvcrt.dll
del update.exe
exit
