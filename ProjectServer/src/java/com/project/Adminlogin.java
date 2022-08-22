/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package com.project;

import java.sql.*;
import javax.annotation.Resource;
import javax.jws.Oneway;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.sql.DataSource;

/**
 *
 * @author SankalpD
 */
@WebService(serviceName = "Adminlogin")
public class Adminlogin {

    @Resource(name = "mydsn3")
    private DataSource mydsn3;

    /**
     * This is a sample web service operation
     */

    /**
     * Web service operation
     * @param email
     * @param pass
     */
    @WebMethod(operationName = "login")
    public void login(@WebParam(name = "email") String email, @WebParam(name = "pass") String pass) {
        try{
            Connection d = mydsn3.getConnection();
            PreparedStatement ps=d.prepareStatement("SELECT*FROM ADMIN WHERE A_MAIL=? and A_PASS=?");
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet r= ps.executeQuery();
            if(r.next()){
                System.out.print(  "login successfull");
            }
            else{
                System.out.print(  "login not successfull");
            }
        }
         catch(SQLException e){
            
            System.out.print( "erroe " + e.getMessage());
        }
    }

    /**
     * Web service operation
     * @param userName
     * @param password
     * @return 
     */
    @WebMethod(operationName = "loginResult")
    public String loginResult(@WebParam(name = "userName") final String userName, @WebParam(name = "password") final String password) {
        try{
            Connection d = mydsn3.getConnection();
            PreparedStatement ps=d.prepareStatement("SELECT*FROM ADMIN WHERE A_MAIL=? and A_PASS=?");
            ps.setString(1, userName);
            ps.setString(2, password);
            ResultSet r= ps.executeQuery();
            if(r.next()){
                System.out.print(  "login successfull");
                return "login successfull";
            }
            else{
                System.out.print(  "login not successfull");
               
                return "login not successfull";
            }
        }
         catch(SQLException e){
            
            System.out.print( "erroe " + e.getMessage());
                return "error";
        }
    }
}
