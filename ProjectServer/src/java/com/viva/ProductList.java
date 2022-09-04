/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package com.viva;

import com.viva.model.ProductDetails;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.sql.DataSource;
import com.viva.model.ProductDetails;

/**
 *
 * @author SankalpD
 */
@WebService(serviceName = "ProductList")
public class ProductList {

    @Resource(name = "ref4")
    private DataSource ref4;
    
    /**
     * Web service operation
     * @return 
     */
    @WebMethod(operationName = "productList")
    public ArrayList productList() {
  try{
            Connection c = ref4.getConnection();

            Statement stmt3 = c.createStatement();
            ResultSet r = stmt3.executeQuery("SELECT * FROM PRODUCT");

           if(r.next()){
               ArrayList ProductDetails = new ArrayList<>();
               while (r.next()){
                ProductDetails product = new ProductDetails();
                product.setName(r.getString("P_NAME"));
                product.setDesc(r.getString("P_DESC"));
                product.setPrice(r.getInt("P_PRICE"));
                product.setStock(r.getInt("P_STOCK"));
                product.setImg(r.getBlob("P_IMG"));
                ProductDetails.add(product);
               }
               return ProductDetails;
           }else{
               return null;
           }
           
        }
        catch(SQLException e){
            System.out.print( "erroe " + e.getMessage());
               return null;
        }
    }


}
