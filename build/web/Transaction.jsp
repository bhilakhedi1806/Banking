
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
        <h1>Transaction</h1>
        <%
            out.println(session.getAttribute("loginname"));
            out.println("             "+session.getAttribute("accountno"));
        
        %>
        
        <h6 align="center">
            
        
            <form action="TransactionDBMS.jsp" method="post">
            <select name="choice">
                <option value="accno">ACCOUNT Number</option>
                <option value="dotrans">Date of Transection</option>
                <option value="transid">Transection ID</option>
                <option value="depamount">Deposite Amount</option>
                <option value="wdrwamount">Withdraw Amount</option>
                <option value="Allt">All</option>
            </select>
            <input type="text" name="txt1">
            <input type="submit" name="b1" value="View"> 
        </form>
            </h6>
    </body>
</html>
