
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
        Welcome Dear : 
        <%
            out.println(session.getAttribute("loginname"));
            out.println("             "+session.getAttribute("accountno"));
        
        %>
        <h1>Customer login</h1>
        
        <div align="center">
    

    <table border="5">
        <tr>
            <td>
                <a href="ViewProfileDBMS.jsp">View Profile</a><br> 
            </td>
        </tr>
        <tr>
            <td>
                 <a href="ChangePassword.jsp">Change Password</a><br>
            </td>
        </tr>
        <tr>
            <td>
                 <a href="ViewStatement.jsp">View Statement</a><br>
            </td>
        </tr>
        <tr>
            <td>
                 <a href="FundTransfer.jsp">Fund transfer</a><br>
            </td>
        </tr>
                
    </table>
</div>
        
        
        
        
    </body>
</html>
