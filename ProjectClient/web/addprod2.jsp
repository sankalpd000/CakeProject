<%-- 
    Document   : addprod2
    Created on : 13 Sep, 2022, 9:54:48 PM
    Author     : SankalpD
--%>
<%@page import="com.viva.model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/topnav.css">
        <link rel="stylesheet" href="styles/styleall.css">
      <link rel="stylesheet" href="styles/formStyle.css">
        <<link rel="stylesheet" href="styles/custLogin.css"/>
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,900;1,400&family=Poppins:wght@500;600;700&family=Roboto&display=swap">
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
    <body>
        <div class="custBanner">
         <h1>add product</h1>
        </div>
         <div>
            
             <form class="form" action="" method="post">
                 <label for="P_NAME">Product name:</label><br>
                <input type="text" id="P_NAME" name="P_NAME" required><br><br>
                <br><br>
                <label for="P_DES">Description:</label><br>
                <input type="text" id="P_DES" name="P_DES" required><br><br>
                <br><br>
                <label for="P_PRICE">Price:</label><br>
                <input type="text" id="P_PRICE" name="P_PRICE" required><br><br>
                <br><br>
                <label for="P_STOCK">Stock:</label><br>
                <input type="text" id="P_STOCK" name="P_STOCK" required><br><br>
                <br><br>
                <label for="P_ICON">Image:</label><br>
                <input type="file" id="P_ICON" name="P_ICON">
                <br><br>
                

                
                
             
                 <%
                    
                try {
                String P_NAME = request.getParameter("P_NAME");
                    String P_DES = request.getParameter("P_DES");
                    String P_PRICE = (request.getParameter("P_PRICE"));
                    String P_STOCK = (request.getParameter("P_STOCK"));
                    String  P_ICON = request.getParameter("P_ICON");          
                    int d3 = Integer.parseInt(P_PRICE);
                    int d4 = Integer.parseInt(P_STOCK);
                    
                    com.viva.Product_Service service = new com.viva.Product_Service();
                    com.viva.Product port = service.getProductPort();
                     // TODO initialize WS operation arguments here
                    java.lang.String pName = P_NAME;
                    java.lang.String pDesc = P_DES;
                    int pPrice = d3;
                    int pStock = d4;
                    java.lang.String pImg = P_ICON;
                    // TODO process result here
                    java.lang.Boolean result = port.addPro(pName, pDesc, pPrice, pStock, pImg);
                   out.println("Result = "+result);
                 out.println("no error");
                } catch (Exception ex) {
                    System.out.println("error "+ ex.getMessage());
                }
                %>
                <br>
                <br>
                <input type="submit" value="Add product">
            </form>
            </div>
    
    
    </body>
</html>
