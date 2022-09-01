<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
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
    
    <body >
        <h1>create account</h1>
        <div align="center">
        <form action="CreateAccountDBMS.jsp" method="post">
            <table border='5' bgcolor='CYAN' >
<!--                <tr>
                    <td>Account Number</td>
                    <td><input type="text" name="accno"></td>   
                </tr>-->
                <tr>
                    <td>Customer Name</td>
                    <td><input type="text" name="name"></td>   
                </tr>
             
                <tr>
                    <td>Gender</td>
                    <td><select name="gender">
                            <option>Male</option>
                            <option>Female</option>
                    </td>   
                </tr>
                <tr>
                    <td>DOB</td>
                    <td><input type="text" name="DOB" id="datepicker"></td>   
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="Address"></td>   
                </tr>
                <tr>
                    <td>Contact Number</td>
                    <td><input type="text" name="Contactno"></td>   
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="password"></td>
                </tr>
                <tr>
                    <td>Security Question</td>
                    <td><select name="sques">
                            <option>First Car</option>
                            <option>First Bank</option>
                            <option>First School</option>
                            <option>First Job</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Security Ans</td>
                    <td><input type="text" name="sans"></td>
                </tr>
<!--                <tr>
                    <td>Account Type</td>
                    <td><input type="text" name="accounttype"></td>   
                </tr>-->
                <tr>
                    <td><input type="submit" name="b1" value="Create"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>   
                </tr>
                
                
            </table>
        </form>
            </div>
    </body>
</html>
