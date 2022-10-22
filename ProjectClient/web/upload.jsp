<%-- 
    Document   : upload
    Created on : 16 Sep, 2022, 2:21:16 AM
    Author     : SankalpD
--%>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%  
MultipartRequest m = new MultipartRequest(request, "C:/Users/s/Documents/NetBeansProjects/CakeProject/ProjectClient/build/web/images/product");  
out.print("successfully uploaded");  
  
%>  
