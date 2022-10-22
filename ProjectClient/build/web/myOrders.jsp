<%-- 
    Document   : myOrders
    Created on : 4 Oct, 2022, 8:06:14 PM
    Author     : SankalpD
--%>


<%@page import="com.cakeClient.helper.OrderListDelivery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.viva.model.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cakeClient.model.OrderDetails"%>
<%@page import="java.sql.*" %>
<%@page import="com.cakeClient.helper.OrderListMy" %>
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
         
        <title>My orders</title>
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
                         
      <div class="custBanner">
            <h1 id="name">My Orders</h1>
       </div>
        
        <div class="container">
                    <ul class="responsive-table">
                      <li class="table-header">
                        <div class="col col-1">Order Id</div>
                        <div class="col col-2">products</div>
                        <div class="col col-3">quantity</div>
                        <div class="col col-4"> address</div>
                        <div class="col col-5"> delivery guy</div>
                        <div class="col col-6"> status </div>
                        
                      </li>
                       <% 
            // code product list
            OrderListMy p = new OrderListMy();
            ArrayList<OrderDetails> orderDetails = p.orderDetails(customer.getUsername());
            for(int i = 0 ; i < orderDetails.size() ; i++){ 
           orderDetails.get(i).getId();
            %>
            <form action="receiptt.jsp">  
                        <li class="table-row">
                         <input type="hidden" name="ottp" value="<%= orderDetails.get(i).getOtp() %>" />
                         
                        <div class="col col-1" data-label="Job Id"><%= orderDetails.get(i).getId() %></div>
                        <input type="hidden" name="ordID" value="<%= orderDetails.get(i).getId() %>" />
                        
                        
                        <div class="col col-2" data-label="Customer Name"><%= orderDetails.get(i).getProd() %></div>
                        <input type="hidden" name="product-name" value="<%= orderDetails.get(i).getProd() %> " />
                        
                        <input type="hidden" name="custome-name" value="<%= orderDetails.get(i).getCustomer() %>" />
                        
                        <div class="col col-3" data-label="Customer Name"><%= orderDetails.get(i).getQt() %></div>
                        <input type="hidden" name="custome-name" value="<%= orderDetails.get(i).getQt() %>" />
                        
                        <div class="col col-4" data-label="products"><%= orderDetails.get(i).getAddress() %></div>
                        <input type="hidden" name="customer-address" value="<%= orderDetails.get(i).getAddress() %>" />
                        
                        <div class="col col-5" data-label="Delivery Type"><%= orderDetails.get(i).getDuname() %></div>
                         <input type="hidden" name="Duname" value="<%= orderDetails.get(i).getDuname() %>" />
                        
                        <div class="col col-6" data-label="Delivery Type"><%= orderDetails.get(i).getStatus() %></div>
                         <input type="hidden" name="status" value="<%= orderDetails.get(i).getStatus() %>" />
                        
                      </li>
            </form>
                      <%}%>
                  </ul>    
            </div>                 
          
    </body>
</html>
