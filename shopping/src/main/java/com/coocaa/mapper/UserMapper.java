package com.coocaa.mapper;

import com.coocaa.po.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id) throws Exception;

    void insert(User record) throws Exception;

    int insertSelective(User record) throws Exception;

    User selectByPrimaryKey(Integer id) throws Exception;

    int updateByPrimaryKeySelective(User record) throws Exception;

    int updateByPrimaryKey(User record) throws Exception;

}