package com.it.bbs.service;

import com.it.bbs.domain.User;
import com.it.bbs.exception.UserException;
import org.springframework.stereotype.Service;

public interface UserService {

    User login(User user) throws UserException;

    User findUser(User user);

    int insertUser(User user) throws UserException;
}
