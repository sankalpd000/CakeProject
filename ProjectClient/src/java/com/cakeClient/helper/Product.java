/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cakeClient.helper;

import com.cakeClient.model.ProductDetails;
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
public class Product {
   static final String DB_URL = "jdbc:derby://localhost:1527/MainDB";
   static final String USER = "sank";
   static final String PASS = "sank123";
   static final String QUERY = "SELECT * FROM PRODUCT";
   
   public ArrayList<ProductDetails>  productList(){
       
       ArrayList<ProductDetails> productDetails = new ArrayList();
       
       try {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection con=DriverManager.getConnection(DB_URL,USER,PASS);
           Statement st=con.createStatement();
           ResultSet rs = st.executeQuery(QUERY);
           while(rs.next()){
               ProductDetails productDetail = new ProductDetails();
               
               productDetail.setName(rs.getString("P_NAME"));
               productDetail.setDesc(rs.getString("P_DESC"));
               productDetail.setPrice(rs.getInt("P_PRICE"));
               productDetail.setStock(rs.getInt("P_STOCK"));
               productDetail.setImg(rs.getBlob("P_IMG"));
               
               productDetails.add(productDetail);
           }
           
           
       } catch (ClassNotFoundException | SQLException ex) {
           Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
       }
       
       return productDetails;
   }
    
    
}
