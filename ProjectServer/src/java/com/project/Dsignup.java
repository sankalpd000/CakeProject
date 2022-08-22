/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package com.project;

import javax.annotation.Resource;
import javax.jws.Oneway;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.sql.DataSource;
import java.sql.*;

/**
 *
 * @author SankalpD
 */
@WebService(serviceName = "Dsignup")
public class Dsignup {

    @Resource(name = "mydsn2")
    private DataSource mydsn2;

    /**
     * Web service operation
     * @param duname
     * @param dname
     * @param dphn
     * @param dmail
     * @param dpass
     */
    @WebMethod(operationName = "dsigup")
    @Oneway
    public void dsigup(@WebParam(name = "duname") String duname, @WebParam(name = "dname") String dname, @WebParam(name = "dphn") int dphn, @WebParam(name = "dmail") String dmail, @WebParam(name = "dpass") String dpass) {
                try{
            Connection d = mydsn2.getConnection();
            PreparedStatement ps=d.prepareStatement("insert INTO DGUY(D_UNAME,D_NAME,D_PHN,D_MAIL,D_PASS) VALUES(?,?,?,?,?)");
            ps.setString(1, duname);
            ps.setString(2, dname);
            ps.setInt(3, dphn);
            ps.setString(4, dmail);
            ps.setString(5, dpass);
            ps.executeUpdate();

        }
        catch(SQLException e){
            
            System.out.print( "erroe " + e.getMessage());
        }
    }

    /**
     * This is a sample web service operation
     */
   
}
