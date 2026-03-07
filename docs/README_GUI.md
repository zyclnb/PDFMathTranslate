# GUI Mode

## 启动

```bash
pdf2zh -i
```

默认地址：`http://127.0.0.1:7860/`

## 不自动打开浏览器

```bash
pdf2zh -i --no-browser
```

## 自定义端口

```bash
pdf2zh -i --serverport 7861
```

## 可选 GUI 环境变量

- `PDF2ZH_APP_NAME`
- `PDF2ZH_APP_REPO_URL`
- `PDF2ZH_APP_GUI_CREDITS`

```bash
PDF2ZH_APP_NAME="PDFMathTranslate" \
PDF2ZH_APP_REPO_URL="https://github.com/Byaidu/PDFMathTranslate" \
PDF2ZH_APP_GUI_CREDITS="Maintainers" \
pdf2zh -i --no-browser
```

## Windows 一键启动

```bat
script\setup.bat
pdf2zh_dist\start_pdf2zh.bat
```
