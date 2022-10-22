<%-- 
    Document   : DLogin
    Created on : 2 Sep, 2022, 7:56:22 PM
    Author     : SankalpD
--%>
<%@page import="com.viva.model.DGuy"%>
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
            <h1>Delivery Guy</h1>
        </div>
        <div class="Custform"  autocomplete="on">
            <form >
                <label for="Dmail">Enter Username OR Email:</label><br>
                <input type="input" id="Dmail" name="txtDmail" ><br><br>
                <label for="Dpass">Enter password:</label><br>
                <input type="password" id="Dpass" name="txtDpass" required><br><br>
                
                <%
        
     String s1= request.getParameter("txtDmail");
        String s2= request.getParameter("txtDpass");
    if(s1 != null && s2 != null ){
    DGuy customer= getCust(s1,s2);
    if(customer != null){
        request.setAttribute("user", customer);
        request.getRequestDispatcher("deliveryDash.jsp").forward(request, response);
    }
    else{
    %>
        <h3> email/username/password wrong</h3>      
     <%
    }
   
    } 

    %>
    
    <%! 
        public DGuy getCust(String dUname, String dPass){
    try {
	com.viva.LoginAd_Service service = new com.viva.LoginAd_Service();
	com.viva.LoginAd port = service.getLoginAdPort();
	 // TODO initialize WS operation arguments here
	
	// TODO process result here
	com.viva.model.DGuy result = port.loginDguy(dUname, dPass);
	System.out.println("Result = "+result);
return result;
    } catch (Exception ex) {
	// TODO handle custom exceptions here
System.out.println("error"+ ex.getMessage());
return null;
    }
}
    %>
            
                <input type="submit" value="LogIN"><br><br>
            </form>
            <a href="dReg.jsp">Join as Delivery Guy </a>
        </div>
       
    <%-- start web service invocation --%>
    
    
    <%-- end web service invocation --%>
    </body>
</html>
