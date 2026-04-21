# AI Agent + Evaluation Sprint

这是一个面向求职交付的 AI 应用工程仓库模板，目标是在低内存设备上完成：

- 1 个可演示 `Text2SQL + 图表` Agent
- 1 套可复现模型评测流程
- 1 套可用于简历与面试的证据材料

## 项目结构

```text
.
├─ app/                 # Agent 与前端 Demo
├─ data/                # SQLite 数据与数据字典
├─ evaluation/          # 测试集、评测脚本、标注规范
├─ reports/             # 阶段报告与最终评测报告
├─ docs/                # badcase、面试问答、补充文档
├─ scripts/             # 一键启动与辅助脚本
├─ AI_Agent_Evaluation_Plan.md
├─ AI_Agent_Evaluation_Plan_Optimized.md
└─ Web3_AI_14Day_Plan.md
```

## 快速开始

1. 安装 Python 3.10+ 与 Ollama
2. 安装依赖：

```bash
pip install -r requirements.txt
```

3. 复制环境变量：

```bash
copy .env.example .env
```

4. Windows 一键启动（占位脚本，可按项目进度补充）：

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\run.ps1
```

## 推送到 GitHub

```bash
git init
git add .
git commit -m "init: scaffold ai agent evaluation project"
git branch -M main
git remote add origin <your-repo-url>
git push -u origin main
```
