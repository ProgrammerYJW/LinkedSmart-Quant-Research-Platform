@echo off
cd /d "%~dp0"
echo ========================================
echo   QuantPlatform - Merge and Start
echo ========================================
echo.

if not exist QuantPlatform-0.1.0-win.zip.part001 (
    echo ERROR: QuantPlatform-0.1.0-win.zip.part001 not found.
    pause
    exit /b 1
)

echo [1/3] Merging zip parts...
copy /b QuantPlatform-0.1.0-win.zip.part001+QuantPlatform-0.1.0-win.zip.part002+QuantPlatform-0.1.0-win.zip.part003 QuantPlatform-0.1.0-win.zip >nul
if %errorlevel% neq 0 (
    echo ERROR: Merge failed.
    pause
    exit /b 1
)

echo [2/3] Extracting QuantPlatform...
if exist QuantPlatform-0.1.0-win (
    echo Removing old QuantPlatform-0.1.0-win directory...
    rmdir /s /q QuantPlatform-0.1.0-win
)
powershell -Command "Expand-Archive -Path 'QuantPlatform-0.1.0-win.zip' -DestinationPath 'QuantPlatform-0.1.0-win' -Force"
if %errorlevel% neq 0 (
    echo ERROR: Extraction failed.
    pause
    exit /b 1
)

echo [3/3] Starting QuantPlatform...
start "" "QuantPlatform-0.1.0-win\QuantPlatform.exe"
timeout /t 3 >nul
echo If browser does not open automatically, visit http://127.0.0.1:7701
pause
