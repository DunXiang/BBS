package com.it.bbs.user.domain;

import java.util.Set;
/**
 *
 * */
public class Role {
    // 角色ID
    private String id;
    // 角色名称
    private String name;
    // 角色权限
    private Set<Permission> permissions;

    public Role() {
    }

    public Role(String id, String name, Set<Permission> permissions) {
        this.id = id;
        this.name = name;
        this.permissions = permissions;
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

    public Set<Permission> getPermissions() {
        return permissions;
    }

    public void setPermissions(Set<Permission> permissions) {
        this.permissions = permissions;
    }
}
