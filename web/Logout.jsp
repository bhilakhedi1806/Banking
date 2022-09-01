
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
    </style></html>
    <body>
        <h1>Log out Page</h1>
        <%
             session.invalidate(); // to destroy sesssion 
                            
                            response.setHeader("Cache-Control", "no-store");
                            response.setHeader("Pragma", "no-cache");
                            response.setHeader("Expires", "0");
            
        %>
        <a href=Login.jsp>Login Again</a>
                                    
    </body>
</html>
