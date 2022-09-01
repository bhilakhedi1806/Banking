
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
    <h1>Create Password</h1>
    
    <body>
        <div align="center">
    

    <table border="5">
            <form action="CreatePasswordCheck.jsp" method="post">
        <tr>
            <td>
                 Enter New Password
            </td>
            <td>
                 <input type="text" name="newpass">
            </td>
        </tr>
        <tr>
            <td>
                 confirm New Password
            </td>
            <td>
                 <input type="text" name="cnpass">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                 <input type="submit" name="b1" value="Change">
            </td>
            
        </tr>
      </form>          
    </table>
</div>
      
    </body>
</html>
