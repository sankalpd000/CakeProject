/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.viva.model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;

/**
 *
 * @author SankalpD
 */


@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Customer", namespace="http://model.viva.com/")
public class Customer {
    
    private String username;
    
    private String name;
    
    private String add;
    
    private String phone;
    
    private String mail;

    public Customer(String username, String name, String add, String phone, String mail) {
        this.username = username;
        this.name = name;
        this.add = add;
        this.phone = phone;
        this.mail = mail;
    }

    

    public Customer() {
    }

    public String getUserName() {
        return username;
    }

    public String getName() {
        return name;
    }

    public String getAdd() {
        return add;
    }

    public String getPhone() {
        return phone;
    }

    public String getMail() {
        return mail;
    }
    
    
}
