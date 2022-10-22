/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cakeClient.helper;

import com.cakeClient.model.OrderDetails;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SankalpD
 */
public class OrderListMy {
    static final String DB_URL = "jdbc:derby://localhost:1527/MainDB";
   static final String USER = "sank";
   static final String PASS = "sank123";
   
   public ArrayList<OrderDetails>  orderDetails(String Duname){
       
       ArrayList<OrderDetails> orderDetail = new ArrayList();
       
       try {
           //String QUERY = "SELECT * FROM SANK.ORD AND D_UNAME = '?'";
   
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection con=DriverManager.getConnection(DB_URL,USER,PASS);
            
           PreparedStatement st=con.prepareStatement("SELECT * FROM ORD INNER JOIN CUSTOMER ON ORD.C_ID = CUSTOMER.C_UNAME AND C_ID = '"+Duname+"'");
           ResultSet rs = st.executeQuery();
           while(rs.next()){
               OrderDetails orderDetails = new OrderDetails();
               
               orderDetails.setId(rs.getString("ORD_ID"));
               orderDetails.setProd(rs.getString("P_ID"));
               orderDetails.setCustomer(rs.getString("C_ID"));
               orderDetails.setAddress(rs.getString("C_ADDRESS"));
               orderDetails.setDuname(rs.getString("D_UNAME"));
               orderDetails.setQt(rs.getString("ORD_QT"));
               orderDetails.setStatus(rs.getString("ORD_STATUS"));
               orderDetail.add(orderDetails);
           }
           
           
       } catch (ClassNotFoundException | SQLException ex) {
           Logger.getLogger(OrderList.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return orderDetail;
   }
}
