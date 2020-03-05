@echo off
SET LOGFILE=MyLogFile.log
SET PINGLIST=List.txt
for /f "delims=" %%a in (%PINGLIST%) DO ping -n 1 %%a > nul && (echo %%a is ok >> %LOGFILE%) || (echo %%a is unreachable! >> %LOGFILE%)
