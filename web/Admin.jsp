
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
        <h1>Admin Login</h1>
        <div align="center">
        <table border="5" >
            <tr>
                <td>
                    <a href="CreateAccount.jsp">New Account</a><br>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="ViewCustomer.jsp">View Customer's</a><br>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="ViewStatement.jsp">View Statement</a><br>
        
                </td>
            </tr>
            <tr>
                <td>
                    <a href="Deposite.jsp">Deposite</a><br>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="Withdraw.jsp">Withdraw</a><br>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="Transaction.jsp"> View Transaction</a><br>
                </td>
            </tr>
        </table>
        </div>
        
        
        
        
        
    </body>
</html>

