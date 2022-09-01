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
        <%  
        out.println(session.getAttribute("loginname")+"<br>");
        out.println("   "+session.getAttribute("accountno")+"<br><br>");
        %>
        <h1>View Profile !!</h1>
        <div align="center">
        <form action="ViewProfileUpdate.jsp" method="post">
        <select name="choice">
            <option value="name">name</option>
            <option value="add">address</option>
            <option value="mob">mobile</option>
            <option value="sques">security Question</option>
            <option value="sans">security Answer</option>
        </select>
        
            <input type="text" name="text1"><br>
        <input type="submit" name="b1" value="Update">
    </form>
        </div>
    </body>
</html>