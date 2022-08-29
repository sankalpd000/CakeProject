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
        <title>JSP Page</title>
    </head>
    <body>
    <h1>log in result</h1><br>
    <%-- start web service invocation --%><hr/>
    <%
        String d1 = request.getParameter("DUname");
        String d2 = request.getParameter("Dname");
        String d3 = request.getParameter("phoneD");
        String d4 = request.getParameter("txtnewDmail");
        String d5 = request.getParameter("txtnewDpass");
        try {
            com.project.Dsignup_Service service = new com.project.Dsignup_Service();
            com.project.Dsignup port = service.getDsignupPort();
            // TODO initialize WS operation arguments here
            java.lang.String duname = d1;
            java.lang.String dname = d2;
            java.lang.String dphn = d3;
            java.lang.String dmail = d4;
            java.lang.String dpass = d5;
            port.dsigup(duname, dname, dphn, dmail, dpass);            
            %>
            
    <h1>succesful !</h1><br>
        <h1>Welcome <%  
            myFunc(d2,out);
            %> 
        </h1><br>
            
    <%            
        } catch (Exception ex) {
            System.out.println("exception " + ex.getMessage());
%>
    
        <h1>error <%  
            myFunc(ex.getMessage(),out);
            %> </h1><br>
   

        <%
        }
    %>
    <%!
        private void myFunc(String Bits, javax.servlet.jsp.JspWriter myOut)
        {  
          try{ myOut.println("<div>"+Bits+"</div>"); } 
          catch(Exception eek) { }
        }
    %>
    </body>
</html>
