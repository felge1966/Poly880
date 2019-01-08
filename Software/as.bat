@echo off
rem Standard-Skript zum Aufruf des Arnold-Assemblers
rem V.Pohlers 2009
rem als Parameter wird der Name der asm-Datei übergeben

set file=%1
if "%1"=="" set file=main

for %%i in (%file%) do set file=%%~ni

echo -------- %file% -----------

set bin=%cd:~,2%\hobby\Programme\as\bin
if %COMPUTERNAME%==P4-2600 set bin=c:\user\hobby\Programme\as\bin
if %COMPUTERNAME%==LENOVO-PC set bin=d:\user\volker\hobby\Programme\as\bin

%bin%\as.exe -L %file%.asm -a
%bin%\p2bin.exe -r $-$ "%file%.p"
%bin%\plist.exe "%file%.p"

rem %bin%\bdiff %file%.bin %file%.com

rem Anfangsadresse ermitteln
rem for /f "skip=5 tokens=3 usebackq" %%i in (`%bin%\p2bin.exe "%file%.p"`) do set aadr=%%i
for /f "usebackq" %%i in (`p2adr.pl "%file%.p"`) do set aadr=%%i
echo Anfangsadresse=%aadr%

com2tap.pl %file%.bin 0 %aadr%
