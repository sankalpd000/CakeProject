<%-- 
    Document   : adminDash
    Created on : 28 Aug, 2022, 10:11:15 PM
    Author     : SankalpD
--%>

<%@page import="com.viva.model.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/adminDash.css">
          <title>Admin dashboard</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
       <%
        Admin admin = (Admin) request.getAttribute("admin") ;
        if(admin != null){
            System.out.println("Welcome " + admin.getMail());
        }else{
            System.out.println("Admin is not logged in.");
        }
        %>
         <div class="adminDash">
            <h1>Admin Dashboard</h1>
        </div>
        <div><button id="add">Add product</button></div>
        <div><button id="orders">Orders</button></div>
        
        <div id="myModal" class="modal">
            <div class="modal-content">
                <h1>add product</h1>
            <span class="close">&times;</span>
            <form>
                <input type="text" placeholder="Product ID" name="P_ID" required><br>
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
            var modal = document.getElementById("myModal");
            var btn = document.getElementById("add");
            var span = document.getElementsByClassName("close")[0];
            btn.onclick = function() {
            modal.style.display = "block";
            };
            span.onclick = function() {
         modal.style.display = "none";
            };
            window.onclick = function(event) {
            if (event.target === modal) {
             modal.style.display = "none";
            }
        };
        </script>
    </body>
</html>
