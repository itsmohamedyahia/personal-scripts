@echo off
setlocal enabledelayedexpansion

set "folder=%cd%"

for /r "%folder%" %%f in (*.js) do (
    set "file=%%~nf"
    set "path=%%~dpf"
    ren "%%f" "!file!.jsx"
)

echo Renaming completed.