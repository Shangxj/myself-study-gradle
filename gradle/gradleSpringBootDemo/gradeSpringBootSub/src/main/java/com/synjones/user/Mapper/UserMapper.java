/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.synjones.user.Mapper;

import com.synjones.user.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 *
 * @author Administrator
 */
@Mapper
public interface UserMapper {
    @Select("select * from user where sno=#{sno}")
    public User findUserBySno(@Param("sno") String sno);
}
