
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
        <h1>ViewCustomer</h1>
        <h6 align="center">
        
        <form action="ViewCustomerDBMS.jsp" method="post">
            <select name="choice">
                <option value="ALL">All</option>
                <option value="ACCOUNTNO">Account Number</option>
            </select>
            <input type="text" name="txt1">
            <input type="submit" name="b1" value="View"> 
        </form>
            </h6>
    </body>
</html>
