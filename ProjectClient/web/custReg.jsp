<%-- 
    Document   : custReg
    Created on : 17 Aug, 2022, 9:07:00 PM
    Author     : SankalpD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Customer Log In</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="styles/topnav.css">
      <link rel="stylesheet" href="styles/styleall.css">
      <link rel="stylesheet" href="styles/formStyle.css">
           <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,900;1,400&family=Poppins:wght@500;600;700&family=Roboto&display=swap" rel="stylesheet">
   
    </head>
    <body>
        <!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->



    <body>
        <div class="topnav" align="center">
            <div><a href="index.jsp" class="active" id="home">
                    <img src="images\logo.png" alt="homepage" width="80px" height="30px"></a>
            </div>
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
        <div class="Banner">
            <h1>Create new account</h1>
        </div>
        <div class="form" autocomplete="off">
            <form action="" method="post">
                <label for="CUname">Username:</label><br>
                <input type="text" id="CUname" name="CUname" required>
                <br><br>
                <label for="Cname">Name:</label><br>
                <input type="text" id="Cname" name="Cname" required>
                <br><br>
                <label for="CAddress">Address:</label><br>
                <input type="text" id="CAddress" maxlength="255" name="CAddress" required>
                <br><br>
                <label for="phoneC">Enter your phone number:</label><br>
                <input type="text" id="phoneC" name="phoneC" minlength="10" maxlength="10" required>
                <br><br>
                <label for="newCmail">Enter Email ID:</label><br>
                <input type="email" placeholder="example123@examle.com" id="newCmail" name="txtnewCmail" required><br><br>
                <label for="createCpass">Create password:</label><br>
                <input type="password" id="createCpass" name="txtnewCpass" required>
                <br><br>
                
                 <%-- start web service invocation --%>
    <%
    try {
            String d1 = request.getParameter("CUname");
        String d2 = request.getParameter("Cname");
        String d3 = request.getParameter("CAddress");
        String d4 = request.getParameter("phoneC");
        String d5 = request.getParameter("txtnewCmail");
        String d6 = request.getParameter("txtnewCpass");
	com.viva.SignUp_Service service = new com.viva.SignUp_Service();
	com.viva.SignUp port = service.getSignUpPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cUname = d1;
	java.lang.String cName = d2;
	java.lang.String cAdd = d3;
	java.lang.String cPhn = d4;
	java.lang.String cMail = d5;
	java.lang.String cPass = d6;
	// TODO process result here
	boolean result = port.signCust(cUname, cName, cAdd, cPhn, cMail, cPass);
	System.out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%>
          
                <input type="submit" value="Submit"><br><br>
            </form>
        </div>
        
    </body>
</html>
