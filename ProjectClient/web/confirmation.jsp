<%-- 
    Document   : confirmation
    Created on : 2 Oct, 2022, 7:32:32 PM
    Author     : SankalpD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    String duname= request.getParameter("Duname");
String ordID = request.getParameter("ordID");
String Cust = request.getParameter("cust");
String OTP = request.getParameter("otp");

            
         try{
            String DB_URL = "jdbc:derby://localhost:1527/MainDB";
             String USER = "sank";
             String PASS = "sank123";
             String QUERY = "SELECT ORD_OTP FROM ORD WHERE ORD_ID = '"+ordID+"'";
             String QUERYUPDATE ="UPDATE ORD SET ORD_STATUS = 'complete' WHERE ORD_ID = '"+ordID+"'";
             String QUERYPRODUCT ="SELECT P_ID , ORD_QT FROM SANK.ORD WHERE ORD_ID= '"+ordID+"' and ORD_STATUS='complete'";
             
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection con=DriverManager.getConnection(DB_URL,USER,PASS);
           Statement st=con.createStatement();
           
           ResultSet rs = st.executeQuery(QUERY);
           if (rs.next()){
                if(OTP.equals(rs.getString("ORD_OTP"))){
                st.executeUpdate(QUERYUPDATE);
                System.out.println("otp matched");
                       ResultSet rss = st.executeQuery(QUERYPRODUCT);
                        if(rss.next()){
                       System.out.println("product and id query executed");
                           String product = rss.getString("P_ID");
                           System.out.println("product:"+ product);
                           String[] Products = product.split(",");
                           System.out.println("Products:"+ Products);
                           String quantity = rss.getString("ORD_QT");
                           String[] quantities = quantity.split(",");
                           System.out.println("quantities"+ quantities);
                           for(int i=0; i<= Products.length; i++){

                               String pname = Products[i];
                               System.out.println("pname:"+pname);
                               int qnt = Integer.parseInt(quantities[i]);
                               System.out.println("qnt"+ qnt);
                               
                               PreparedStatement pt =con.prepareStatement("UPDATE PRODUCT SET P_STOCK = P_STOCK + "+-(qnt)+" WHERE P_NAME='"+pname+"'");
                               //String QUERYSTOCK = "UPDATE PRODUCT SET P_STOCK = P_STOCK + "+-(qnt)+" WHERE P_NAME='"+pname+"'";
                               pt.executeUpdate();
                               System.out.println("stock updates");

                            }

                            } else{
                                out.println("error");               
                            }
                
                }
                else{
                out.println("Incorrect");    
                }
            }else{
            System.out.println("no data");
            }
         
           //request.setAttribute("user", duname);
           //request.getRequestDispatcher("History.jsp").forward(request, response);
        
            }catch (Exception e){
            System.out.println("errrror:"+ e.getMessage());
            }
        
        %>