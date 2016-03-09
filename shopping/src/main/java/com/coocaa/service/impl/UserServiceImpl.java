package com.coocaa.service.impl;

import com.coocaa.mapper.UserMapper;
import com.coocaa.po.User;
import com.coocaa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by zhuxiang on 2016/3/9.
 * Desc :
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    public User findUserById(Integer id) throws Exception {
        User user = userMapper.selectByPrimaryKey(1);
        System.out.println(user.getUsername());
        return user;
    }
}
