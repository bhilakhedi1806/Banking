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
        <h1>change password page</h1>
        Welcome Dear : 
        <%
            out.println(session.getAttribute("loginname"));
            out.println("             "+session.getAttribute("accountno"));
        
        %>
        <div align="center">
            <table border="5">
                <form action="ChangePasswordCheck.jsp" method="post">
                <tr>
                    <td>
                        Enter Old Password
                    </td>
                    <td>
                        <input type="text" name="oldpass"> <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        Enter New Password
                    </td>
                    <td>
                        <input type="text" name="newpass"> <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        confirm New Password
                    </td>
                    <td>
                        <input type="text" name="cnpass"> <br>
                    </td>
                </tr>
                <tr>
                    <td>
                         <input type="submit" name="b1" value="Change">
                    </td>
                </tr>
              </form>  
            </table>
        
             
            
             
           
        
            </div>
    </body>
</html>