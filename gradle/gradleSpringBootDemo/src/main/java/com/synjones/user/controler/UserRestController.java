/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.synjones.user.controler;

import com.synjones.user.bean.User;
import com.synjones.user.mapper.UserMapper;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Administrator
 */
@RestController
public class UserRestController {
    
    private static final  Logger LOG = LoggerFactory.getLogger(UserRestController.class);
    
    @Resource
    private UserMapper userMapper;
    
    
    @RequestMapping("sxj/{sno}")
    public User getUserBySno(@PathVariable("sno") String sno){
        User user = userMapper.findUserBySno(sno);
        LOG.info(user.toString());
        LOG.info("哈哈哈…………");
        System.out.println("您好！");
        return user;
    }
    
    @RequestMapping("sayHelloWorld")
    public String sayHelloWorld(){
        return "Hello World!";
    }
    
}
