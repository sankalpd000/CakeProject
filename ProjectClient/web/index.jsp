<%-- 
    Document   : index
    Created on : 19 Aug, 2022, 10:48:31 PM
    Author     : SankalpD
--%>

<%@page import="com.viva.model.Customer"%>
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
        
        <%
        Customer customer = (Customer) request.getAttribute("user") ;
        if(customer != null){
            System.out.println("Welcome " + customer.getName());
        }else{
            System.out.println("User is not logged in.");
        }
        %>
        
      <div class="topnav" align="center">
            <div><a href="index.html" class="active" id="home"><img src="images\logo.png" alt="homepage" width="80px" height="30px"></a></div>
            <div id="searchdiv" >
              <input type="text" placeholder="Search.." id="search"> 
            </div>
            <div id="groupAC">
                <div class="dropdown">
                    <button class="dropbtn">Account</button> 
                      <div class="dropdown-content">
                        <a href="custLogin.jsp">Customer</a>
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
                 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#141125" fill-opacity="1" d="M0,192L48,208C96,224,192,256,288,240C384,224,480,160,576,122.7C672,85,768,75,864,85.3C960,96,1056,128,1152,122.7C1248,117,1344,75,1392,53.3L1440,32L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
            </footer>
    </body>
</html>
