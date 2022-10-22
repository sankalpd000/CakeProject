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
        <link rel="stylesheet" href="styles/topnav.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,900;1,400&family=Poppins:wght@500;600;700&family=Roboto&display=swap">
    </head>
    <body>
        <div class="topnav" align="center">
            <div><a href="index.jsp" class="active" id="home">
                    <img src="images\logo.png" alt="homepage" width="80px" height="30px"></a>
            </div>
            
            <div id="groupAC">
                <div class="dropdown">
                    <button class="dropbtn">Account</button> 
                      <div class="dropdown-content">
                        <a href="custLogin.jsp">Customer</a>
                            <a href="DLogin.jsp">Delivery Guy</a>
                            <a href="adminLogin.jsp">Admin</a>
                      </div>
                </div>  
                <div><a href="Contact.html" id="contact">Contact</a></div>
            </div>
        </div>
 <div class="banner">
     <h1 id="header">Admin</h1>
        </div>
        <div>
       <form class="Adminform" action="" method="post">
           <label for="mail">Enter Email ID:</label><br>
            <input type="email" placeholder="example123@examle.com" id="mail" name="txtmail" required><br><br>
            <label for="pass">Enter password:</label><br>
            <input type="password" id="pass" name="txtpass" required>
            
             <%-- start web service invocation --%>
            <%
            String d4 = request.getParameter("txtmail");
            String d5 = request.getParameter("txtpass");
            if(d4 != null && d5 != null ){
            try {
                com.viva.LoginAd_Service service = new com.viva.LoginAd_Service();
                com.viva.LoginAd port = service.getLoginAdPort();
                 // TODO initialize WS operation arguments here
                java.lang.String mail = d4;
                java.lang.String pass = d5;
                // TODO process result here
                com.viva.model.Admin result = port.login(mail, pass);
                System.out.println("Result = "+result);
                if(result != null){
            request.setAttribute("admin", result);
            request.getRequestDispatcher("adminDash.jsp").forward(request, response);
        }
         else{
        %>
        <label style="color:red;"> email/username/password wrong</label> 
                <%
                    }
            } catch (Exception ex) {
           System.out.println("error"+ ex.getMessage());  
            }
}
            %>
            <%-- end web service invocation --%>
            <br><br>
            <input  type="submit" value="Login">
        </form>
        </div>
        
   
    </body>
</html>
