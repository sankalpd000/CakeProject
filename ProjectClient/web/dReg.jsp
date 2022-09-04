<%-- 
    Document   : dReg
    Created on : 18 Aug, 2022, 10:00:59 PM
    Author     : SankalpD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="styles/topnav.css">
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
         <div class="signupBanner">
            <h1>Create new account</h1>
        </div>
        <div class="Signupform" autocomplete="off">
            <form action="">
                <label for="DUname">Username:</label><br>
                <input type="text" id="DUname" name="DUname" required>
                <br><br>
                <label for="Dname">Name:</label><br>
                <input type="text" id="Dname" name="Dname" required>
                <br><br>
                <label for="phoneD">Enter your phone number:</label><br>
                <input type="text" id="phoneD" name="phoneD" minlength="10" maxlength="10" required>
                <br><br>
                <label for="newDmail">Enter Email ID:</label><br>
                <input type="email" placeholder="example123@examle.com" id="newDmail" name="txtnewDmail" required><br><br>
                <label for="createDpass">Create password:</label><br>
                <input type="password" id="createDpass" name="txtnewDpass" required>
                <br><br>  
                
                 <%-- start web service invocation --%><hr/>
    <%
    try {
           String d1 = request.getParameter("DUname");
        String d2 = request.getParameter("Dname");
        String d3 = request.getParameter("phoneD");
        String d4 = request.getParameter("txtnewDmail");
        String d5 = request.getParameter("txtnewDpass");
	com.viva.SignUp_Service service = new com.viva.SignUp_Service();
	com.viva.SignUp port = service.getSignUpPort();
	 // TODO initialize WS operation arguments here
	java.lang.String dUname = d1;
	java.lang.String dName = d2;
	java.lang.String dPhn = d3;
	java.lang.String dMail = d4;
	java.lang.String dPass = d5;
	// TODO process result here
	boolean result = port.signDguy(dUname, dName, dPhn, dMail, dPass);
	out.println("Result = "+result);
    } catch (Exception ex) {
	System.out.println("error:" + ex.getMessage());
    }
    %>
    <%-- end web service invocation --%><hr/>
                
                <input type="submit" value="Submit"><br><br>
            </form>
        </div>
   
    </body>
</html>
