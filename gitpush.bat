@echo off
REM Add all files
git add .

REM Commit with message, default to "Auto commit"
IF "%1"=="" (
    git commit -m "Auto commit"
) ELSE (
    git commit -m %1
)

REM Push to main branch
git push origin main
