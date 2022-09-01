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
        <h1>Fund Transfer</h1>
        Welcome Dear : 
        <%
            out.println(session.getAttribute("loginname"));
            out.println("             "+session.getAttribute("accountno"));
        
        %>
        <div align="center">
        <form action="FundTransferDBMS.jsp" method="post">
            <table border="2" bgcolor="yellow">
                <a href="FundTransfer.jsp"></a>
                
<!--                <tr>
                    <td>Account From</td>
                    <td><input type="text" name="accountfrom" value=""></td>
                </tr>-->
                <tr>
                    <td>Account To</td>
                    <td><input type="text" name="accountto"></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td><input type="text" name="date" id="datepicker"></td>
                </tr>
                <tr>
                    <td>Transaction ID</td>
                    <td><input type="text" name="transID" value="T<%out.println(dataid);%> " readonly></td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td><input type="text" name="amount"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="b1" value="Transfer Now"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
            </table>
        </form>
        </div>
    </body>
</html>
