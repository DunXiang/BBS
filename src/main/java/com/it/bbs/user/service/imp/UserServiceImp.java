package com.it.bbs.user.service.imp;

import com.it.bbs.user.domain.MailConfig;
import com.it.bbs.user.domain.User;
import com.it.bbs.user.exception.RedirectException;
import com.it.bbs.user.exception.UserException;
import com.it.bbs.user.mapper.UserMapper;
import com.it.bbs.user.service.UserService;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.UUID;
/**
 *
 * */
@Service
public class UserServiceImp implements UserService {
    @Resource
    private UserMapper userMapper;
    @Resource
    private MailSender mailSender;
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
        if (findUser != null) throw new RedirectException("用户重复");
        // 随机生成一个ID
        String uuid = UUID.randomUUID().toString();
        user.setId(uuid);
        // 插入
        int status = userMapper.insertUser(user);
        // 发送邮件
        sendEmail(user);
        return status;
    }

    /**
     * 发送邮件
     * @param user 保存用户 email 信息的实体类
     * */
    public void sendEmail(User user){
        // 消息构建器
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(MailConfig.getEmailConfig().getProperty("email.username"));
        message.setTo(user.getEmail());
        message.setSubject("科信论坛");
        message.setText("注册");
        mailSender.send(message);
    }
}
