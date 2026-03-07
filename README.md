# zyclnb PDF Translate（全流程维护增强版）

> 在不改变核心翻译功能的前提下，本仓库专注于 **品牌化、分发、安装、运行、更新** 的全流程优化。

## 1. 项目定位

- 上游来源：<https://github.com/Byaidu/PDFMathTranslate>
- 本仓库目标：提高可用性、稳定性和交付效率（尤其是 Windows 安装分发）。
- 功能边界：核心 PDF 翻译能力与上游保持兼容，不做破坏性改造。

## 2. 你现在得到的整合优化

- ✅ **Fork 默认品牌化**：GUI 默认显示 `zyclnb PDF Translate`。
- ✅ **无打扰启动**：`--no-browser` 全链路接入（CLI / 安装脚本 / 安装包启动项）。
- ✅ **一键本地运行时**：`script/setup.bat` 自动准备嵌入式 Python + 启动器。
- ✅ **Win11 安装包流水线**：CI 自动产出 `zyclnb-PDFTranslate-Setup-win11-x64.exe`。
- ✅ **文档统一**：README 与 GUI 文档对齐 fork 使用方式。

## 3. 核心功能（保持不变）

- 学术 PDF 翻译并尽量保留原排版；
- 支持公式、图表、目录、注释；
- 支持 CLI / Web UI / Docker / Windows；
- 支持多语言和多翻译服务。

## 4. 快速开始

### 4.1 Python

```bash
pip install pdf2zh
pdf2zh document.pdf
```

### 4.2 Web UI

```bash
pdf2zh -i
# 默认 http://127.0.0.1:7860/
```

无浏览器自动弹窗：

```bash
pdf2zh -i --no-browser
```

### 4.3 Docker

```bash
docker pull byaidu/pdf2zh
docker run -d -p 7860:7860 byaidu/pdf2zh
```

### 4.4 Windows 一键运行（本仓库）

```bat
script\setup.bat
pdf2zh_dist\start_pdf2zh.bat
```

> `start_pdf2zh.bat` 会默认注入 fork 品牌变量，并使用 `--no-browser`。

## 5. GUI 白标参数

可覆盖默认品牌（不影响翻译能力）：

- `PDF2ZH_APP_NAME`
- `PDF2ZH_APP_REPO_URL`
- `PDF2ZH_APP_GUI_CREDITS`

示例：

```bash
export PDF2ZH_APP_NAME="zyclnb PDF Translate"
export PDF2ZH_APP_REPO_URL="https://github.com/zyclnb/PDFMathTranslate"
export PDF2ZH_APP_GUI_CREDITS="zyclnb"
pdf2zh -i --no-browser
```

## 6. CI 构建与分发（Win11 安装包）

- Workflow: `.github/workflows/fork-build.yml`
- Artifact: `win11-installer`
- 产物文件：`zyclnb-PDFTranslate-Setup-win11-x64.exe`
- 默认安装后启动参数：`pdf2zh.exe -i --no-browser`

## 7. 文档导航

- GUI 文档：[`docs/README_GUI.md`](./docs/README_GUI.md)
- 高级参数：[`docs/ADVANCED.md`](./docs/ADVANCED.md)
- API 文档：[`docs/APIS.md`](./docs/APIS.md)

## 8. 与上游关系

- 本仓库不会自动影响上游；
- 仅当你主动向上游提交 PR 并被合并时，才会进入上游。

## 9. 许可证与致谢

- License: [AGPL-3.0](./LICENSE)
- 致谢上游与所有贡献者：<https://github.com/Byaidu/PDFMathTranslate>
