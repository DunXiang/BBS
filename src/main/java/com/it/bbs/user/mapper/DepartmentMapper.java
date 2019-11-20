package com.it.bbs.user.mapper;

import com.it.bbs.user.domain.Department;

import java.util.List;

public interface DepartmentMapper {
    DepartmentMapper findDepartment(String id);

    List<Department> showAll();
}
