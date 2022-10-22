<%-- 
    Document   : adminDash
    Created on : 28 Aug, 2022, 10:11:15 PM
    Author     : SankalpD
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.io.*"%>
<%@page import="com.cakeClient.model.ProductDetails"%>
<%@page import="java.lang.*"%>
<%@page import="com.cakeClient.helper.Product" %>
<%@page import="com.viva.model.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/topnav.css">
        <link rel="stylesheet" href="styles/styleall.css">
      <link rel="stylesheet" href="styles/formStyle.css">
       <link rel="stylesheet" href="styles/ordertable.css"
      <link rel="stylesheet" href="styles/adminDash.css">
        <<link rel="stylesheet" href="styles/custLogin.css"/>
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,900;1,400&family=Poppins:wght@500;600;700&family=Roboto&display=swap">
        <title>JSP Page</title>

    </head>
    <body>
       <div class="topnav" align="center">
            <div><a href="index.jsp" class="active" id="home"><img src="images\logo.png" alt="homepage" width="80px" height="30px"></a></div>
            
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
        <script type="text/javascript" src="js/snackbarController.js"></script>
        <script type="text/javascript" src="js/popupBox.js"></script>
       
        <%
            Admin admin = (Admin) request.getAttribute("admin") ;
            if(admin != null){
                System.out.println("Welcome " + admin.getMail());
            }else{
                System.out.println("Admin is not logged in.");
            }
        %>
        
         <div class="custBanner">
            <h1 id="name">Admin Dashboard</h1>
        </div>
        <div class="btn">
        <div><button  id="add" onclick="document.location='addproduct.html'">Add product</button></div>
        <div><button id="orders" onclick="document.location='orderlist.jsp'">Orders</button></div>
        </div>
        
         <div class="container">
                    <ul class="responsive-table">
                      <li class="table-header">
                        <div class="col col-1">Product Id</div>
                        <div class="col col-2">Name</div>
                        <div class="col col-3">Description</div>
                        <div class="col col-4"> Price</div>
                        <div class="col col-5"> Stock </div>
                        <div class="col col-6">  </div>
                        
                      </li>
          <% 
            // code product list
            Product p = new Product();
            ArrayList<ProductDetails> productDetails = p.productList();
            for(int i = 0 ; i < productDetails.size() ; i++){ 
           productDetails.get(i).getId();
            %>
            <form action="updateStock.jsp">  
                        <li class="table-row">
                    
                         
                        <div class="col col-1" data-label="Job Id"><%= productDetails.get(i).getId()  %></div>
                        <input type="hidden" name="ID" value="<%= productDetails.get(i).getId() %>" />
                        
                        <div class="col col-2" data-label="Customer Name"><%= productDetails.get(i).getName() %></div>
                        
                        <div class="col col-3" data-label="Customer Name"><%= productDetails.get(i).getDesc() %></div>
                       
                        <div class="col col-4" data-label="products"><%= productDetails.get(i).getPrice() %></div>
                        
                        <div class="col col-5" data-label="Delivery Type"><input type="number" name="stock" value="<%= productDetails.get(i).getStock() %>" /></div>
           
                        <div class="col col-6" data-label=""><input type="submit" value="update" /></div>
                        
                      </li>
            </form>
                      <%}%>
                  </ul>    
            </div>             
    </body>
</html>
