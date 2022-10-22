<%-- 
    Document   : receipt
    Created on : 20 Sep, 2022, 8:38:29 PM
    Author     : SankalpD
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Receipt</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,900;1,400&family=Poppins:wght@500;600;700&family=Roboto&display=swap">
        <link rel="stylesheet" href="styles\receiptStyle.css">

    </head>
    <body>
        
        <%    
            
            System.out.println("page start : ");
            
            String names[]= request.getParameterValues("product-name");
            System.out.println("names : " + String.join(",", names));
            
            String qty[]= request.getParameterValues("product-qty");
            System.out.println("qty : " + String.join(",", qty));
            
            String price[]= request.getParameterValues("product-price");
            System.out.println("price : " + String.join(",", price));
            
            String name= request.getParameter("custome-name");
            System.out.println("name :"+name);
            
            String add= request.getParameter("customer-address");
            System.out.println("add :"+add);
            
            String DType= request.getParameter("type");
            System.out.println("Dtype :"+DType);

            String ottp = request.getParameter("ottp");
            String ordID = request.getParameter("ordID");
            String duname = request.getParameter("Duname");
            String status = request.getParameter("status");
            

            try {
                com.viva.Order_Service service = new com.viva.Order_Service();
                com.viva.Order port = service.getOrderPort();
                 // TODO initialize WS operation arguments here
                java.lang.String orderQT = String.join(",", qty);
                java.lang.String type = DType;
                java.lang.String pID = String.join(",", names);
                java.lang.String otp = ottp;
                java.lang.String cID =name;
                // TODO process result here
                java.lang.Boolean result = port.order(orderQT, type, pID, otp, cID);
                System.out.println("Result = "+result);
            } catch (Exception ex) {
                System.out.println("errrror:"+ ex.getMessage());
            }
            
    %>
        
         <div class="receipt">
            <h1 id="otp-text"><%= ottp%></h1>
            <h4 id="otp-text"> otp to be shared with delivery guy</h4>
            <hr>
            <h3><%= ordID %></h3>
            <hr>
            <h3><%= name %></h3>
            <h3><%= add %></h3>
            <hr>
            <%
                
                try{
                    int count = names.length;
                    int total = 0;
                    for(int i = 0 ; i < count ; i++){
                        total = total + (Integer.parseInt(price[i]) * Integer.parseInt(qty[i]) );
            %>
            <h3><%=names[i]%></h3>
            <h3>price: <%=price[i]%></h3>
            <h3>quantity: <%=qty[i]%></h3>
            <hr>
            <%
                    }
            %>
            <h3>total: <%=total%></h3>
            <%
            
                }
                catch(Exception e){
                    System.out.println("receipt error : " + e.getMessage());
                }
            %>
            <hr>
            <h3>delivery guy: <%= duname %></h3>
            <h3>order type: <%= DType %></h3>
            <h3>order status: <%= status%></h3>
        </div>
            

            <%!

                public String getRandom(){
                    String ottp = "";

                    try {
                        double s = Math.floor((Math.random()*100000));
                        int i =  (int)s;
                        ottp = String.valueOf(i);

                        return ottp;

                    } catch (Exception ex) {
                        System.out.println("errrror:"+ ex.getMessage());
                        return getRandom();
                    }
                }

            %>
            
    
    <%-- start web service invocation --%>
    <%-- end web service invocation --%>
    </body>
</html>
