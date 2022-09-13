/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package com.viva;

import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.sql.DataSource;
import java.sql.*;

/**
 *
 * @author SankalpD
 */
@WebService(serviceName = "SignUp")
public class SignUp {

    @Resource(name = "refr2")
    private DataSource refr2;

    //@Resource(name = "ref2")
    //private DataSource ref2;

    
    /**
     * Web service operation
     * @param c_uname
     * @param c_name
     * @param c_add
     * @param c_phn
     * @param c_mail
     * @param c_pass
     * @return 
     */
    @WebMethod(operationName = "signCust")
    public boolean signCust(@WebParam(name = "c_uname") String c_uname, 
            @WebParam(name = "c_name") String c_name, 
            @WebParam(name = "c_add") String c_add, 
            @WebParam(name = "c_phn") String c_phn, 
            @WebParam(name = "c_mail") String c_mail, 
            @WebParam(name = "c_pass") String c_pass) {
        try{
            Connection c = refr2.getConnection();
            PreparedStatement ps=c.prepareStatement("insert INTO CUSTOMER(C_UNAME,C_NAME,C_ADDRESS,C_PHN,C_MAIL,C_PASS) VALUES(?,?,?,?,?,?)");
            ps.setString(1, c_uname);
            ps.setString(2, c_name);
            ps.setString(3, c_add);
            ps.setString(4, c_phn);
            ps.setString(5, c_mail);
            ps.setString(6, c_pass);
            ps.executeUpdate();
            return true;

        }
        catch(SQLException e){
            
            System.out.print( "erroe " + e.getMessage());
            return false;
        }
    }

    /**
     * Web service operation
     * @param d_uname
     * @param d_name
     * @param d_phn
     * @param d_mail
     * @param d_pass
     * @return 
     */
    @WebMethod(operationName = "signDguy")
    public boolean signDguy(@WebParam(name = "d_uname") String d_uname, @WebParam(name = "d_name") String d_name, @WebParam(name = "d_phn") String d_phn, @WebParam(name = "d_mail") String d_mail, @WebParam(name = "d_pass") String d_pass) {
     try{
            Connection d = refr2.getConnection();
            PreparedStatement ps=d.prepareStatement("insert INTO DGUY(D_UNAME,D_NAME,D_PHN,D_MAIL,D_PASS) VALUES(?,?,?,?,?)");
            ps.setString(1, d_uname);
            ps.setString(2, d_name);
            ps.setString(3, d_phn);
            ps.setString(4, d_mail);
            ps.setString(5, d_pass);
            ps.executeUpdate();
            return true;

        }
        catch(SQLException e){
            
            System.out.print( "erroe " + e.getMessage());
            return false;
        }
    }



}
