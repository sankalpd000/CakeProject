<%-- 
    Document   : addprod2
    Created on : 13 Sep, 2022, 9:54:48 PM
    Author     : SankalpD
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.*"%>
<%@page import="org.apache.commons.fileupload.disk.*"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@ page import = "org.apache.commons.io.output.*" %>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="com.viva.model.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/topnav.css">
        <link rel="stylesheet" href="styles/styleall.css">
      <link rel="stylesheet" href="styles/formStyle.css">
        <<link rel="stylesheet" href="styles/custLogin.css"/>
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,900;1,400&family=Poppins:wght@500;600;700&family=Roboto&display=swap">
        <title>JSP Page</title>

    </head>
    <body>
                 <%      
                   
                try {
 
                    
                    String P_NAME = request.getParameter("P_NAME");
                    String P_DES = request.getParameter("P_DES");        
                    String img = request.getParameter("P_ICON");
                    int d3 = Integer.parseInt(request.getParameter("P_PRICE"));
                    int d4 = Integer.parseInt(request.getParameter("P_STOCK"));
                    System.out.println("price : "+d3);
                    System.out.println("stock : "+d4);
                    com.viva.Product_Service service = new com.viva.Product_Service();
                    com.viva.Product port = service.getProductPort();
                     // TODO initialize WS operation arguments here
                    java.lang.String pName = P_NAME;
                    java.lang.String pDesc = P_DES;
                    int pPrice = d3;
                    int pStock = d4;
                    java.lang.String pImg = img;
                    // TODO process result here
                    java.lang.Boolean result = port.addPro(pName, pDesc, pPrice, pStock, pImg);
                   out.println("Result = "+result);
                   out.println("no error");
                  
                
                } catch (Exception ex) {
                    System.out.println("error : "+ ex.getMessage());
                    ex.printStackTrace();
                     }
                     
                
                %>

                 <script src="js/new.js"></script>
    </body>
</html>
