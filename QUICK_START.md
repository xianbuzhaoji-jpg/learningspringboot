# Spring Boot 学习项目 - 快速开始指南

## 🎉 恭喜！Spring Boot 学习项目已成功创建！

你已经拥有了一个完整的 Spring Boot 学习项目，包含以下功能：

## 📁 项目结构

```
2026.3.20/
├── src/main/java/com/example/helloworld/
│   ├── Application.java              # Spring Boot 主类
│   ├── controller/
│   │   ├── HelloController.java      # 基础控制器示例
│   │   ├── HomeController.java       # 首页控制器（使用 Thymeleaf）
│   │   └── UserController.java       # REST API 控制器
│   └── model/
│       └── User.java                 # 数据模型
├── src/main/resources/
│   ├── application.properties        # 配置文件
│   └── templates/
│       ├── home.html                # 首页模板
│       └── greeting.html            # 问候页面模板
├── pom.xml                          # Maven 配置文件
├── run.bat                          # Windows 启动脚本
├── test_api.http                    # API 测试文件
└── test_application.ps1             # PowerShell 测试脚本
```

## 🚀 如何启动项目

### 方法1：使用启动脚本（推荐）
双击 `run.bat` 文件

### 方法2：使用 Maven 命令
```bash
mvnw.cmd spring-boot:run
```

### 方法3：使用 Maven（如果已安装）
```bash
mvn spring-boot:run
```

## 🌐 访问地址

应用启动后，访问以下地址：

1. **首页**: http://localhost:8080/
   - 包含项目介绍和所有端点的导航

2. **Hello World API**: http://localhost:8080/hello
   - 返回 "hello world"

3. **用户管理 API**: http://localhost:8080/api/users
   - 支持完整的 CRUD 操作

4. **问候页面**: http://localhost:8080/greeting
   - 使用 Thymeleaf 模板引擎的示例

5. **带参数的问候**: http://localhost:8080/greeting?name=你的名字
   - 动态显示问候语

## 📚 学习内容

### 1. Spring Boot 基础
- 自动配置
- 起步依赖
- 内嵌服务器
- 配置文件管理

### 2. Web 开发
- RESTful API 设计
- 控制器注解使用
- 请求参数处理
- 响应数据格式

### 3. 模板引擎
- Thymeleaf 基本语法
- 模板布局
- 数据绑定
- 条件判断和循环

### 4. 项目配置
- application.properties 配置
- 多环境配置
- 日志配置
- 静态资源处理

## 🔧 技术栈

- **后端框架**: Spring Boot 4.0.5
- **模板引擎**: Thymeleaf 3.1.3
- **构建工具**: Maven
- **Java 版本**: 21
- **服务器**: 内嵌 Tomcat 11.0.20

## 📖 学习资源

### 项目内文档
1. `SPRING_BOOT_LEARNING_GUIDE.md` - 详细学习指南
2. `LEARNING_ROADMAP.md` - 学习路线图
3. `README.md` - 项目说明

### 在线资源
1. [Spring Boot 官方文档](https://spring.io/projects/spring-boot)
2. [Spring Guides](https://spring.io/guides)
3. [Thymeleaf 官方文档](https://www.thymeleaf.org/documentation.html)

## 🧪 测试项目

### 使用测试脚本
```powershell
powershell -ExecutionPolicy Bypass -File test_application.ps1
```

### 使用 HTTP 测试文件
使用 VS Code 的 REST Client 插件或 Postman 打开 `test_api.http` 文件

### 手动测试
1. 打开浏览器访问 http://localhost:8080/
2. 查看首页导航
3. 测试各个功能模块

## 🐛 常见问题

### Q: 应用启动失败？
A: 检查端口 8080 是否被占用，或修改 `application.properties` 中的 `server.port`

### Q: 如何修改配置？
A: 编辑 `src/main/resources/application.properties` 文件

### Q: 如何添加新功能？
A: 在 `src/main/java/com/example/helloworld/` 目录下创建新的类

### Q: 如何查看日志？
A: 应用启动时会在控制台输出日志，也可以在配置文件中调整日志级别

## 📈 下一步学习建议

1. **数据库集成**: 添加 Spring Data JPA 和 MySQL
2. **安全认证**: 集成 Spring Security
3. **缓存**: 添加 Redis 缓存支持
4. **测试**: 编写单元测试和集成测试
5. **部署**: 学习 Docker 容器化部署

## 🎯 学习目标

通过本项目，你将掌握：
- ✅ Spring Boot 项目创建和配置
- ✅ RESTful API 开发
- ✅ Thymeleaf 模板引擎使用
- ✅ 控制器和模型设计
- ✅ 项目结构和最佳实践

## 💡 学习建议

1. **动手实践**: 修改代码，观察效果
2. **逐步深入**: 从简单功能开始，逐步增加复杂度
3. **查阅文档**: 遇到问题时查阅官方文档
4. **参与社区**: 在 Stack Overflow 等社区提问和回答问题

## 🎊 开始学习吧！

现在你已经拥有了一个完整的 Spring Boot 学习环境。打开浏览器，访问 http://localhost:8080/，开始你的 Spring Boot 学习之旅！

**记住：学习编程最好的方式就是动手实践！** 💪

---

*如有问题，请查看项目中的详细文档或查阅 Spring Boot 官方文档。*

**祝你学习愉快！** 🚀