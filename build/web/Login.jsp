
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
    
    <body bgcolor="YELLOW">
        <h1>Login page</h1>
        <div align="center">
        <table border='5'>
        <form action="Check.jsp" method="post">
            <tr>
                <td colspan="3">Select Role<select name="role">
                           
                <option>Admin</option>
                <option>Customer</option>
                
            </select></td>
            </tr>
            <tr>
                <td>Enter Account Number</td><td colspan="2"><input type="text" name="accountno"><br></td>
            </tr>
            <tr>
                <td>Enter Password</td><td colspan="2"> <input type="text" name="password"><br></td>
            </tr>
            
             <%
                    StringBuffer sb = new StringBuffer();
                    for (int i = 1; i <= 5; i++) {
                        sb.append((char) (int) (Math.random() * 79 + 23 + 7));
                    }
                    String cap = new String(sb);
                    session.setAttribute("cap_passed", cap);
                %>      
                <tr>  
                    <td>
                        Enter Captcha
                        <div style="background-color: white"><h2><s><i><font face="TIMES NEW ROMAN"><%=cap%></font></i></s></h2></div>  
                    </td>  
                    <td><input type="text" name="cap1" value="" /></td>  
<!--                    <td><input type="hidden" name="cap2" value='<%=cap%>' readonly="readonly" </td>  -->
                </tr>
            
            <tr>
                <td>
                    <input type="submit" name="b1" value="Login">
                </td>
                <td>
                    <input type="reset" name="b2" value="RESET">
                </td>
            </tr>
            <tr>
                <td>
                    <a href="ForgetPassword.jsp">Forget Password </a>
                </td>
            </tr>
            
            
            
            
        </form>
        </table>
            </div>
    </body>
</html>
