package com.example.helloworld.controller;

import com.example.helloworld.model.User;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/users")
public class UserController {
    
    private List<User> users = new ArrayList<>();
    private Long nextId = 1L;
    
    public UserController() {
        // 初始化一些示例数据
        users.add(new User(nextId++, "张三", "zhangsan@example.com"));
        users.add(new User(nextId++, "李四", "lisi@example.com"));
    }
    
    // GET /api/users - 获取所有用户
    @GetMapping
    public List<User> getAllUsers() {
        return users;
    }
    
    // GET /api/users/{id} - 根据ID获取用户
    @GetMapping("/{id}")
    public User getUserById(@PathVariable Long id) {
        return users.stream()
                .filter(user -> user.getId().equals(id))
                .findFirst()
                .orElse(null);
    }
    
    // POST /api/users - 创建新用户
    @PostMapping
    public User createUser(@RequestBody User user) {
        user.setId(nextId++);
        users.add(user);
        return user;
    }
    
    // PUT /api/users/{id} - 更新用户
    @PutMapping("/{id}")
    public User updateUser(@PathVariable Long id, @RequestBody User updatedUser) {
        for (int i = 0; i < users.size(); i++) {
            User user = users.get(i);
            if (user.getId().equals(id)) {
                updatedUser.setId(id);
                users.set(i, updatedUser);
                return updatedUser;
            }
        }
        return null;
    }
    
    // DELETE /api/users/{id} - 删除用户
    @DeleteMapping("/{id}")
    public String deleteUser(@PathVariable Long id) {
        boolean removed = users.removeIf(user -> user.getId().equals(id));
        return removed ? "用户删除成功" : "用户不存在";
    }
}