package com.it.bbs.domain;
/**
 * 部门类
 * 表示学生所属的专业
 * @author Mr.苗
 * */
public class Department {
    // 部门 ID
    private String id;
    // 部门名称
    private String name;

    public Department() {
    }

    public Department(String id, String name) {
        this.id = id;
        this.name = name;
    }

    //- - - - GET AND SET


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
