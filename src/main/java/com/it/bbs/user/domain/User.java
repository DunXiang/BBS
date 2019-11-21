package com.it.bbs.user.domain;

import java.util.Date;

/**
 * 用户类
 * @author Mr.苗
 * */
public class User {
    // 用户 ID
    private String id;
    // 用户名称
    private String username;
    // 用户密码
    private String password;
    // 账户状态
    private int status = Status.LOCK;

    public class Status{
        // 正常
        public static final int NORMAL = 1;
        // 锁定
        public static final int LOCK = 0;
        // 封印
        public static final int SEAL = -1;
    }
    // 用户部门
    private int department;
    //部门
    private Department departmentBean = null;
    // 创建的时间
    private Date date;
    // 邮箱
    private String email;

    public User() {
    }

    public User(String id, String username, String password, int start, int department, Date date, String email) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.status = start;
        this.department = department;
        this.date = date;
        this.email = email;
    }

    //- - - - - - GET AND SET - - - - - -


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int start) {
        this.status = start;
    }

    public int getDepartment() {
        return department;
    }

    public void setDepartment(int department) {
        this.department = department;
    }

    public Department getDepartmentBean() {
        return departmentBean;
    }

    public void setDepartmentBean(Department departmentBean) {
        this.departmentBean = departmentBean;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", start=" + status +
                ", department=" + department +
                ", departmentBean=" + departmentBean +
                ", date=" + date +
                ", email='" + email + '\'' +
                '}';
    }
}
