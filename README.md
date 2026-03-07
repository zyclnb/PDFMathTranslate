# PDFMathTranslate（打包与分发增强版）

> 本仓库目标：在不改变核心翻译能力的前提下，增强 Windows 安装包、启动流程和部署可用性。

## 核心功能（保持不变）

- 学术 PDF 翻译并尽量保留原始排版；
- 支持公式、图表、目录、注释；
- 支持 CLI / Web UI / Docker / Windows；
- 支持多语言和多翻译服务。

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

## 安装包与 CI

- Workflow: `.github/workflows/fork-build.yml`
- Artifact: `win11-installer`
- 产物文件：`PDFMathTranslate-Setup-win11-x64.exe`
- 安装包默认启动参数：`pdf2zh.exe -i --no-browser`

## 文档

- GUI 文档：[`docs/README_GUI.md`](./docs/README_GUI.md)
- 高级参数：[`docs/ADVANCED.md`](./docs/ADVANCED.md)
- API 文档：[`docs/APIS.md`](./docs/APIS.md)

## 许可证与致谢

- License: [AGPL-3.0](./LICENSE)
- 上游项目：<https://github.com/Byaidu/PDFMathTranslate>
