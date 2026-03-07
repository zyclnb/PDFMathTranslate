# GUI Mode

This subfolder describes GUI mode for `pdf2zh`.

## Start GUI

```bash
pdf2zh -i
```

Default URL:

```text
http://127.0.0.1:7860/
```

## Disable browser auto-popup

If you prefer launching service silently (no automatic browser opening):

```bash
pdf2zh -i --no-browser
```

## Custom WebUI port

```bash
pdf2zh -i --serverport 7861
```

## Optional white-label branding

Set env vars before launch:

- `PDF2ZH_APP_NAME`
- `PDF2ZH_APP_REPO_URL`
- `PDF2ZH_APP_GUI_CREDITS`

Example:

```bash
PDF2ZH_APP_NAME="My PDF Studio" pdf2zh -i --no-browser
```
