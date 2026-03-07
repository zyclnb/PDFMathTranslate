# GUI Mode (Fork Edition)

This document describes Web UI startup and white-label options for this fork.

## Start GUI

```bash
pdf2zh -i
```

Default URL:

```text
http://127.0.0.1:7860/
```

## Start without browser popup

```bash
pdf2zh -i --no-browser
```

## Custom port

```bash
pdf2zh -i --serverport 7861
```

## White-label environment variables

- `PDF2ZH_APP_NAME`
- `PDF2ZH_APP_REPO_URL`
- `PDF2ZH_APP_GUI_CREDITS`

Example:

```bash
PDF2ZH_APP_NAME="zyclnb PDF Translate" \
PDF2ZH_APP_REPO_URL="https://github.com/zyclnb/PDFMathTranslate" \
PDF2ZH_APP_GUI_CREDITS="zyclnb" \
pdf2zh -i --no-browser
```

## Recommended Windows startup

Run one-click setup then launcher:

```bat
script\setup.bat
pdf2zh_dist\start_pdf2zh.bat
```

The generated launcher already sets branding vars and disables browser auto-popup.
