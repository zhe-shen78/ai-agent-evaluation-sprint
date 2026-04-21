# REPO RULES

## 1. Git 上传规则

1. 每日最少一次提交，提交信息使用：
   - `feat(scope): ...`
   - `fix(scope): ...`
   - `docs(scope): ...`
2. 推送前固定执行：
   - `git status`
   - `git add .`
   - `git commit -m "..."`
   - `git pull --rebase origin main`
   - `git push -u origin main`
3. 不上传内容：
   - `.env`、API Key、敏感数据
   - 大体量中间缓存文件
   - 临时调试垃圾文件

## 2. 文件归档规则

- `app/`：只放可运行应用代码
- `data/raw/`：原始数据
- `data/processed/`：清洗后数据
- `evaluation/`：测试集、评测脚本、评测输出
- `reports/`：报告正文
- `reports/figures/`：报告图表
- `docs/plans/`：计划文档
- `docs/archive/`：项目档案、会话记忆、规则文档
- `docs/logs/`：每日进度与复盘

## 3. 落地检查

- 新文件创建前，先确认目录职责是否匹配。
- 每次提交后，更新 `PROJECT_ARCHIVE.md` 的里程碑与下一步。
- 每次新会话前，先读 `SESSION_MEMORY.md` 再行动。
