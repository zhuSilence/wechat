package com.coocaa.service;

import com.coocaa.exception.CustomException;
import com.coocaa.po.Address;

import java.util.List;

/**
 * Created by zhuxiang on 2016/3/12.
 * Desc :
 */
public interface AddressService {

    public List<Address> findAllAddress() throws CustomException;

    public void save(Address address) throws CustomException;
}
