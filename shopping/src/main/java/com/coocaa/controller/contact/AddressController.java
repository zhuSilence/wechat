package com.coocaa.controller.contact;

import com.coocaa.exception.CustomException;
import com.coocaa.po.Address;
import com.coocaa.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by zhuxiang on 2016/3/12.
 * Desc :
 */
@Controller
@RequestMapping("/address")
public class AddressController {


    @Autowired
    AddressService addressService;

    @RequestMapping("/list")
    public String list(ModelMap model) throws CustomException{
        List<Address> addressList = addressService.findAllAddress();
        if(addressList != null){
            model.put("addressList", addressList);
        }
        return "address/list";
    }

    @RequestMapping("/add")
    public String add(){
        return "address/add";
    }

    @RequestMapping("/save")
    @ResponseBody
    public String save(Address address) throws CustomException{
        addressService.save(address);
        return "新增成功";
    }
}
