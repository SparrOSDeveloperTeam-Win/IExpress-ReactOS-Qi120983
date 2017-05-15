@echo off
copy iexpress.exe C:\reactos\system32
copy wextract.exe C:\reactos\system32
copy cabextract.exe C:\reactos\system32
del iexpress.exe
del wextract.exe
del cabextract.exe
del update.exe
exit
