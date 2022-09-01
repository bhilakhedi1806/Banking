<%@page import="java.util.Random"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<%  Random rand=new Random();
    int dataid=rand.nextInt(1000);

%>
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
    <script type="text/javascript">
        $(function() {
        var date = new Date();
        var currentMonth = date.getMonth();
        var currentDate = date.getDate();
        var currentYear = date.getFullYear();
        $('#datepicker').datepicker({
        maxDate: new Date(currentYear, currentMonth, currentDate)
        });
        });
    </script>
    
    <body>
        <h1>withdwar page </h1>
        <div align="center">
        <form action="WithdrawDBMS.jsp" method="post">
            <table border='5' bgcolor='yellow'>
                <tr>
                    <td>Account Number</td>
                    <td><input type="text" name="accountno"</td>
                </tr>
                <tr>
                    <td>Reference </td>
                    <td><input type="text" name="ref"</td>
                </tr>
                <tr>
                    <td>Date Of Transaction </td>
                    <td><input type="text" name="date" id="datepicker"</td>
                </tr>
                <tr>
                    <td>Transaction Id</td>
                    <td><input type="text" name="transID" value="T<%out.println(dataid);%> " readonly></td>
                </tr>
                
                <tr>
                    <td>Withdraw Amount</td>
                    <td><input type="text" name="amount"</td>
                </tr>
                
                
                <tr>
                    <td><input type="submit" name="b1" value="Create"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>   
                </tr>
            </table>
        </form>
        </div>
    </body>
</html>
