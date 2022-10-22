/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cakeClient.model;

/**
 *
 * @author SankalpD
 */
public class Customer {
    String userName;
    String name;
    String address;
    String phone;
    String mail;
    
    public Customer(String userName, String name, String address, String phone, String mail) {
        this.userName = userName;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.mail = mail;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Customer() {
    }

    public String getUserName() {
        return userName;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public String getMail() {
        return mail;
    }
}
