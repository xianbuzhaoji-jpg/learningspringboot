# Spring Boot 学习项目

这是一个完整的 Spring Boot 学习项目，适合初学者快速上手 Spring Boot 开发。

## 项目特点

- ✅ 完整的 Spring Boot 项目结构
- ✅ RESTful API 示例
- ✅ Thymeleaf 模板引擎示例
- ✅ 用户管理 CRUD 操作
- ✅ 响应式前端界面
- ✅ 详细的文档说明

## 快速开始

### 1. 运行项目

#### Windows 用户：
双击 `run.bat` 文件，或执行：
```bash
mvnw.cmd spring-boot:run
```

#### Linux/Mac 用户：
```bash
./mvnw spring-boot:run
```

### 2. 访问应用

项目启动后，访问以下地址：

1. **首页**: http://localhost:8080/
2. **问候页面**: http://localhost:8080/greeting
3. **Hello World API**: http://localhost:8080/hello
4. **用户管理 API**: http://localhost:8080/api/users

## 项目结构

```
src/main/java/com/example/helloworld/
├── Application.java              # Spring Boot 主类
├── controller/
│   ├── HelloController.java      # 基础控制器示例
│   ├── HomeController.java       # 首页控制器（使用 Thymeleaf）
│   └── UserController.java       # REST API 控制器
└── model/
    └── User.java                 # 数据模型

src/main/resources/
├── application.properties        # 配置文件
└── templates/
    ├── home.html                # 首页模板
    └── greeting.html            # 问候页面模板
```

## API 文档

### 用户管理 API

#### 获取所有用户
```bash
GET /api/users
```

#### 获取单个用户
```bash
GET /api/users/{id}
```

#### 创建用户
```bash
POST /api/users
Content-Type: application/json

{
    "name": "张三",
    "email": "zhangsan@example.com"
}
```

#### 更新用户
```bash
PUT /api/users/{id}
Content-Type: application/json

{
    "name": "张三更新",
    "email": "zhangsan_updated@example.com"
}
```

#### 删除用户
```bash
DELETE /api/users/{id}
```

## 学习内容

### 1. Spring Boot 核心概念
- 自动配置
- 起步依赖
- 内嵌服务器
- 生产就绪功能

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

## 技术栈

- **后端框架**: Spring Boot 4.0.5
- **模板引擎**: Thymeleaf 3.1.3
- **构建工具**: Maven
- **Java 版本**: 21
- **服务器**: 内嵌 Tomcat

## 学习资源

1. [Spring Boot 官方文档](https://spring.io/projects/spring-boot)
2. [Spring Guides](https://spring.io/guides)
3. [Thymeleaf 官方文档](https://www.thymeleaf.org/documentation.html)

## 下一步学习建议

1. **数据库集成**: 添加 Spring Data JPA 和 MySQL
2. **安全认证**: 集成 Spring Security
3. **缓存**: 添加 Redis 缓存支持
4. **测试**: 编写单元测试和集成测试
5. **部署**: 学习 Docker 容器化部署

## 常见问题

### Q: 如何修改端口？
A: 在 `src/main/resources/application.properties` 中添加 `server.port=9090`

### Q: 如何添加新的依赖？
A: 在 `pom.xml` 文件的 `<dependencies>` 部分添加新的依赖

### Q: 如何调试应用？
A: 使用 IDE 的调试功能，或在启动时添加 `--debug` 参数

### Q: 如何查看自动配置报告？
A: 启动时添加 `--debug` 参数：`java -jar app.jar --debug`

## 贡献

欢迎提交 Issue 和 Pull Request 来改进这个学习项目！

## 许可证

本项目仅供学习使用。

---

**开始你的 Spring Boot 学习之旅吧！** 🚀