package com.it.bbs.realm;

import com.it.bbs.domain.User;
import com.it.bbs.exception.UserException;
import com.it.bbs.mapper.UserMapper;
import com.it.bbs.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.pam.UnsupportedTokenException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;



public class UserRealm extends AuthorizingRealm {
    @Resource
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
        // 得到名称
        String name = token.getPrincipal().toString();
        // 查找用户
        try {
            User user = userService.login(new User(null,name,token.getCredentials().toString(),0,0,null,null));
            System.out.println(user);
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
