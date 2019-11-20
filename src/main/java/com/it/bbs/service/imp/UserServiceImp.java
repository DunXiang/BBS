package com.it.bbs.service.imp;

import com.it.bbs.domain.User;
import com.it.bbs.exception.UserException;
import com.it.bbs.mapper.UserMapper;
import com.it.bbs.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.UUID;

@Service
public class UserServiceImp implements UserService {
    @Resource
    private UserMapper userMapper;
    /**
     * 登录业务方法
     * @return 如果没有用户就爆出异常
     * */
    public User login(User user) throws UserException {
        User findUser = userMapper.findUser(user);
        if(findUser == null){
            throw new UserException("用户名不存在或密码错误");
        }
        return findUser;
    }

    /**
     * 根据 user 有值得属性查询
     * @param user 查询条件
     * @return 查询到的用户
     * */
    public User findUser(User user){
        User findUser = userMapper.findUser(user);
        return findUser;
    }

    /**
     * 插入一个用户
     * @param user 要插入的用户
     * @return 返回值
     * */
    public int insertUser(User user) throws UserException {
        // 查询要插入的记录是否存在
        User findUser = userMapper.findUser(user);
        // 判断
        if (findUser != null) throw new UserException("用户重复");
        // 随机生成一个ID
        String uuid = UUID.randomUUID().toString();
        user.setId(uuid);
        // 插入
        return userMapper.insertUser(user);
    }
}
