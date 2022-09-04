<%-- 
    Document   : adminDash
    Created on : 28 Aug, 2022, 10:11:15 PM
    Author     : SankalpD
--%>

<%@page import="java.io.*"%>
<%@page import="java.lang.*"%>
<%@page import="com.viva.model.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/adminDash.css">
        <link rel="stylesheet" href="styles/snackbarStyle.css">
        <link rel="stylesheet" href="styles/topnav.css">
          <title>Admin dashboard</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
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
        
         <div class="banner">
            <h1>Admin Dashboard</h1>
        </div>
        <div><button id="add">Add product</button></div>
        <div><button id="orders">Orders</button></div>
        
        <div id="myModal" class="modal">
            <div class="modal-content">
                <h1>add product</h1>
            <span id="close">&times;</span>
            <form action="" method="post" onsubmit="return false" >
                <input type="text" placeholder="Product Name" name="P_NAME" required><br>
                <input type="text" placeholder="Description" name="P_DES" required><br>
                <input type="text" placeholder="Price" name="P_PRICE" required><br>
                <input type="text" placeholder="Stock" name="P_STOCK" required><br>
                <input type="file" name="P_ICON" required><br>
                <input type="submit" value="Add product">
            </form>
            </div>
        </div>
         <script>
            
        </script>
    <% 
        try{
        String p2= request.getParameter("P_NAME");
        String p3= request.getParameter("P_DES");
        int p4= Integer.parseInt(request.getParameter("P_PRICE"));
        int p5= Integer.parseInt(request.getParameter("P_STOCK"));
        //String p6= request.getParameter("P_ICON");
        //Part filePart = request.getPart("P_ICON");
        //String fileName = filePart.getSubmittedFileName();

        String p6= request.getParameter("P_ICON");
        System.out.println("image path "+ p6);
        
        if(p2 != null ){
            Boolean P= PRODUCT(p2,p3,p4,p5,p6);
            if(P){
              %>
              <script type="text/javascript">
                  //myFunction("Product added successfully!");
                  </script>
                <h3> Product added successfully!</h3>      
             <%  
            }
            else{
            %>
              <script type="text/javascript">
                  //myFunction("Product not added successfully.. please try again.");
                  </script>
                <h3> Product not added successfully.. please try again.</h3>      
             <%
            }
        }
        
        }catch (Exception ex){
            System.out.println("error "+ ex.getLocalizedMessage());
        }

    %>
    <!-- The actual snackbar -->
<div id="snackbar">Some text some message..</div>


    <%!
        public Boolean PRODUCT(String pName,String pDesc,int pPrice,int pStock, String pImg){
            try {

                com.viva.Product_Service service = new com.viva.Product_Service();
                com.viva.Product port = service.getProductPort();
                return port.addProduct(pName, pDesc, pPrice, pStock, pImg);

            } catch (Exception ex) {
                System.out.println("error"+ ex.getMessage());
                return false;
            }
        }
    %>

    </body>
</html>
