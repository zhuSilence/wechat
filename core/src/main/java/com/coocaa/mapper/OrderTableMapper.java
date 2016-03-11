package com.coocaa.mapper;


import com.coocaa.po.OrderTable;

public interface OrderTableMapper {
    int deleteByPrimaryKey(Integer orderId);

    int insert(OrderTable record);

    int insertSelective(OrderTable record);

    OrderTable selectByPrimaryKey(Integer orderId);

    int updateByPrimaryKeySelective(OrderTable record);

    int updateByPrimaryKey(OrderTable record);
}