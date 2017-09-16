<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <%! 
        	Connection connection;
        
        
//         Statement statement;
            Statement stmt;
            
            
            Statement stmt1;
            Statement stmt2;
            Statement stmt3;
            Statement stmt4;
            
            ResultSet rs=null;
            ResultSet rs1=null;
            ResultSet rs2=null;
            ResultSet rs3=null;    
            ResultSet rs4=null;    
            
            %>
        <%
           try
           {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                String url = "jdbc:mysql://localhost/yas";
                connection = DriverManager.getConnection(url, "root", "joju");
//                 statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                
                stmt = connection.createStatement();
                stmt1 = connection.createStatement();
                stmt2 = connection.createStatement();
                stmt3 = connection.createStatement();
                

            } 
           catch (Exception e) 
            {
                response.sendRedirect("ConnectionError.jsp");
            }
 

        %>
    </body>
</html>
