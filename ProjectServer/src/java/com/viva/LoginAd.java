/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package com.viva;

import com.viva.model.*;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import java.sql.*;
import javax.annotation.Resource;
import javax.sql.DataSource;

/**
 *
 * @author SankalpD
 */
@WebService(serviceName = "LoginAd")
public class LoginAd {

    @Resource(name = "ref1")
    private DataSource ref1;

    /**
     * Web service operation
     * @param mail
     * @param pass
     * @return 
     */
    @WebMethod(operationName = "login")
    public Admin login(@WebParam(name = "mail") String mail, @WebParam(name = "pass") String pass) {
         try{
            Connection d = ref1.getConnection();
            PreparedStatement ps=d.prepareStatement("SELECT * FROM ADMIN WHERE A_MAIL=? and A_PASS=?");
            ps.setString(1, mail);
            ps.setString(2, pass);
            ResultSet r= ps.executeQuery();
            if(r.next()){
                String Amail = r.getString("A_MAIL");
                System.out.print(  "login successfull");
                Admin a1= new Admin();
                a1.setMail(Amail);
                return a1;
            }
            else{
                System.out.print(  "login not successfull");
                return null;
            }
        }
         catch(SQLException e){
             System.out.print( "erroe " + e.getMessage());
            return null;
        }
    }

    /**
     * Web service operation
     * @param c_uname
     * @param c_pass
     * @return 
     */
    @WebMethod(operationName = "loginCust")
    public Customer loginCust(@WebParam(name = "c_uname") String c_uname, @WebParam(name = "c_pass") String c_pass) {
         try{
            Connection d = ref1.getConnection();
            PreparedStatement ps=d.prepareStatement("SELECT * FROM CUSTOMER WHERE (C_UNAME=? OR C_MAIL=?) and C_PASS=?");
            ps.setString(1, c_uname);
            ps.setString(2, c_uname);
            ps.setString(3, c_pass);
            ResultSet r= ps.executeQuery();
            if(r.next()){
                String name = r.getString("C_NAME");
                String username = r.getString("C_UNAME");
                String add = r.getString("C_ADDRESS");
                String mail = r.getString("C_MAIL");
                String phone = r.getString("C_PHN");
                String pass = r.getString("C_PASS");
     
                System.out.print(  "login successfull");
                return new Customer(username,name,add,phone,mail);
            }
            else{
                System.out.print(  "login not successfull");
                return null;
            }
        }
         catch(SQLException e){
             System.out.print( "erroe " + e.getMessage());
            return null;
        }
    }

    /**
     * Web service operation
     * @param d_uname
     * @param d_pass
     * @return 
     */
    @WebMethod(operationName = "loginDguy")
    public boolean loginDguy(@WebParam(name = "d_uname") String d_uname, @WebParam(name = "d_pass") String d_pass) {
try{
            Connection d = ref1.getConnection();
            PreparedStatement ps=d.prepareStatement("SELECT * FROM DGUY WHERE (D_UNAME=? or D_MAIL=?) and D_PASS=?");
            ps.setString(1, d_uname);
            ps.setString(2, d_uname);
            ps.setString(3, d_pass);
            ResultSet r= ps.executeQuery();
            if(r.next()){
                System.out.print(  "login successfull");
                return true;
            }
            else{
                System.out.print(  "login not successfull");
                return false;
            }
        }
         catch(SQLException e){
             System.out.print( "erroe " + e.getMessage());
            return false;
        }
    }    
}
