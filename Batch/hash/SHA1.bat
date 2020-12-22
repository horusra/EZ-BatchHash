@echo off
SETLOCAL
for /f "tokens=*" %%a in ('certutil -hashfile %1 %~n0 ^| findstr /V "hash successfully"') do set fin=%%a
(echo %~n0 hash of ["%~nx1", size:%~z1 bytes]:
echo.
echo %fin%)>%1_%~n0.txt
echo %fin%|clip
exit
