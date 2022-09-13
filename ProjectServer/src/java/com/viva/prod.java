/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package com.viva;

import com.viva.model.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.sql.DataSource;

/**
 *
 * @author SankalpD
 */
@WebService(serviceName = "prod")
public class prod {

    @Resource(name = "ref6")
    private DataSource ref6;

    /**
     * Web service operation
     * @return 
     */
    @WebMethod(operationName = "listp")
    public List listp() {
       try{
            Connection c = ref6.getConnection();
            //ProductDetails product = new ProductDetails();    
           PreparedStatement ps=c.prepareStatement("SELECT * FROM PRODUCT");
             ResultSet r= ps.executeQuery();

           if(r.next()){
              List ProductDetails;
                ProductDetails = new ArrayList<>();
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
       /*eturn null;*/
    }


    

  
}
