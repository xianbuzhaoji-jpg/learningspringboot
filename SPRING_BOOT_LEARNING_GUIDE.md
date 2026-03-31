# Spring Boot 学习指南

## 项目概述
这是一个完整的 Spring Boot 学习项目，包含了 Spring Boot 的核心功能和最佳实践。

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

## 如何运行项目

### 方法1：使用 Maven Wrapper
```bash
# Windows
mvnw.cmd spring-boot:run

# Linux/Mac
./mvnw spring-boot:run
```

### 方法2：使用 Maven
```bash
mvn spring-boot:run
```

### 方法3：打包后运行
```bash
mvn clean package
java -jar target/helloworld-0.0.1-SNAPSHOT.jar
```

## 访问地址
项目启动后，访问以下地址：

1. **首页**: http://localhost:8080/
2. **问候页面**: http://localhost:8080/greeting
3. **Hello World API**: http://localhost:8080/hello
4. **用户管理 API**: http://localhost:8080/api/users

## Spring Boot 核心概念

### 1. 自动配置 (Auto-configuration)
Spring Boot 自动根据类路径中的依赖来配置应用程序。

### 2. 起步依赖 (Starter Dependencies)
简化 Maven/Gradle 依赖管理：
- `spring-boot-starter-web`: Web 应用开发
- `spring-boot-starter-thymeleaf`: 模板引擎
- `spring-boot-starter-test`: 测试支持

### 3. 内嵌服务器 (Embedded Server)
Spring Boot 包含内嵌的 Tomcat、Jetty 或 Undertow 服务器，无需部署 WAR 文件。

### 4. 生产就绪功能
- 健康检查: `/actuator/health`
- 应用信息: `/actuator/info`
- 指标监控: `/actuator/metrics`

## REST API 示例

### 用户管理 API

#### 获取所有用户
```bash
GET /api/users
```

#### 获取单个用户
```bash
GET /api/users/1
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
PUT /api/users/1
Content-Type: application/json

{
    "name": "张三更新",
    "email": "zhangsan_updated@example.com"
}
```

#### 删除用户
```bash
DELETE /api/users/1
```

## 控制器注解说明

### @RestController
- 用于创建 RESTful Web 服务
- 结合了 `@Controller` 和 `@ResponseBody`
- 方法的返回值直接写入 HTTP 响应体

### @Controller
- 用于创建 Web 页面控制器
- 通常与模板引擎（如 Thymeleaf）一起使用
- 返回视图名称

### 常用注解
- `@RequestMapping`: 映射 HTTP 请求到处理方法
- `@GetMapping`: 映射 GET 请求
- `@PostMapping`: 映射 POST 请求
- `@PutMapping`: 映射 PUT 请求
- `@DeleteMapping`: 映射 DELETE 请求
- `@PathVariable`: 获取 URL 路径中的变量
- `@RequestParam`: 获取请求参数
- `@RequestBody`: 获取请求体中的 JSON 数据

## Thymeleaf 模板引擎

### 特点
1. **自然的模板**: 模板是有效的 HTML5
2. **Spring 集成**: 与 Spring MVC 完美集成
3. **国际化支持**: 内置国际化功能
4. **片段重用**: 支持模板片段重用

### 基本语法
```html
<!-- 变量表达式 -->
<p th:text="${message}">默认文本</p>

<!-- 链接表达式 -->
<a th:href="@{/greeting(name='张三')}">问候张三</a>

<!-- 条件判断 -->
<div th:if="${user != null}">
    <p th:text="${user.name}"></p>
</div>

<!-- 循环 -->
<ul>
    <li th:each="user : ${users}" th:text="${user.name}"></li>
</ul>
```

## 配置文件

### application.properties
Spring Boot 使用 `application.properties` 或 `application.yml` 进行配置。

### 常用配置项
```properties
# 服务器配置
server.port=8080
server.servlet.context-path=/

# 数据库配置
spring.datasource.url=jdbc:mysql://localhost:3306/mydb
spring.datasource.username=root
spring.datasource.password=123456
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

# JPA 配置
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

# 日志配置
logging.level.com.example=DEBUG
logging.level.org.springframework=INFO
```

## 测试

### 运行测试
```bash
mvn test
```

### 单元测试示例
```java
@SpringBootTest
@AutoConfigureMockMvc
class UserControllerTest {
    
    @Autowired
    private MockMvc mockMvc;
    
    @Test
    void testGetAllUsers() throws Exception {
        mockMvc.perform(get("/api/users"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", hasSize(2)));
    }
}
```

## 下一步学习建议

1. **数据库集成**: 学习使用 Spring Data JPA 连接数据库
2. **安全认证**: 学习 Spring Security 实现用户认证和授权
3. **缓存**: 学习使用 Redis 或 Ehcache 进行缓存
4. **消息队列**: 学习使用 RabbitMQ 或 Kafka
5. **微服务**: 学习 Spring Cloud 构建微服务架构
6. **部署**: 学习 Docker 容器化部署

## 常见问题

### Q: 如何修改端口？
A: 在 `application.properties` 中添加 `server.port=9090`

### Q: 如何启用热部署？
A: 添加 `spring-boot-devtools` 依赖

### Q: 如何配置多个环境？
A: 创建 `application-dev.properties`, `application-prod.properties` 等文件

### Q: 如何查看自动配置报告？
A: 启动时添加 `--debug` 参数：`java -jar app.jar --debug`

## 资源推荐

1. **官方文档**: https://spring.io/projects/spring-boot
2. **Spring Guides**: https://spring.io/guides
3. **Spring Boot Reference**: https://docs.spring.io/spring-boot/docs/current/reference/html/
4. **GitHub 示例**: https://github.com/spring-projects/spring-boot/tree/main/spring-boot-samples

---

**祝您学习愉快！** 🚀