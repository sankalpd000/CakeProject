/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cakeClient.helper;

import com.cakeClient.model.OrderDetails;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author SankalpD
 */
public class OrderList {
     static final String DB_URL = "jdbc:derby://localhost:1527/MainDB";
   static final String USER = "sank";
   static final String PASS = "sank123";
   static final String QUERY = "SELECT * FROM ORD";
   
   public ArrayList<OrderDetails>  orderDetails(){
       
       ArrayList<OrderDetails> orderDetail = new ArrayList();
       
       try {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection con=DriverManager.getConnection(DB_URL,USER,PASS);
           Statement st=con.createStatement();
           ResultSet rs = st.executeQuery(QUERY);
           while(rs.next()){
               OrderDetails orderDetails = new OrderDetails();
               
               orderDetails.setId(rs.getString("ORD_ID"));
               orderDetails.setType(rs.getString("ORD_TYPE"));
               orderDetails.setProd(rs.getString("P_ID"));
               orderDetails.setStatus(rs.getString("ORD_STATUS"));
               orderDetails.setOtp(rs.getString("ORD_OTP"));
               orderDetails.setCustomer(rs.getString("C_ID"));
               
               orderDetail.add(orderDetails);
           }
           
           
       } catch (ClassNotFoundException | SQLException ex) {
           Logger.getLogger(OrderList.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return orderDetail;
   }
    
}
