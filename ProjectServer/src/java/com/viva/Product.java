/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package com.viva;

import com.viva.model.*;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.sql.DataSource;

/**
 *
 * @author SankalpD
 */
@WebService(serviceName = "Product")
public class Product {

    @Resource(name = "ref3")
    private DataSource ref3;
    

    /**
     * Web service operation
     * @param p_name
     * @param p_desc
     * @param p_price
     * @param p_stock
     * @param p_img
     * @return 
     */
    @WebMethod(operationName = "addProduct")
    public Boolean addProduct( 
            @WebParam(name = "p_name") String p_name, 
            @WebParam(name = "p_desc") String p_desc, 
            @WebParam(name = "p_price") int p_price, 
            @WebParam(name = "p_stock") int p_stock, 
            @WebParam(name = "p_img") String p_img) {
        try{
            Connection c = ref3.getConnection();

            Statement stmt3 = c.createStatement();
            ResultSet rs3 = stmt3.executeQuery("SELECT COUNT(*) AS total FROM PRODUCT");
            int count = 0;
            String countS = "0";

           if(rs3.next()){
              count = rs3.getInt("total");
              countS = String.valueOf(count);
           }
           System.out.println("image path "+ p_img);
           FileInputStream f1 = new FileInputStream(p_img); 

           PreparedStatement ps=c.prepareStatement("insert INTO PRODUCT VALUES(?,?,?,?,?,?)");
           ps.setString(1, countS);
           ps.setString(2, p_name);
           ps.setString(3, p_desc);
           ps.setInt(4, p_price);
           ps.setInt(5, p_stock);
           ps.setBinaryStream(6, f1);
           ps.executeUpdate();
           return true;

        }
        catch(SQLException e){

            System.out.print( "erroe " + e.getMessage());
            return false;
        } catch (FileNotFoundException ex) {
            System.out.print( "error " + ex.getMessage());
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }


    /**
     * This is a sample web service operation
     */

}
