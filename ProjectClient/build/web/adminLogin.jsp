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
        <title>Admin Log</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/adminLogin.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
 <div class="adminBanner">
            <h1>Admin</h1>
        </div>
       <form class="Adminform" autocomplete="on" action="" method="post">
            <label class="label-class" for="mail">Enter Email ID:</label>
            <input class="field-class" type="email" placeholder="example123@examle.com" id="mail" name="txtmail" required><br><br>
            <label class="label-class" for="pass">Enter password:</label>
            <input class="field-class" type="password" id="pass" name="txtpass" required>
            
            <%-- start web service invocation --%><hr/>
    <%
         String a1= request.getParameter("txtmail");
        String a2= request.getParameter("txtpass");
        if(a1 != null && a2 != null ){
        try {
	com.viva.LoginAd_Service service = new com.viva.LoginAd_Service();
	com.viva.LoginAd port = service.getLoginAdPort();
	 // TODO initialize WS operation arguments here
	java.lang.String mail = a1;
	java.lang.String pass = a2;
	// TODO process result here
	com.viva.model.Admin result = port.login(mail, pass);
	out.println("Result = "+result);
         if(result != null){
            request.setAttribute("admin", result);
            request.getRequestDispatcher("adminDash.jsp").forward(request, response);
        }
         else{
        %>
        
        <h3> email/username/password wrong</h3>      
                <%
        }
        } 
        catch (Exception ex) {
	// TODO handle custom exceptions here
        }
        }
    %>
    <%-- end web service invocation --%><hr/>
            
            
            <center>
                <input id="btn" type="submit" value="Login">
            </center>
        </form>
    
    </body>
</html>
