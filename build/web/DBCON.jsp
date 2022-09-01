
<%@page import="java.sql.*"%>
<html>
   
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: sans-serif;
            background: #f5e0c6 ;
        }
        h1 {
            font-size: 40px;
            text-align: center;
            text-transform: uppercase;
            margin-bottom: 10px;
            margin-top: 40px;
        }
    </style>
    
    <body>
        <%!Connection con;%>
        <% 
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                String connectionURL="jdbc:mysql://localhost:3306/soprabanking";
                String dbuser="root";
                String dbpass="root";
                con=DriverManager.getConnection(connectionURL, dbuser, dbpass);
                
                out.println("Connected ....");
            }
            catch(Exception e)
            {
                out.println("Connnection Failed "+e);
            }
            
        
        %>
    </body>
</html>
