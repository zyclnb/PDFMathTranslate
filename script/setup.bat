@echo off
setlocal enabledelayedexpansion

set PYTHON_URL=https://www.python.org/ftp/python/3.12.7/python-3.12.7-embed-amd64.zip
set PIP_URL=https://bootstrap.pypa.io/get-pip.py
set HF_ENDPOINT=https://hf-mirror.com
set PIP_MIRROR=https://mirrors.aliyun.com/pypi/simple
set APP_DIR=pdf2zh_dist
set APP_PORT=7860

if not exist %APP_DIR%\python.exe (
    echo [1/4] Download embedded Python...
    powershell -Command "& {Invoke-WebRequest -Uri !PYTHON_URL! -OutFile python.zip}"
    powershell -Command "& {Expand-Archive -Path python.zip -DestinationPath %APP_DIR% -Force}"
    del python.zip
    echo import site >> %APP_DIR%\python312._pth
)

cd %APP_DIR%

if not exist Scripts\pip.exe (
    echo [2/4] Install pip...
    powershell -Command "& {Invoke-WebRequest -Uri !PIP_URL! -OutFile get-pip.py}"
    python get-pip.py
)

set PATH=%CD%\Scripts;%PATH%

echo [3/4] Install/upgrade runtime dependencies...
pip install --no-warn-script-location --upgrade setuptools -i !PIP_MIRROR!
pip install --no-warn-script-location --upgrade pdf2zh -i !PIP_MIRROR!

echo [4/4] Create one-click launcher...
(
    echo @echo off
    echo set HF_ENDPOINT=https://hf-mirror.com
    echo cd /d %%~dp0
    echo echo Starting PDFMathTranslate locally on http://127.0.0.1:%APP_PORT%/
    echo echo Browser auto-open has been disabled.
    echo pdf2zh -i --no-browser --serverport %APP_PORT%
) > start_pdf2zh.bat

echo.
echo Setup complete.
echo Run "%CD%\start_pdf2zh.bat" to launch the full local app without browser popup.
echo.

pause
