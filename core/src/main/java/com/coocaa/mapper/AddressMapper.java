package com.coocaa.mapper;

import com.coocaa.po.Address;

import java.util.List;

public interface AddressMapper {
    int deleteByPrimaryKey(Integer addressId);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Integer addressId);

    List<Address> findAllAddress();

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);
}