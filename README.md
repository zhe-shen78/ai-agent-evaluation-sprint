# AI Agent + Evaluation Sprint

这是一个面向求职交付的 AI 应用工程仓库，目标是在低内存设备上完成：

- 1 个可演示 `Text2SQL + 图表` Agent
- 1 套可复现模型评测流程
- 1 套可用于简历与面试的证据材料

## 项目结构

```text
.
├─ .trae/
│  └─ skills/
│     └─ ai-agent-eval-expert/      # 专家级执行 Skill
├─ app/                              # Agent 与前端 Demo
├─ data/
│  ├─ raw/                           # 原始数据
│  └─ processed/                     # 处理后数据
├─ evaluation/                       # 测试集、评测脚本、标注规范
├─ reports/
│  └─ figures/                       # 报告图表
├─ docs/
│  ├─ plans/                         # 计划文档
│  ├─ archive/                       # 项目档案、会话记忆、仓库规则
│  └─ logs/                          # 每日进度与复盘
├─ scripts/                          # 一键启动与辅助脚本
├─ .env.example
├─ .gitignore
├─ README.md
└─ requirements.txt
```

## 文件分类规则

- 代码只放 `app/`
- 数据只放 `data/raw` 和 `data/processed`
- 评测资产只放 `evaluation/`
- 图表与结论只放 `reports/` 与 `reports/figures/`
- 规划、复盘、记忆只放 `docs/`

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

