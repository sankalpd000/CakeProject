<%-- 
    Document   : addprod
    Created on : 6 Sep, 2022, 9:13:38 PM
    Author     : SankalpD
--%>

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
            
             <form class="form" action="" method="post" enctype="multipart/form-data" onsubmit="getBase64()" >
                <input type="text" placeholder="Product Name" name="P_NAME" required><br><br>
                <input type="text" placeholder="Description" name="P_DES" required><br><br>
                <input type="text" placeholder="Price" name="P_PRICE" required><br><br>
                <input type="text" placeholder="Stock" name="P_STOCK" required><br><br>
                <input type="file" id="file" name="P_ICON" accept=".png, .jpg, .jpeg" onchange="getBase64()" required><br>
                <input type="hidden" id="imgpath" name="imgpath" value="">
                
                <%--      <%
                    int count = 0;
                    try {
                        String d1 = request.getParameter("P_NAME");
                        System.out.println( "name " + d1);

                        String d2 = request.getParameter("P_DES");
                        System.out.println( "des " + d2);

                        int d3 = Integer.parseInt(request.getParameter("P_PRICE"));
                        System.out.println( "price " + d3);

                        int d4 = Integer.parseInt(request.getParameter("P_STOCK"));
                        System.out.println( "stock " + d4);

                        String d5 = request.getParameter("imgpath");
                        System.out.println( "img " + d5);

                        Part  part = request.getPart("P_ICON");

                        com.viva.Product_Service service = new com.viva.Product_Service();
                        com.viva.Product port = service.getProductPort();
                         // TODO initialize WS operation arguments here
                        java.lang.String pName = d1;
                        java.lang.String pDesc = d2;
                        int pPrice = d3;
                        int pStock = d4;
                        String pImg = part.getSubmittedFileName();
                            // TODO process result here
                        java.lang.Boolean result = port.addProduct(pName, pDesc, pPrice, pStock, pImg);
                        out.println("Result = "+result);
                    } 
                    catch(NumberFormatException ex){
                    count++;

                        System.out.println("error NumberFormatException "+ count +" start "+ ex.getMessage());
                        ex.printStackTrace();
                        System.out.println("error NumberFormatException "+ count +" end "+ ex.getMessage());
                        }
                        catch (Exception ex) {
                        System.out.println("error start "+ ex.getMessage());
                        ex.printStackTrace();
                        System.out.println("error end "+ ex.getMessage());
                    }
                %> --%>
                
                <%-- start web service invocation --%><hr/>
            <%
            String d1 = request.getParameter("P_NAME");
            String d2 = request.getParameter("P_DES");
            int d3 = Integer.parseInt(request.getParameter("P_PRICE"));
            int d4 = Integer.parseInt(request.getParameter("P_STOCK"));
            Part  part = request.getPart("P_ICON");
            
            if(d1 != null && d2 != null ){
                try {
                    com.viva.Product_Service service = new com.viva.Product_Service();
                    com.viva.Product port = service.getProductPort();
                     // TODO initialize WS operation arguments here
                    java.lang.String pName = d1;
                    java.lang.String pDesc = d2;
                    int pPrice = d3;
                    int pStock = d4;
                    java.lang.String pImg = part.getSubmittedFileName();
                    // TODO process result here
                    java.lang.Boolean result = port.addPro(pName, pDesc, pPrice, pStock, pImg);
                    out.println("Result = "+result);
                } catch (Exception ex) {
                    System.out.println("error"+ ex.getMessage());
                }
            }
            %>
    <%-- end web service invocation --%><hr/>
                
                <br>
                <input type="submit" value="Add product">
            </form>
            </div>
    
    
    </body>
</html>
