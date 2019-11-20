package com.it.bbs.user.service;

import com.it.bbs.user.domain.User;
import com.it.bbs.user.exception.UserException;

public interface UserService {

    User login(User user) throws UserException;

    User findUser(User user);

    int insertUser(User user) throws UserException;
}
