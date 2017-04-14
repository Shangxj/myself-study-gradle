/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.synjones.user.bean;

import java.io.Serializable;

/**
 *
 * @author sxj
 */
public class User implements Serializable{
    private static final long serialVersionUID = 1L;
    private String ucode;
    private String sno;
    private String name;//姓名

    public User() {
    }
    
    public String getUcode() {
        return ucode;
    }

    public void setUcode(String ucode) {
        this.ucode = ucode;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "User{" + "ucode=" + ucode + ", sno=" + sno + ", name=" + name + '}';
    }
    
    
}
