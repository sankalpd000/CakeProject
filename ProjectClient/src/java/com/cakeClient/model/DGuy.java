/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cakeClient.model;

/**
 *
 * @author SankalpD
 */
public class DGuy {
    String userName;
    String name;
    String phone;
    String mail;
    
    public DGuy(String userName, String name, String address, String phone, String mail) {
        this.userName = userName;
        this.name = name;
        this.phone = phone;
        this.mail = mail;
    }

    public DGuy() {
    }

    public String getUserName() {
        return userName;
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
