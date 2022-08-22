<%-- 
    Document   : index
    Created on : 19 Aug, 2022, 10:48:31 PM
    Author     : SankalpD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles\index.css">
    </head>
    <body>
        
      <div class="topnav" align="center">
            <div><a href="index.html" class="active" id="home"><img src="images\logo.png" alt="homepage" width="80px" height="30px"></a></div>
            <div id="searchdiv" >
              <input type="text" placeholder="Search.." id="search"> 
            </div>
            <div id="groupAC">
                <div class="dropdown">
                    <button class="dropbtn">Account</button> 
                      <div class="dropdown-content">
                        <a href="custLogin.html">Customer</a>
                        <a href="dguyLogin.html">Delivery Guy</a>
                        <a href="adminLogin.html">Admin</a>
                      </div>
                </div>  
                <div><a href="Contact.html" id="contact">Contact</a></div>
            </div>
      </div>
        <div class="banner">
            <a href="">
                  <img alt="Customes" id="custordbanner" src="images\banner.jpg">
             </a>
        </div>
        <div class="grid-container">
            <% 
            // code product list
            
            for(int i = 0 ; i < 4 ; i++){ %>
            <div class="grid-item">
                 <div class="product-card">
                    <div class="img" align ="center">
                        <img src="images\cake1.jpg" alt="Avatar" style="width:100%" id="gd1"></div>
                    <div class="name" align ="center">name</div>
                </div>
           </div>
             <% }%>
        </div>
            <footer>
                <h1 align="center">this is footer</h1>
            </footer>
    </body>
</html>
