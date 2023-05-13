@echo off
setlocal

set "target_directory=%cd%"

for /r "%target_directory%" %%F in (*) do (
    if not "%%~xF"==".mp4" (
        del /q "%%F"
    )
)

echo All non-.mp4 files have been deleted.

pause