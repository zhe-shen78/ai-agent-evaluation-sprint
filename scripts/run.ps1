Write-Host "== AI Agent Sprint Runner ==" -ForegroundColor Cyan

if (-not (Test-Path ".\.env")) {
    Write-Host "未检测到 .env，正在使用 .env.example 创建..." -ForegroundColor Yellow
    Copy-Item ".\.env.example" ".\.env"
}

Write-Host "1) 安装依赖" -ForegroundColor Green
pip install -r .\requirements.txt

Write-Host "2) 启动说明" -ForegroundColor Green
Write-Host "后续可在这里补充：数据库初始化、评测脚本、Streamlit 启动命令。"
Write-Host "示例启动：streamlit run .\app\streamlit_app.py"
