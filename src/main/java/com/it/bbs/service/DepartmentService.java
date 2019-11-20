package com.it.bbs.service;

import com.it.bbs.domain.Department;
import org.springframework.stereotype.Service;

import java.util.List;

public interface DepartmentService {
    List<Department> showAll();
}
