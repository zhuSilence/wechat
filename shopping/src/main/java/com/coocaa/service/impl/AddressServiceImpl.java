package com.coocaa.service.impl;

import com.coocaa.exception.CustomException;
import com.coocaa.mapper.AddressMapper;
import com.coocaa.po.Address;
import com.coocaa.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by zhuxiang on 2016/3/12.
 * Desc :
 */
@Service
@Transactional
public class AddressServiceImpl implements AddressService {

    @Autowired
    AddressMapper addressMapper;

    public List<Address> findAllAddress() throws CustomException {
        List<Address> addressList = addressMapper.findAllAddress();
        return addressList == null ? null : addressList;
    }


    public void save(Address address) throws CustomException {
        if(address.getAddressId() != null){
            addressMapper.updateByPrimaryKey(address);
        }else {
            addressMapper.insert(address);
        }
    }
}
