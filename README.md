# PDFMathTranslate（维护型 Fork）

> 本仓库是 [Byaidu/PDFMathTranslate](https://github.com/Byaidu/PDFMathTranslate) 的**维护型 fork**，目标是提供更稳定、可持续的日常维护与分发。

## 这个 Fork 的定位

- ✅ **优先稳定性**：以修复问题、维持可用、改进兼容性为主。
- ✅ **紧跟上游**：定期同步上游关键变更与安全修复。
- ✅ **谨慎引入新特性**：除非有明确维护价值，否则不做大规模架构改造。
- ✅ **可追溯维护**：尽量保持小步提交，便于回滚与审查。

## 与上游仓库的关系

- 上游项目：<https://github.com/Byaidu/PDFMathTranslate>
- 本 fork 会持续关注上游发布与关键提交，并按需回合并（merge/cherry-pick）。
- 如果你的需求是“新功能探索”或“路线图讨论”，建议优先到上游仓库参与。
- 如果你的需求是“现网可用性”“版本兼容”“依赖更新”“长期维护”，欢迎在本仓库提交 issue。

## 项目能力（继承自上游）

PDFMathTranslate 用于在尽量保持原排版的前提下翻译学术 PDF 文档：

- 保留公式、图表、目录、注释等结构；
- 支持多语言与多种翻译服务；
- 提供命令行、Web UI 与 Docker 使用方式。

## 快速开始

> 兼容上游主流使用方式，以下为常用入口。

### 1) Python（推荐）

```bash
pip install pdf2zh
pdf2zh document.pdf
```

### 2) 启动 Web UI

```bash
pdf2zh -i
# 默认访问 http://localhost:7860/
```

### 3) Docker

```bash
docker pull byaidu/pdf2zh
docker run -d -p 7860:7860 byaidu/pdf2zh
# 浏览器访问 http://localhost:7860/
```

### 4) Windows 11 一体化安装包（Setup.exe）

- 本仓库提供 CI 自动构建的 `PDFMathTranslate-Setup-win11-x64.exe` 安装包（包含运行所需文件）。
- 在 GitHub Actions 的 `fork-build` 工作流中下载 `win11-installer` artifact 即可。
- 安装完成后可直接从开始菜单启动 Web UI（默认等效 `pdf2zh -i`）。

## 文档

- 上游英文 README：<https://github.com/Byaidu/PDFMathTranslate/blob/main/README.md>
- 中文文档（上游）：<https://github.com/Byaidu/PDFMathTranslate/blob/main/docs/README_zh-CN.md>
- GUI 文档（上游）：<https://github.com/Byaidu/PDFMathTranslate/blob/main/docs/README_GUI.md>

> 说明：本仓库会优先维护可运行性与兼容性；若文档未及时同步，请以上游文档为基础并结合本仓库 release/提交记录使用。

## Issue / PR 指南（维护型策略）

欢迎提交以下类型的问题与改动：

1. 回归 bug、兼容性问题、依赖冲突；
2. 平台适配（Python 版本、系统环境、容器环境）；
3. 安全修复与构建/发布稳定性改进；
4. 不改变核心行为的小型可维护性优化。

不优先处理：

- 大范围重构；
- 与上游方向明显分叉的大特性。

## 版本与发布策略

- 采用“维护优先”的发布节奏（按修复与稳定性需求发布）；
- 变更说明尽量清晰标注“来源于上游 / fork 自有修复”；
- 遇到高风险变更时，优先提供可回退路径。

## 致谢与许可

- 感谢上游项目及所有贡献者：<https://github.com/Byaidu/PDFMathTranslate>
- 本仓库沿用上游许可证：见 [LICENSE](./LICENSE)。
