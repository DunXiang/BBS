package com.it.bbs.web.controller;

import com.it.bbs.domain.Department;
import com.it.bbs.domain.User;
import com.it.bbs.exception.UserException;
import com.it.bbs.service.DepartmentService;
import com.it.bbs.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class DepartmentController {
    @Resource
    private DepartmentService departmentService;

    @RequestMapping(value = "/department",method = RequestMethod.GET)
    @ResponseBody
    public List<Department> showAll(){
        List<Department> showAll = departmentService.showAll();
        return showAll;
    }

    // - - - - GET AND SET - - - -

    public DepartmentService getDepartmentService() {
        return departmentService;
    }

    public void setDepartmentService(DepartmentService departmentService) {
        this.departmentService = departmentService;
    }
}
