package com.coocaa.mapper;


import com.coocaa.po.OrderDetails;

public interface OrderDetailsMapper {
    int deleteByPrimaryKey(Integer orderDetailsId);

    int insert(OrderDetails record);

    int insertSelective(OrderDetails record);

    OrderDetails selectByPrimaryKey(Integer orderDetailsId);

    int updateByPrimaryKeySelective(OrderDetails record);

    int updateByPrimaryKey(OrderDetails record);
}