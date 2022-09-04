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
@XmlType(name = "DGuy", namespace="http://model.viva.com/")
public class DGuy {
    private String username;
    
    private String name;
    
    private String phone;
    
    private String mail;
    
     public DGuy(String username, String name, String phone, String mail) {
        this.username = username;
        this.name = name;
        this.phone = phone;
        this.mail = mail;
    }

    public DGuy() {
    }

    public String getUserName() {
        return username;
    }

    public String getName() {
        return name;
    }

    public String getPhone() {
        return phone;
    }

    public String getMail() {
        return mail;
    }
    
}
