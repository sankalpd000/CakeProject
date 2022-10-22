<%-- 
    Document   : orderlist
    Created on : 18 Sep, 2022, 10:11:17 PM
    Author     : SankalpD
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cakeClient.model.OrderDetails"%>
<%@page import="java.sql.*" %>
<%@page import="com.cakeClient.helper.OrderList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/topnav.css">
        <link rel="stylesheet" href="styles/styleall.css">
      <link rel="stylesheet" href="styles/formStyle.css">
      <link rel="stylesheet" href="styles/adminDash.css">
        <link rel="stylesheet" href="styles/custLogin.css">
        <link rel="stylesheet" href="styles/ordertable.css"
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,900;1,400&family=Poppins:wght@500;600;700&family=Roboto&display=swap">
         <title>orders</title>
       
         
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

     <div class="custBanner">
            <h1 id="name">Orders</h1>
        </div>
            <div class="container">
                    <ul class="responsive-table">
                      <li class="table-header">
                        <div class="col col-1">Order Id</div>
                        <div class="col col-2">Customer Name</div>
                        <div class="col col-3">products</div>
                        <div class="col col-4">Delivery Type</div>
                        <div class="col col-5">Status</div>
                        <div class="col col-6">OTP</div>
                        <div class="col col-7"></div>
                      </li>
                       <% 
            // code product list
            OrderList p = new OrderList();
            ArrayList<OrderDetails> orderDetails = p.orderDetails();
            for(int i = 0 ; i < orderDetails.size() ; i++){ 
           orderDetails.get(i).getId();
            %>
            <form action="finish.jsp">
                      <li class="table-row">
                        <div class="col col-1" data-label="Job Id"><%= orderDetails.get(i).getId() %></div>
                        <input type="hidden" name="ordID" value="<%= orderDetails.get(i).getId() %>" />
                        <div class="col col-2" data-label="Customer Name"><%= orderDetails.get(i).getCustomer() %></div>
                        <div class="col col-3" data-label="products"><%= orderDetails.get(i).getProd() %></div>
                        <div class="col col-4" data-label="Delivery Type"><%= orderDetails.get(i).getType() %></div>
                        <div class="col col-5" data-label=" Status"><%= orderDetails.get(i).getStatus() %></div>
                        <div class="col col-6" data-label="OTP"><%= orderDetails.get(i).getOtp() %></div>
                        <div class="col col-7" data-label=""><input type="submit" value="update" /></div>
                      </li> 
            </form>
                      <%}%>
                  </ul>  
              
            </div>
         
      </body>
</html>
