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
    </head>
    <body>
        <!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->



    <body>
                <div class="signupBanner">
            <h1>Create new account</h1>
        </div>
        <div class="Signupform" autocomplete="off">
            <form action="custReg.jsp">
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
                
                 <%-- start web service invocation --%><hr/>
    <%
    try {
	com.viva.SignUp_Service service = new com.viva.SignUp_Service();
	com.viva.SignUp port = service.getSignUpPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cUname = "";
	java.lang.String cName = "";
	java.lang.String cAdd = "";
	java.lang.String cPhn = "";
	java.lang.String cMail = "";
	java.lang.String cPass = "";
	// TODO process result here
	boolean result = port.signCust(cUname, cName, cAdd, cPhn, cMail, cPass);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
        <div class="signupBanner">
            <h1>Create new account</h1>
        </div>
        <div class="Signupform" autocomplete="off">
            <form action="custReg.jsp">
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
                <input type="submit" value="Submit">
            </form>
        </div>

    </body>
</html>
