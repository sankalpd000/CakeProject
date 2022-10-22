/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cakeClient.model;

/**
 *
 * @author SankalpD
 */
public class OrderDetails {
    
    private String id;
    
    private String type;
    
    private String prod;
    
     private String qt;

    public String getQt() {
        return qt;
    }

    public void setQt(String qt) {
        this.qt = qt;
    }
    
    private String status;
    
    private String otp;
    
    private String customer;
    
    private String address;
    
    private String Duname;

    public String getDuname() {
        return Duname;
    }

    public void setDuname(String Duname) {
        this.Duname = Duname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getProd() {
        return prod;
    }

    public void setProd(String prod) {
        this.prod = prod;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getOtp() {
        return otp;
    }

    public void setOtp(String otp) {
        this.otp = otp;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }
    
    
}
