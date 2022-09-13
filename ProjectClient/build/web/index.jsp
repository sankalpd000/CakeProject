<%-- 
    Document   : index
    Created on : 19 Aug, 2022, 10:48:31 PM
    Author     : SankalpD
--%>

<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cakeClient.model.ProductDetails"%>
<%@page import="com.viva.model.Customer"%>
<%@page import="java.sql.*" %>
<%@page import="com.cakeClient.helper.Product" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles\index.css">
        <link rel="stylesheet" href="styles\cart.css">
        <link href='https://css.gg/shopping-cart.css' rel='stylesheet'>

        <script src="js\cart.js"></script>
        
    </head>
    <body>
            
        <%
        Customer customer = (Customer) request.getAttribute("user") ;
        String account = "Account";
        if(customer != null){
           out.println("Welcome " + customer.getName());
           account = customer.getName();
        }else{
            System.out.println("User is not logged in.");
        }
        %>
        
      <div class="topnav" align="center">
            <div><a href="index.jsp" class="active" id="home"><img src="images\logo.png" alt="homepage" width="80px" height="30px"></a></div>
            <div id="searchdiv" >
              <input type="text" placeholder="Search.." id="search"> 
            </div>
            <div id="groupAC">
                <div class="dropdown">
                    <button class="dropbtn"><%= account %> </button> 
                        <div class="dropdown-content">
                            <%
                                if(account.equals("Account")){
                            %>
                            <a href="custLogin.jsp">Customer</a>
                            <a href="DLogin.jsp">Delivery Guy</a>
                            <a href="adminLogin.jsp">Admin</a>
                            <a href="testImgSave.jsp">Upload Image</a>
                            <% } else { %>
                            <a href="custLogin.jsp">My Order</a>
                            <a href="index.jsp">logout </a>
                            <%}%>
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
            Product p = new Product();
            ArrayList<ProductDetails> productDetails = p.productList();
            for(int i = 0 ; i < productDetails.size() ; i++){ 
           
            %>
            <div class="grid-item">
                 <div class="product-card">
                    <div class="img" align ="center">
                        <img class="shop-item-image" src="images\cake1.jpg" alt="Avatar" style="width:100%" id="gd1"></div>
                        <div class="name" align ="left"><%= productDetails.get(i).getName() %><br>
                        <%= productDetails.get(i).getPrice() %></div>
                        <input class="price" type ="hidden" value="<%= productDetails.get(i).getPrice() %>" />
                        <%
                                if(account.equals("Account")){
                        %>
                        <button type="button" onclick="document.location='custLogin.jsp'">ADD TO CART</button>
                        <% } else { %>
                        <button class="btn btn-primary shop-item-button" type="button" >ADD TO CART</button>     
                        <%}%>
                </div>
           </div>    
             <% 
                 }%>
        </div>
        <%
            if(!account.equals("Account")){
        %>
        <button id="myBtn" role="button"><i class="gg-shopping-cart"></i> cart </button>
        <%}%>
        
        
        <div id="myModal" class="modal">
            <span class="close">&times;</span>
            <div class="modal-content">
                <div class="cart-row">
                <span class="cart-item cart-header cart-column">ITEM</span>
                <span class="cart-price cart-header cart-column">PRICE</span>
                <span class="cart-quantity cart-header cart-column">QUANTITY</span>
            </div>
            <div class="cart-items">
            </div>
            <div class="cart-total">
                <strong class="cart-total-title">Total</strong>
                <span class="cart-total-price">Rs. 0</span>
            </div>
                <button class="btn btn-primary btn-purchase" type="button">PURCHASE</button>
            </div>
        </div> 
         
        <script>
            var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
};

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
};

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target === modal) {
    modal.style.display = "none";
  }
};
            </script>
            <footer>
                <h1 align="center">this is footer</h1>
                 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#141125" fill-opacity="1" d="M0,192L48,208C96,224,192,256,288,240C384,224,480,160,576,122.7C672,85,768,75,864,85.3C960,96,1056,128,1152,122.7C1248,117,1344,75,1392,53.3L1440,32L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
            </footer>
        
    </body>
</html>
