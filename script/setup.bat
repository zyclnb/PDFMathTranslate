@echo off
setlocal enabledelayedexpansion
cd /d %~dp0

set PYTHON_URL=https://www.python.org/ftp/python/3.12.7/python-3.12.7-embed-amd64.zip
set PIP_URL=https://bootstrap.pypa.io/get-pip.py
set HF_ENDPOINT=https://hf-mirror.com
set PIP_MIRROR=https://mirrors.aliyun.com/pypi/simple
set APP_DIR=pdf2zh_dist
set APP_PORT=7860

if not exist %APP_DIR% mkdir %APP_DIR%

if not exist %APP_DIR%\python.exe (
    echo [1/5] Download embedded Python...
    powershell -Command "& {Invoke-WebRequest -Uri !PYTHON_URL! -OutFile python.zip}" || goto :error
    powershell -Command "& {Expand-Archive -Path python.zip -DestinationPath %APP_DIR% -Force}" || goto :error
    del python.zip
    echo import site >> %APP_DIR%\python312._pth
)

cd %APP_DIR%

if not exist Scripts\pip.exe (
    echo [2/5] Install pip...
    powershell -Command "& {Invoke-WebRequest -Uri !PIP_URL! -OutFile get-pip.py}" || goto :error
    python get-pip.py || goto :error
)

set PATH=%CD%\Scripts;%PATH%

echo [3/5] Upgrade installer toolchain...
pip install --no-warn-script-location --upgrade pip setuptools -i !PIP_MIRROR! || goto :error

echo [4/5] Install runtime from local repository source...
pip install --no-warn-script-location --upgrade .. -i !PIP_MIRROR! || goto :error

echo [5/5] Create one-click launcher...
(
    echo @echo off
    echo set HF_ENDPOINT=https://hf-mirror.com
    echo cd /d %%~dp0
    echo set PATH=%%CD%%\Scripts;%%PATH%%
    echo echo Starting PDFMathTranslate locally on http://127.0.0.1:%APP_PORT%/
    echo echo Browser auto-open has been disabled.
    echo pdf2zh -i --no-browser --serverport %APP_PORT%
) > start_pdf2zh.bat

echo.
echo Setup complete.
echo Run "%CD%\start_pdf2zh.bat" to launch PDFMathTranslate.
echo.

pause
exit /b 0

:error
echo.
echo [ERROR] Setup failed. Please check network/proxy/python permissions and retry.
pause
exit /b 1
