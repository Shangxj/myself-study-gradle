/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.synjones.user.controler;

import com.synjones.user.bean.User;
import com.synjones.user.mapper.UserMapper;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping("user")
public class UserController {
    
    @Resource
    private UserMapper userMapper;
    
    @RequestMapping("get/{sno}")
    public String queryUserById(@PathVariable("sno") String sno,HttpServletRequest request) {
        User findUserBySno = userMapper.findUserBySno(sno);
        request.setAttribute("user", findUserBySno);
        return "query_user";
    }
    
}
