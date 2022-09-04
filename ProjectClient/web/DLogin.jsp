<%-- 
    Document   : DLogin
    Created on : 2 Sep, 2022, 7:56:22 PM
    Author     : SankalpD
--%>
<%@page import="com.viva.model.DGuy"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/topnav.css">
        <title>JSP Page</title>
    </head>
    <body>
             <div class="topnav" align="center">
            <div><a href="index.jsp" class="active" id="home"><img src="images\logo.png" alt="homepage" width="80px" height="30px"></a></div>
            <div id="searchdiv" >
              <input type="text" placeholder="Search.." id="search"> 
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
            <h1>Delivery Guy</h1>
        </div>
        <div class=""" autocomplete="on">
            <form>
                <label for="Dmail">Enter Email ID:</label><br>
                <input type="email" placeholder="example123@examle.com" id="Dmail" name="txtDmail" required><br><br>
                <label for="Dpass">Enter password:</label><br>
                <input type="password" id="Dpass" name="txtDpass" required><br><br>
                
            
                <input type="submit" value="LogIN"><br><br>
            </form>
            <a href="dReg.jsp">Join as Delivery Guy </a>
        </div>
       
    </body>
</html>
