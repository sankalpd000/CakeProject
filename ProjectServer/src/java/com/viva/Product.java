/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package com.viva;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
     * @param p_id
     * @param p_name
     * @param p_desc
     * @param p_price
     * @param p_stock
     * @param p_img
     * @return 
     */
    @WebMethod(operationName = "addProduct")
    public Boolean addProduct(@WebParam(name = "p_id") String p_id, 
            @WebParam(name = "p_name") String p_name, 
            @WebParam(name = "p_desc") String p_desc, 
            @WebParam(name = "p_price") int p_price, 
            @WebParam(name = "p_stock") int p_stock, 
            @WebParam(name = "p_img") String p_img) {
        
     
        
 try{
        //File f= new File(p_img);
        FileInputStream f1 = new FileInputStream(p_img); 
            Connection c = ref3.getConnection();
            PreparedStatement ps=c.prepareStatement("insert INTO CUSTOMER VALUES(?,?,?,?,?,?)");
            ps.setString(1, p_id);
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
