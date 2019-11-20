package com.it.bbs.web.controller;

import com.it.bbs.domain.Message;
import com.it.bbs.domain.User;
import com.it.bbs.exception.UserException;
import com.it.bbs.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping(value = "/login" , method = RequestMethod.GET)
    public String loginGet(){
        return "/login";
    }
    /**
     * 登录路径
     * @return 成功返回到主页
     * @return 失败返回到失败页面
     * */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public ModelAndView login(User user){
        ModelAndView view = null;
        try {
            User login = userService.login(user);
            view = new ModelAndView("redirect:/");
        } catch (UserException e) {
            System.out.println(e.getMessage());
            view = new ModelAndView("forward:/");
            view.addObject("exception",e.getMessage());
        }
        return view;
    }


    /**
     * AJAX 校验用户名和邮箱是否重复
     * @return Message 关于校验的结果
     * */
    @RequestMapping(value = "/verify",method = RequestMethod.POST)
    @ResponseBody
    public Message verifyValue(User user){
        Message message = null;
        User findUser = userService.findUser(user);
        if(findUser == null){
            message = new Message("无重复",1);
        }else {
            message = new Message("重复",2);
        }
        return  message;
    }

    /**
     *
     * */
    @RequestMapping(value = "/user",method = RequestMethod.POST)
    public String register(User user){
        try {
            userService.insertUser(user);
            return "redirect:/";
        } catch (UserException e) {
            return "redirect:/";
        }
    }


    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}
