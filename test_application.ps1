# Spring Boot 学习项目测试脚本
Write-Host "========================================" -ForegroundColor Green
Write-Host "Spring Boot 学习项目测试" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

# 测试首页
Write-Host "1. 测试首页 (http://localhost:8080/)" -ForegroundColor Yellow
try {
    $response = Invoke-WebRequest -Uri "http://localhost:8080/" -Method GET -TimeoutSec 10
    Write-Host "   ✓ 首页访问成功 (状态码: $($response.StatusCode))" -ForegroundColor Green
} catch {
    Write-Host "   ✗ 首页访问失败: $_" -ForegroundColor Red
}

Write-Host ""

# 测试 Hello World API
Write-Host "2. 测试 Hello World API (http://localhost:8080/hello)" -ForegroundColor Yellow
try {
    $response = Invoke-WebRequest -Uri "http://localhost:8080/hello" -Method GET -TimeoutSec 10
    Write-Host "   ✓ Hello World API 访问成功 (状态码: $($response.StatusCode))" -ForegroundColor Green
    Write-Host "   返回内容: $($response.Content)" -ForegroundColor Cyan
} catch {
    Write-Host "   ✗ Hello World API 访问失败: $_" -ForegroundColor Red
}

Write-Host ""

# 测试用户管理 API
Write-Host "3. 测试用户管理 API (http://localhost:8080/api/users)" -ForegroundColor Yellow
try {
    $response = Invoke-WebRequest -Uri "http://localhost:8080/api/users" -Method GET -TimeoutSec 10
    Write-Host "   ✓ 用户管理 API 访问成功 (状态码: $($response.StatusCode))" -ForegroundColor Green
    Write-Host "   返回内容: $($response.Content)" -ForegroundColor Cyan
} catch {
    Write-Host "   ✗ 用户管理 API 访问失败: $_" -ForegroundColor Red
}

Write-Host ""

# 测试问候页面
Write-Host "4. 测试问候页面 (http://localhost:8080/greeting)" -ForegroundColor Yellow
try {
    $response = Invoke-WebRequest -Uri "http://localhost:8080/greeting" -Method GET -TimeoutSec 10
    Write-Host "   ✓ 问候页面访问成功 (状态码: $($response.StatusCode))" -ForegroundColor Green
} catch {
    Write-Host "   ✗ 问候页面访问失败: $_" -ForegroundColor Red
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "测试完成！" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "访问以下地址查看应用：" -ForegroundColor White
Write-Host "1. 首页: http://localhost:8080/" -ForegroundColor Cyan
Write-Host "2. Hello World: http://localhost:8080/hello" -ForegroundColor Cyan
Write-Host "3. 用户管理 API: http://localhost:8080/api/users" -ForegroundColor Cyan
Write-Host "4. 问候页面: http://localhost:8080/greeting" -ForegroundColor Cyan
Write-Host "5. 带参数的问候: http://localhost:8080/greeting?name=你的名字" -ForegroundColor Cyan