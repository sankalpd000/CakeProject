<%-- 
    Document   : deliveryDash
    Created on : 18 Sep, 2022, 10:57:26 PM
    Author     : SankalpD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.viva.model.DGuy"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cakeClient.model.OrderDetails"%>
<%@page import="java.sql.*" %>
<%@page import="com.cakeClient.helper.OrderListDelivery" %>
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
         
        <title>delivery dashboard</title>
    </head>
    <body>
        <%
        DGuy customer = (DGuy) request.getAttribute("user") ;
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
            private void myOrders(HttpServletRequest request, HttpServletResponse response, DGuy customer){
                try{
                    request.setAttribute("user", customer);
                    request.getRequestDispatcher("History.jsp").forward(request, response);
                }catch(Exception ex){}
            }
            
        %>
        
       <div class="topnav" align="center">
            <div><a href="index.jsp" class="active" id="home"><img src="images\logo.png" alt="homepage" width="80px" height="30px"></a></div>
            
            <div id="groupAC">
                <div class="dropdown">
                    <button class="dropbtn"><%= account %></button> 
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

     <div class="custBanner">
            <h1 id="name">Available Orders</h1>
    </div>
      <div class="container">
                    <ul class="responsive-table">
                      <li class="table-header">
                        <div class="col col-1">Order Id</div>
                        <div class="col col-2">Customer Name</div>
                        <div class="col col-3">products</div>
                        <div class="col col-4">Address</div>
                        <div class="col col-5"></div>
                      </li>
                       <% 
            // code product list
            OrderListDelivery p = new OrderListDelivery();
            ArrayList<OrderDetails> orderDetails = p.orderDetails();
            for(int i = 0 ; i < orderDetails.size() ; i++){ 
           orderDetails.get(i).getId();
            %>
            <form action="updateStatus.jsp">  
                        <li class="table-row">
                        <div class="col col-1" data-label="Job Id"><%= orderDetails.get(i).getId() %></div>
                         <input type="hidden" name="ord" value="<%= orderDetails.get(i).getId() %>" />
                        <div class="col col-2" data-label="Customer Name"><%= orderDetails.get(i).getCustomer() %></div>
                        <input type="hidden" name="Duname" value="<%= customer.getUsername() %>" />
                        <div class="col col-3" data-label="products"><%= orderDetails.get(i).getProd() %></div>
                        <div class="col col-4" data-label="Delivery Type"><%= orderDetails.get(i).getAddress() %></div>
                        <div class="col col-5" data-label=""><input type="submit" value="Accept" /></div>
                      </li>
            </form>
                      <%}%>
                  </ul>    
            </div>                
                      
    </body>
</html>
