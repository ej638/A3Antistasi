@echo off
set timestamp=%date:~-4,4%-%date:~-10,2%-%date:~-7,2%_%time:~0,2%%time:~3,2%%time:~6,2%
set timestamp=%timestamp: =0%
set logfile=C:\Users\EJ\Desktop\testLogs\A3Backup_%timestamp%.log

cd C:\Users\EJ\Desktop\test >> %logfile% 2>&1
git add . >> %logfile% 2>&1
git commit -m "Backup save file" >> %logfile% 2>&1
git push origin master >> %logfile% 2>&1
