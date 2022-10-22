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
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,900;1,400&family=Poppins:wght@500;600;700&family=Roboto&display=swap" rel="stylesheet">
    

        <script src="js\cart.js"></script>
        
    </head>
    <body>
            
        <%
        Customer customer = (Customer) request.getAttribute("user") ;
        String account = "Account";
        if(customer != null){
           out.println("Welcome " + customer.getUsername());
           account = customer.getUsername();
           
         String a = request.getParameter("to");
           if(a != null){
                if(a.equals("my orders")){
                    myOrders(request, response, customer);
                }
            }
           
        }else{
            System.out.println("User is not logged in.");
        }
        %>
        
        <%! 
            private void myOrders(HttpServletRequest request, HttpServletResponse response, Customer customer){
                try{
                    request.setAttribute("user", customer);
                    request.getRequestDispatcher("myOrders.jsp").forward(request, response);
                }catch(Exception ex){}
            }
            
        %>
        
      <div class="topnav" align="center">
            <div><a href="index.jsp" class="active" id="home"><img src="images\logo.png" alt="homepage" width="80px" height="30px"></a></div>
            
            <div id="groupAC">
                <div class="dropdown">
                    <button class="dropbtn" id="Customer-name"><%= account %> </button> 
                        <div class="dropdown-content">
                            <%
                                if(account.equals("Account")){
                            %>
                            <a href="custLogin.jsp">Customer</a>
                            <a href="DLogin.jsp">Delivery Guy</a>
                            <a href="adminLogin.jsp">Admin</a>
                            <% } else { %>
                            <form action="#" method="post">
                                <input type="hidden" name="to" value="my orders" />
                                <input type="submit" name="My orders" value="My Orders" />
                            </form>
                            <a href="index.jsp">logout </a>
                            <%}%>
                         </div>
                </div>  
                <div><a href="Contact.html" id="contact">Contact</a></div>
            </div>
      </div>          
        <div class="banner">
            <a href="">
                  <img alt="Customes" id="custordbanner" src="images\OrderNow.gif">
             </a>
        </div>
        <div class="grid-container">
            <% 
            // code product list
            Product p = new Product();
            ArrayList<ProductDetails> productDetails = p.productList();
            for(int i = 0 ; i < productDetails.size() ; i++){ 
           productDetails.get(i).getId();
            %>
            <div class="grid-item">
                 <div class="product-card">
                    <div class="img" align ="center">
                        
                        <input type="hidden" class="cart-id" value="<%= productDetails.get(i).getId() %>"/>
                        <img class="shop-item-image" src="images/product/<%= productDetails.get(i).getImg() %>" alt="Avatar" style="width:100% Height:100%" id="gd1"></div>
                        <div class="name" align ="left"><%= productDetails.get(i).getName() %><br>  </div>
                        <input class="price" type ="hidden" value="<%= productDetails.get(i).getPrice() %>" />
                        <div class="desc" align ="left"><%= productDetails.get(i).getDesc() %><br>  </div>
                        <div class="price" align ="left">₹<%= productDetails.get(i).getPrice() %><br>  </div>
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
            <form action="receipt.jsp" method="get">
                
                <% if(customer != null){  %>
                <input type="hidden" name="customer-address" value="<%=customer.getAdd()%>"/>
                <input type="hidden" class="cart-quantity-input" name="custome-name" value="<%=customer.getUsername()%>"/>
                <% } %>
                
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
                        <span class="cart-total-price">₹ 0</span>
                    </div>
                    <div class="radiobutto">
                         <input type="radio" id="takeaway" name="type" value="Take away">
                         <label for="takeaway">Take a away</label> 
                         <input type="radio" id="homedelivery" name="type" value="Home Delivery">
                         <label for="homedelivery">Home Delivery</label><br>     
                     </div>
                    
                <%--<button class="btn btn-primary btn-purchase" onclick="document.location='takeaway.jsp'" type="button">Take Away</button>
                <button class="btn btn-primary btn-purchase" onclick="document.location='homedel.jsp'" type="button">Home Delivery</button>--%>
                <center><input type="submit" name="Getthis" value="Add to Cart"/></center>
                </div>
                
                
            </form>
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
               
                 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#141125" fill-opacity="1" d="M0,192L48,208C96,224,192,256,288,240C384,224,480,160,576,122.7C672,85,768,75,864,85.3C960,96,1056,128,1152,122.7C1248,117,1344,75,1392,53.3L1440,32L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
            </footer>
        
    </body>
</html>
