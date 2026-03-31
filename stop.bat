@echo off
echo ========================================
echo  Spring Boot 学习项目停止脚本
echo ========================================
echo.

echo 正在查找 Spring Boot 应用进程...
for /f "tokens=2" %%i in ('netstat -ano ^| findstr :8080 ^| findstr LISTENING') do (
    echo 找到进程 PID: %%i
    taskkill /PID %%i /F
    echo 进程已停止
)

echo.
echo 应用已停止
pause