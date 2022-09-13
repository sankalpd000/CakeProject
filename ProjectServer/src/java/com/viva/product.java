/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/WebService.java to edit this template
 */
package com.viva;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.*;
import java.sql.PreparedStatement;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.servlet.annotation.MultipartConfig;
import javax.sql.DataSource;
import javax.sql.rowset.serial.SerialBlob;
import org.apache.xml.security.exceptions.Base64DecodingException;
import org.apache.xml.security.utils.Base64;

/**
 *
 * @author SankalpD
 */
@WebService(serviceName = "product")
public class product {

    @Resource(name = "refr5")
    private DataSource refr5;

    
    
    //@Resource(name = "ref5")
   // private DataSource ref5;

    /**
     * Web service operation
     * @param name
     * @param desc
     * @param price
     * @param stock
     * @param img
     * @return 
     * @throws java.io.FileNotFoundException 
     * @throws org.apache.xml.security.exceptions.Base64DecodingException 
     */
 
    @WebMethod(operationName = "addProduct")
    public Boolean addProduct(@WebParam(name = "name") String name, 
            @WebParam(name = "desc") String desc, 
            @WebParam(name = "price") int price, 
            @WebParam(name = "stock") int stock, 
            @WebParam(name = "img") String img) throws FileNotFoundException, Base64DecodingException {
       try{
            Connection c = refr5.getConnection();

            Statement stmt3 = c.createStatement();
            ResultSet rs3 = stmt3.executeQuery("SELECT COUNT(*) AS total FROM PRODUCT");
            int count = 0;
            String countS = "0";

           if(rs3.next()){
              count = rs3.getInt("total");
              countS = String.valueOf(count);
           } 

           PreparedStatement ps=c.prepareStatement("insert INTO PRODUCT VALUES(?,?,?,?,?,?)");
           ps.setString(1, countS);
           ps.setString(2, name);
           ps.setString(3, desc);
           ps.setInt(4, price);
           ps.setInt(5, stock);
           //byte[] decodedByte = Base64.decode(img);
           //Blob b = new SerialBlob(deco dedByte);
           //Blob blob = c.createBlob();
           //blob.setBytes(1, img.getBytes());
           ps.setString(6, img);
           
           ps.executeUpdate();
           return true;

        }
        catch(SQLException e){
            System.out.print( "erroe " + e.getMessage());
            return false;
        } 
    }

    /**
     * Web service operation
     * @param pName
     * @param pDesc
     * @param pPrice
     * @param pStock
     * @param pImg
     * @return 
     */
    @WebMethod(operationName = "AddPro")
    public Boolean AddPro(@WebParam(name = "pName") String pName, 
            @WebParam(name = "pDesc") String pDesc, 
            @WebParam(name = "pPrice") int pPrice, 
            @WebParam(name = "pStock") int pStock, 
            @WebParam(name = "pImg") String pImg) {
        try{
            Connection c = refr5.getConnection();

            Statement stmt3 = c.createStatement();
            ResultSet rs3 = stmt3.executeQuery("SELECT COUNT(*) AS total FROM PRODUCT");
            int count = 0;
            String countS = "0";

           if(rs3.next()){
              count = rs3.getInt("total");
              countS = String.valueOf(count);
           } 

           PreparedStatement ps=c.prepareStatement("insert INTO PRODUCT VALUES(?,?,?,?,?,?)");
           ps.setString(1, countS);
           ps.setString(2, pName);
           ps.setString(3, pDesc);
           ps.setInt(4, pPrice);
           ps.setInt(5, pStock);
           ps.setString(6, pImg);
           
           ps.executeUpdate();
           return true;

        }
        catch(SQLException e){
            System.out.print( "error " + e.getMessage());
            return false;
        } 
    }
    
    


}
