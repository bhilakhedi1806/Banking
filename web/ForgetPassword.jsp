
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
        <h1>forget password</h1>
        <div align="center">
        <form action="ForgetPasswordDBMS.jsp" method="post">
            <table border="5">
                <tr>
                    <td>
                        Enter User Id
                    </td>
                    <td>
                        <input type="text" name="user_id"><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        Select Security Question
                    </td>
                    <td>
                        <select name="sques">
                        <option>First Car</option>
                            <option>First Bank</option>
                            <option>First School</option>
                            <option>First Job</option>
                    </td>
                </tr>
                <tr>
                    <td>
                        Enter Answer
                    </td>
                    <td>
                        <input type="text" name="ans"><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="b1" value="Recover">
                    </td>
                    
                </tr>
             
            
            </select><br>
            
            
            </table>
        </form>
            </div>
    </body>
</html>
