package com.it.bbs.user.domain;

public class Permission {
    // 权限ID
    private String id;
    // 软线的名称
    private String name;

    public Permission() {
    }

    public Permission(String id, String name) {
        this.id = id;
        this.name = name;
    }

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
