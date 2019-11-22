package com.it.bbs.user.web.controller;

import com.it.bbs.user.domain.Message;
import com.it.bbs.user.domain.User;
import com.it.bbs.user.exception.UserException;
import com.it.bbs.user.service.UserService;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
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
     * @return 失败返回到失败页面
     * */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public ModelAndView login(ModelMap model) throws Exception {
        // 获取异常的信息
        String exceptionClassName = (String) model.get("shiroLoginFailure");
        if (exceptionClassName != null) {
            if (DisabledAccountException.class.getName().equals(exceptionClassName)) {
                //最终会抛给异常处理器
                throw new UserException("你的账户存在异常");
            }
            else if (LockedAccountException.class.getName().equals(exceptionClassName)) {
                throw new UserException("你的邮箱还没有验证请查看邮箱进行验证");
            }
            else if (UnknownAccountException.class.getName().equals(exceptionClassName)){
                throw new UserException("账户不存在");//最终在异常处理器生成未知错误
            }
        }
        return null;
    }


    /**
     * AJAX 校验用户名和邮箱是否重复
     * @return Message 关于校验的结果
     * */
    @RequestMapping(value = "/verify")
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
     *  注册一个用户
     * */
    @RequestMapping(value = "/user",method = RequestMethod.POST)
    public String register(User user) throws UserException {
        userService.insertUser(user);
        return "redirect:/";
    }


    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}
