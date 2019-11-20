package com.it.bbs.mapper;

import com.it.bbs.domain.Department;

import java.util.List;

public interface DepartmentMapper {
    DepartmentMapper findDepartment(String id);

    List<Department> showAll();
}
