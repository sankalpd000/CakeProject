/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package com.viva;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.sql.DataSource;


/**
 *
 * @author SankalpD
 */
@WebService(serviceName = "Order")
public class Order {
    
    
    
    @Resource(name = "refr7")
    private DataSource refr7;   
    String Status;
    public Order() {  
        this.Status = "Processing";
       // this.otp = String(s);
    }
    

    
    /**
     * Web service operation
     * @param orderQT
     * @param P_ID
     * @param type
     * @param otp
     * @param C_ID
     * @return 
     */
    @WebMethod(operationName = "Order")
    public Boolean Order( 
            @WebParam(name = "orderQT") String orderQT,
            @WebParam(name = "Type") String type,
            @WebParam(name = "P_ID") String P_ID,
            @WebParam(name = "otp") String otp,
            @WebParam(name = "C_ID") String C_ID) 
    {
        
         try{
            Connection c = refr7.getConnection();

            Statement stmt3 = c.createStatement();
            ResultSet rs3 = stmt3.executeQuery("SELECT COUNT(*) AS total FROM ORD");
            int count = 0;
            String countS = "0";

           if(rs3.next()){
              count = rs3.getInt("total");
              countS = String.valueOf(count);
           } 

           PreparedStatement ps=c.prepareStatement("insert INTO ORD VALUES(?,?,?,?,?,?,?,?)");
           ps.setString(1, countS);
           ps.setString(7, orderQT);
           ps.setString(2, type);
           ps.setString(3, P_ID);
           ps.setString(4, Status);
           ps.setString(5, otp);
           ps.setString(6, C_ID);
           ps.setString(8, " ");
           
           ps.executeUpdate();
           return true;

        }
        catch(SQLException e){
            System.out.print( "error " + e.getMessage());
            return false;
        } 
        
    }
}

