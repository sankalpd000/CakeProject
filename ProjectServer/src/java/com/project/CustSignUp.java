/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package com.project;
import java.sql.*;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.Oneway;
import javax.sql.DataSource;
/**
 *
 * @author SankalpD
 */
@WebService(serviceName = "CustSignUp")
public class CustSignUp {
    @Resource(name = "mydsn")
    private DataSource mydsn;

    /**
     * Web service operation
     * @param c_uname
     * @param c_pass
     * @param c_name
     * @param c_phn
     * @param c_mail
     * @param c_address
     */
    @WebMethod(operationName = "signup")
    @Oneway
    public void signup(
            @WebParam(name = "c_uname") String c_uname,
            @WebParam(name = "c_name") String c_name,
            @WebParam(name = "c_address") String c_address,
            @WebParam(name = "c_phn") int c_phn,
            @WebParam(name = "c_mail") String c_mail,
            @WebParam(name = "c_pass") String c_pass) 
    {
        try{
            Connection c = mydsn.getConnection();
            PreparedStatement ps=c.prepareStatement("insert INTO CUSTOMER(C_UNAME,C_NAME,C_ADDRESS,C_PHN,C_MAIL,C_PASS) VALUES(?,?,?,?,?,?)");
            ps.setString(1, c_uname);
            ps.setString(2, c_name);
            ps.setString(3, c_address);
            ps.setInt(4, c_phn);
            ps.setString(5, c_mail);
            ps.setString(6, c_pass);
            ps.executeUpdate();

        }
        catch(SQLException e){
            
            System.out.print( "erroe " + e.getMessage());
        }

}
}
