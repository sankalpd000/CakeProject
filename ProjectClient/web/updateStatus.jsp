<%-- 
    Document   : updateStatus
    Created on : 1 Oct, 2022, 10:12:55 PM
    Author     : SankalpD
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            
         try{  
            String duname= request.getParameter("Duname");
            String ord = request.getParameter("ord");
            String DB_URL = "jdbc:derby://localhost:1527/MainDB";
             String USER = "sank";
             String PASS = "sank123";
             String QUERY = "UPDATE SANK.ORD SET ORD_STATUS = 'Out for delivery', D_UNAME= '"+duname+"' WHERE ORD_ID = '"+ord+"'";
   
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection con=DriverManager.getConnection(DB_URL,USER,PASS);
           Statement st=con.createStatement();
           st.executeUpdate(QUERY);
           request.setAttribute("user", duname);
        request.getRequestDispatcher("deliveryDash.jsp").forward(request, response);
            }catch (Exception e){
            System.out.println("errrror:"+ e.getMessage());
            }
        
        %>
