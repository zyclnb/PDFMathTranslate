# PDFMathTranslate（Packaging-first Fork）

本仓库仅做分发、安装与启动流程增强，核心翻译功能与上游保持兼容。

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

## 相对上游的优化（本 Fork）

以下为本仓库在不改变核心翻译能力前提下的增强点：

1. **Windows 安装与分发增强**
   - 增加 Win11 安装包构建流程（`win11-installer` artifact）；
   - 增加 Inno Setup 配置文件（`script/windows/pdf2zh_installer.iss`）；
   - 默认安装后以 `--no-browser` 启动 Web UI，避免自动弹浏览器。

2. **GUI 启动体验增强**
   - 新增 CLI 参数 `--no-browser`；
   - `setup_gui` 支持 `open_browser` 参数，便于脚本化和打包启动。

3. **Windows 一键本地运行增强**
   - `script/setup.bat` 自动准备嵌入式 Python 运行时；
   - 自动生成 `start_pdf2zh.bat` 启动器；
   - 启动器默认使用 `--no-browser`，并增加基础错误处理。

4. **文档与流程对齐**
   - README 与 GUI 文档聚焦“安装/打包/启动”操作路径；
   - 明确了本 fork 的 packaging-first 定位与使用入口。

## 文档

- GUI：[`docs/README_GUI.md`](./docs/README_GUI.md)
- 高级参数：[`docs/ADVANCED.md`](./docs/ADVANCED.md)
- API：[`docs/APIS.md`](./docs/APIS.md)

## 许可

- License: [AGPL-3.0](./LICENSE)
