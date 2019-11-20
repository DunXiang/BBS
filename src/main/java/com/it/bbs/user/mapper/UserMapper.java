package com.it.bbs.user.mapper;

import com.it.bbs.user.domain.User;

import java.util.List;

public interface UserMapper {

    User findUser(User user);

    List<User> showUser();

    int insertUser(User user);


}
