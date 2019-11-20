package com.it.bbs.service.imp;

import com.it.bbs.domain.Department;
import com.it.bbs.mapper.DepartmentMapper;
import com.it.bbs.service.DepartmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartmentServiceImp implements DepartmentService {
    @Resource
    private DepartmentMapper departmentMapper;

    /**
     * @return 所有的部门
     * */
    @Override
    public List<Department> showAll() {
        return departmentMapper.showAll();
    }

    // - - - - - GET AND SET - - - - -
    public DepartmentMapper getDepartmentMapper() {
        return departmentMapper;
    }

    public void setDepartmentMapper(DepartmentMapper departmentMapper) {
        this.departmentMapper = departmentMapper;
    }
}
