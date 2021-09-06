@echo off 
echo %date%
echo %cd%
echo %cd%\template.txt
if exist %cd%\%date%.txt (
    echo %cd%\%date%.txt exists

) else (
    copy template.txt %date%.txt
    echo copied to %cd%\%date%.txt
)

Notepad %cd%\%date%.txt