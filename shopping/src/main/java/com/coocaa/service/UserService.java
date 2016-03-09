package com.coocaa.service;

import com.coocaa.po.User;

/**
 * Created by zhuxiang on 2016/3/9.
 * Desc :
 */
public interface UserService {

    public User findUserById(Integer id) throws Exception;
}
