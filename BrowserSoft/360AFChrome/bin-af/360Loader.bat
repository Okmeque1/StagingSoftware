@echo off
goto main
:main
echo [1] Std 360AFChrome
echo [2] 360AF9
choice /c:12 /m "Choose browser"
if ERRORLEVEL 2 goto 360af9
if ERRORLEVEL 1 goto 360AFChrome
:360af9
start "" "%~dp0\360af_9.exe" --user-data-dir=%~dp0\360AF9UData1 --disable-infobars --no-sandbox --ignore-certificate-errors --disable-logging --no-default-browser-check --disable-component-update --disable-background-networking --allow-outdated-plugins --cipher-suite-blacklist=0xcc14,0xe013  --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36"
exit /b
:360AFChrome
start "" "%~dp0\360afchrome.exe" --user-data-dir=%~dp0\360AFChromeUData1 --disable-infobars --no-sandbox --ignore-certificate-errors --disable-logging --no-default-browser-check --disable-component-update --disable-background-networking --allow-outdated-plugins --cipher-suite-blacklist=0xcc14,0xe013  --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36"
exit /b
