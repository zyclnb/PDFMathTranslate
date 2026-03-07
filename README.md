# zyclnb PDF Translate（维护增强版）

> 这是 `zyclnb/PDFMathTranslate` 的主页面。目标是在不改变核心翻译能力的前提下，提供更稳定、更易分发、更易部署的使用体验。

## 核心能力（保持与上游一致）

- 学术 PDF 翻译并尽量保留原始排版结构；
- 保留公式、图表、目录、注释等元素；
- 支持 CLI / Web UI / Docker / Windows 发行方式；
- 支持多语言和多种翻译服务。

## 这个仓库的增强点

- ✅ 面向个人维护和长期可用性优化；
- ✅ 支持 GUI 白标配置（默认改为 fork 品牌）；
- ✅ 支持 `--no-browser`（启动 Web UI 不自动弹浏览器）；
- ✅ 提供 Win11 安装包流水线与一键运行脚本。

## 快速开始

### 1) Python 安装

```bash
pip install pdf2zh
pdf2zh document.pdf
```

### 2) 启动 Web UI

```bash
pdf2zh -i
# 默认 http://127.0.0.1:7860/
```

不自动弹浏览器：

```bash
pdf2zh -i --no-browser
```

### 3) Docker

```bash
docker pull byaidu/pdf2zh
docker run -d -p 7860:7860 byaidu/pdf2zh
```

### 4) Windows 一键运行（本仓库）

```bat
script\setup.bat
pdf2zh_dist\start_pdf2zh.bat
```

该方式会安装当前仓库代码并默认使用白标参数。

## GUI 白标参数

可通过环境变量覆盖界面品牌（不影响翻译功能）：

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

## Windows 安装包（CI）

- Workflow: `.github/workflows/fork-build.yml`
- Artifact: `win11-installer`
- 输出文件名：`zyclnb-PDFTranslate-Setup-win11-x64.exe`

## 文档入口

- GUI 文档：[`docs/README_GUI.md`](./docs/README_GUI.md)
- 高级选项：[`docs/ADVANCED.md`](./docs/ADVANCED.md)
- API：[`docs/APIS.md`](./docs/APIS.md)

## 与上游关系

- 上游仓库：<https://github.com/Byaidu/PDFMathTranslate>
- 本仓库会持续同步上游有价值更新，并保留必要兼容修复。

## 许可与致谢

- License: [AGPL-3.0](./LICENSE)
- 致谢上游与所有贡献者：<https://github.com/Byaidu/PDFMathTranslate>
