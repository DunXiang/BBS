package com.it.bbs.mapper;

import com.it.bbs.domain.User;

import java.util.List;

public interface UserMapper {

    User findUser(User user);

    List<User> showUser();

    int insertUser(User user);


}
