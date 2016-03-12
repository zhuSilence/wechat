package com.coocaa.controller.login;

import com.coocaa.po.User;
import com.coocaa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zhuxiang on 2016/3/3.
 * Desc :
 */
@Controller
public class LoginController {

    @Autowired
    UserService userService;

    @RequestMapping("/")
    public String root(ModelMap model, HttpServletResponse response) throws IOException{
        System.out.println("root");
        response.sendRedirect("/index");
        return null;
    }

    @RequestMapping("/index")
    public String login() throws Exception{
        User user = userService.findUserById(1);
        System.out.println(user.getUsername());
        System.out.println("sssssddddd");
        return "index";
    }
}
