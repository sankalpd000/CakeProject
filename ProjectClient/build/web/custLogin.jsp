<%-- 
    Document   : custLogin
    Created on : 27 Aug, 2022, 9:59:31 PM
    Author     : SankalpD
--%>

<%@page import="com.viva.model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Customer Log In</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
         <div class="custBanner">
            <h1>Customer</h1>
        </div>
        <div class="Custform" autocomplete="on">
            <form action="">
                <label for="Cmail">Enter Username OR Email:</label><br>
                <input type="input" id="Cmail" name="txtCmail" required><br><br>
                <label for="Cpass">Enter password:</label><br>
                <input type="password" id="Cpass" name="txtCpass" required><br><br>
                
                 <%-- start web service invocation --%>
    <% 
     String s1= request.getParameter("txtCmail");
        String s2= request.getParameter("txtCpass");
    if(s1 != null && s2 != null ){
    Customer customer= getCust(s1,s2);
    if(customer != null){
        request.setAttribute("user", customer);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
    else{
    %>
        <h3> email/username/password wrong</h3>      
     <%
    }
   
    } 

    %>
    <%-- end web service invocation --%>
     <%! 
        public Customer getCust(String cuname, String cpass){
       try{
       com.viva.LoginAd_Service service = new com.viva.LoginAd_Service();
	com.viva.LoginAd port = service.getLoginAdPort();
	 // TODO initialize WS operation arguments here
	// TODO process result here
	com.viva.model.Customer result = port.loginCust(cuname, cpass);
	System.out.println("Result = "+result.getName());
return result;
    }
    catch (Exception e){
System.out.println("error"+ e.getMessage());
return null;
    }
    }
     %>           
                
                <input type="submit" value="LogIN"><br><br>
            </form>
            <a href="custSignup.html">Create new account</a>
        </div>
    </body>
</html>
