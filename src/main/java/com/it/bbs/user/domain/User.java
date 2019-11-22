package com.it.bbs.user.domain;

import java.util.Date;
import java.util.Set;

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
    private Date createTime;
    // 邮箱
    private String email;
    // 性别
    private String sex;
    // 用户的等级
    private Integer grade;
    // 用户的积分
    private Integer point;
    // 用户的角色
    private Set<Role> roles = null;

    public User() {
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public User(String id, String username, String password, int status, int department, Department departmentBean, Date createTime, String email, String sex, Integer grade, Integer point, Set<Role> roles) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.status = status;
        this.department = department;
        this.departmentBean = departmentBean;
        this.createTime = createTime;
        this.email = email;
        this.sex = sex;
        this.grade = grade;
        this.point = point;
        this.roles = roles;
    }

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

    public void setStatus(int status) {
        this.status = status;
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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getPoint() {
        return point;
    }

    public void setPoint(Integer point) {
        this.point = point;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }
}
