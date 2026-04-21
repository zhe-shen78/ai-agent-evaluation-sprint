---
name: "ai-agent-eval-expert"
description: "Builds expert-level AI Agent + evaluation deliverables. Invoke when planning, implementing, evaluating, and packaging the 14-day Text2SQL project."
---

# AI Agent Eval Expert Skill

## 1. 适用范围与触发条件

当用户出现以下需求时，必须调用本 Skill：

- 需要按 `AI_Agent_Evaluation_Plan_Optimized.md` 执行或改造项目。
- 需要生成专家级技术文档、评测方案、代码骨架或报告。
- 需要明确 Git 提交流程、文件归档规则、目录结构规范。
- 需要“低内存可落地”实现路径（本地模型优先，API 兜底）。
- 需要跨多轮对话保持上下文一致，减少幻觉和目标漂移。

---

## 2. 目标与产出标准

本 Skill 的核心目标：

1. 交付可运行应用：`Text2SQL -> SQL执行 -> 图表输出`
2. 交付可复现评测：`测试集 + 批量评测脚本 + 指标报告`
3. 交付可面试材料：`badcase + 选型依据 + 成本权衡 + 复盘`

产出必须满足四要素：

- `能跑`：可执行、可复现
- `有指标`：成功率、正确率、延迟、成本
- `有边界`：失败样例、适用场景、局限性
- `可讲述`：能转化为简历与面试叙事

---

## 3. 默认软件栈（低内存优先）

- 模型层：
  - 本地：`Ollama + qwen2.5:3b-instruct`（默认）
  - 兜底：`gpt-4o-mini`（关键样例修复、对比评测）
- 应用层：`Python + Streamlit`
- 数据层：`SQLite`
- 评测层：`CSV + Python eval scripts`
- 协作层：`Git + GitHub`

可选增强（非必须）：

- `n8n` 或 `Dify` 二选一作为工作流展示

---

## 4. 专家级执行流程（强约束）

### Phase A：应用跑通（Day 1-5）

1. 建数据底座：`data/web3_demo.db` + `data/schema.md`
2. 建最小生成：`app/nl2sql_min.py`
3. 建工具调用：`app/tools.py`（SQL执行、图表生成）
4. 建安全约束：`app/guardrails.py`（只读、黑名单、LIMIT）
5. 建可演示页面：`app/streamlit_app.py`
6. 建阶段报告：`reports/phase1_report.md`

### Phase B：评测闭环（Day 6-10）

1. 建测试集：`evaluation/testset_v1.csv`（30）-> `testset_v2.csv`（60）
2. 建标注规范：`evaluation/annotation_guide.md`
3. 建批评脚本：`evaluation/run_eval.py`
4. 建对比评测：本地模型 vs API 模型
5. 建结论报告：`reports/evaluation_report.md`

### Phase C：包装交付（Day 11-14）

1. 工作流演示：`docs/workflow_integration.md`
2. 工程化收口：`.env.example`、`requirements.txt`、`scripts/run.ps1`
3. 仓库包装：完善 `README.md`、演示视频、结果图
4. 面试收口：`docs/interview_qa.md`、`docs/resume_bullets.md`

---

## 5. 文件生成与归档规则（必须执行）

### 5.1 目录职责

- `app/`：仅放可运行应用代码
- `data/`：数据库、字典、样例数据
- `evaluation/`：测试集、评测脚本、评测输出
- `reports/`：阶段报告、最终报告、图表
- `docs/`：计划、复盘、badcase、问答、会话记忆
- `scripts/`：自动化脚本
- `.trae/skills/`：Skill 定义文件

### 5.2 文件命名规则

- 脚本：`snake_case.py`
- 文档：`UPPER_SNAKE_CASE.md` 或语义清晰英文名
- 结果文件：`results_<model>_<yyyymmdd>.csv`
- 图表：`<report>_<metric>_<yyyymmdd>.png`

### 5.3 禁止事项

- 禁止将密钥写入仓库（只写 `.env.example`）
- 禁止将临时调试垃圾输出到根目录
- 禁止将同类文件跨目录混放（如报告写到 `app/`）

---

## 6. Git 上传与分支规则（必须执行）

### 6.1 提交节奏

- 每天至少 1 次提交，建议按功能小步提交
- 提交信息格式：
  - `feat(app): add sql execute tool`
  - `fix(eval): handle sql timeout`
  - `docs(report): update phase1 metrics`

### 6.2 推送流程

1. `git status`
2. `git add .`
3. `git commit -m "<type>(<scope>): <summary>"`
4. `git pull --rebase origin main`（若远程已有更新）
5. `git push -u origin main`

### 6.3 冲突处理

- 冲突优先保留“本地最新业务逻辑 + 远程文档补充”
- 解决后必须重新跑一次最小验证（至少 3 条问句）

---

## 7. 反幻觉机制（多轮对话强制）

每次进入新会话前，先读取并更新以下文件：

1. `docs/archive/PROJECT_ARCHIVE.md`：项目全局事实与里程碑
2. `docs/archive/SESSION_MEMORY.md`：最近决策、风险与下一步
3. `docs/logs/DAILY_PROGRESS_LOG.md`：日更进度和指标变化

执行前必须做三项核对：

- 核对当前阶段目标（Day X 应做什么）
- 核对最新目录与已有文件（避免重复造轮子）
- 核对上次失败样例与未完成事项（避免“看起来在进展”）

---

## 8. 输出质量标准（专家级）

- 所有建议都要有“可执行动作 + 文件落点 + 验收口径”
- 所有指标都要给出计算口径与样本范围
- 所有结论都要附至少一个失败样例或边界条件
- 所有文档都要可被陌生人复现，不依赖口头补充

---

## 9. 快速模板（可直接复用）

### 9.1 每日输出模板

```markdown
## Day X
- 今日动作：
- 产出文件：
- 指标变化：
- 新增 badcase：
- 风险与处理：
- 明日第一优先任务：
```

### 9.2 评测报告最小结构

```markdown
# Evaluation Report
## Scope
## Dataset
## Metrics
## Model Comparison
## Failure Cases
## Decision Rules
## Cost Analysis
## Next Iteration Plan
```
