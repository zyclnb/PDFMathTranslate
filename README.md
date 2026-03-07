# PDFMathTranslate（Packaging-first Fork）

本仓库仅做分发与安装流程增强，核心翻译功能与上游保持兼容。

## 快速开始

### Python

```bash
pip install pdf2zh
pdf2zh document.pdf
```

### Web UI

```bash
pdf2zh -i
```

不自动弹浏览器：

```bash
pdf2zh -i --no-browser
```

### Docker

```bash
docker pull byaidu/pdf2zh
docker run -d -p 7860:7860 byaidu/pdf2zh
```

### Windows 一键运行（本仓库）

```bat
script\setup.bat
pdf2zh_dist\start_pdf2zh.bat
```

## 打包与安装（Windows）

- Workflow：`.github/workflows/fork-build.yml`
- Artifact：`win11-installer`
- 产物：`PDFMathTranslate-Setup-win11-x64.exe`
- 安装后默认启动参数：`pdf2zh.exe -i --no-browser`

## GUI 默认配置（可选）

- `PDF2ZH_APP_NAME`
- `PDF2ZH_APP_REPO_URL`
- `PDF2ZH_APP_GUI_CREDITS`

示例：

```bash
PDF2ZH_APP_NAME="PDFMathTranslate" \
PDF2ZH_APP_REPO_URL="https://github.com/Byaidu/PDFMathTranslate" \
PDF2ZH_APP_GUI_CREDITS="Maintainers" \
pdf2zh -i --no-browser
```

## 文档

- GUI：[`docs/README_GUI.md`](./docs/README_GUI.md)
- 高级参数：[`docs/ADVANCED.md`](./docs/ADVANCED.md)
- API：[`docs/APIS.md`](./docs/APIS.md)

## 许可

- License: [AGPL-3.0](./LICENSE)
