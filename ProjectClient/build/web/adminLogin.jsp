<%-- 
    Document   : adminLogin
    Created on : 19 Aug, 2022, 9:25:39 PM
    Author     : SankalpD
--%>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <%-- start web service invocation --%><hr/>
    <%
     String mail = request.getParameter("txtmail");
    String pswd = request.getParameter("txtpass");
    String redirectURL = "adminDashboard.html";
    try {
	com.project.Adminlogin_Service service = new com.project.Adminlogin_Service();
	com.project.Adminlogin port = service.getAdminloginPort();
        
	 // TODO initialize WS operation arguments here
	String email = mail;
	String pass = pswd;
	port.login(email, pass);
         response.sendRedirect(redirectURL);
    %>
        
    <%!
        private void myFunc(String Bits, javax.servlet.jsp.JspWriter myOut)
        {  
          try{ myOut.println("<div>"+Bits+"</div>"); } 
          catch(Exception eek) { }
        }
    %>
        
        <h1>succesful !</h1><br>
        <h1>Welcome <%  
            myFunc(email,out);
            %> </h1><br>
    <%

    } catch (Exception ex) {
	System.out.println("exception " + ex.getMessage());
         %>
        <h1>error</h1><br>
    <%
    }
    %>
    <%-- end web service invocation --%><hr/>
    </body>
</html>
