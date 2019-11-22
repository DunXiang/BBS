package com.it.bbs.user.realm;

import com.it.bbs.user.domain.User;
import com.it.bbs.user.exception.UserException;
import com.it.bbs.user.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;



public class UserRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService = null;
    public String getName(){return "UserRealm";}

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    /**
     * 登录
     * */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        UsernamePasswordToken passwordToken = (UsernamePasswordToken) token;
        System.out.println(passwordToken.getUsername()+":"+passwordToken.getPassword());
        // 得到名称
        String name = token.getPrincipal().toString();
        // 查找用户
        try {
            User user = userService.login(new User(passwordToken.getUsername(),null));
            System.out.println(user);
            // 如果用户没有验证和异常
            if (user.getStatus() == User.Status.LOCK){
                throw new LockedAccountException();
            }else if (user.getStatus() == User.Status.SEAL){
                throw new DisabledAccountException();
            }
            return new SimpleAuthenticationInfo(user.getUsername(),user.getPassword(),getName());
        } catch (UserException e) {
            throw new UnknownAccountException();
        }

    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}
