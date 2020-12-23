@echo off
net file 1>NUL 2>NUL
if not '%errorlevel%' == '0' (
    powershell Start-Process -FilePath "%0" -ArgumentList "%cd%" -verb runas >NUL 2>&1
    exit /b
)

:: Change directory with passed argument. Processes started with
:: "runas" start with forced C:\Windows\System32 workdir
cd /d %1

assoc .MD5=txtfile
assoc .SHA1=txtfile
assoc .SHA256=txtfile
assoc .SHA384=txtfile
assoc .SHA512=txtfile
