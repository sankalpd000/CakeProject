<%-- 
    Document   : custReg
    Created on : 17 Aug, 2022, 9:07:00 PM
    Author     : SankalpD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>log in result</h1><br>
    <%-- start web service invocation --%><hr/>
    <%
    String c1 = request.getParameter("CUname");
    String c2 = request.getParameter("Cname");
    String c3 = request.getParameter("CAddress");
    int c4 = Integer.parseInt(request.getParameter("phoneC"));
    String c5 = request.getParameter("txtnewCmail");
    String c6 = request.getParameter("txtnewCpass");
   
    
    try {
	com.project.CustSignUp_Service service = new com.project.CustSignUp_Service();
	com.project.CustSignUp port = service.getCustSignUpPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cUname = c1;
	java.lang.String cName = c2;
	java.lang.String cAddress = c3;
	int cPhn = c4;
	java.lang.String cMail = c5;
	java.lang.String cPass = c6;
	port.signup(cUname, cName, cAddress, cPhn, cMail, cPass);
        %>
        
        <%!
private void myFunc(String Bits, javax.servlet.jsp.JspWriter myOut)
{  
  try{ myOut.println("<div>"+Bits+"</div>"); } 
  catch(Exception eek) { }
}
%>
        
        <h1>succesful !</h1><br>
        <h1>Welcome <%  
            myFunc(c2,out);
            %> </h1><br>
    <%
    } catch (Exception ex) {
	System.out.println("exception " + ex.getMessage());
        %>
        
        <h1>error</h1><br>
    <%
    }
    %>
    <%-- end web service invocation --%><hr/>
    </body>
</html>
