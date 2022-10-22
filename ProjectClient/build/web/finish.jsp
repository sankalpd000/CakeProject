<%-- 
    Document   : finish
    Created on : 11 Oct, 2022, 1:20:12 AM
    Author     : SankalpD
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            
         try{  
         
            String ord = request.getParameter("ordID");
            String DB_URL = "jdbc:derby://localhost:1527/MainDB";
             String USER = "sank";
             String PASS = "sank123";
             String QUERY = "UPDATE SANK.ORD SET ORD_STATUS = 'complete' WHERE ORD_ID = '"+ord+"'";
   
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection con=DriverManager.getConnection(DB_URL,USER,PASS);
           Statement st=con.createStatement();
           st.executeUpdate(QUERY);
          
            }catch (Exception e){
            System.out.println("errrror:"+ e.getMessage());
            }
        
        %>
