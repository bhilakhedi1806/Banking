

<%@include file="DBCON.jsp" %>


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
        <h1>Deposite dbms</h1>
        <%
            String accountno= request.getParameter("accountno");
            String refe= request.getParameter("ref");
            String date= request.getParameter("date");
            String transid= request.getParameter("transID");
            String amount= request.getParameter("amount");
            
           
            /*
            out.println(accountno);
            out.println(refe);
            out.println(date);
            out.println(transid);
            out.println(amount);
            */
            try
            {
                String viewqiery ="select * from transactionbank";
                Statement stmt = con.createStatement();
                ResultSet rs=stmt.executeQuery(viewqiery);
                
                int lastbal=0;
                while(rs.next())
                {
                    lastbal=rs.getInt(7);
                }
                
                String cashdepquery="insert into transactionbank values(?,?,?,?,?,?,?)";
                
                PreparedStatement pst= con.prepareStatement(cashdepquery);
                
                pst.setString(1, accountno);
                pst.setString(2, refe);
                pst.setString(3, date);
                pst.setString(4, transid);
                pst.setInt(5, Integer.parseInt(amount));
                pst.setInt(6, 0);
                pst.setInt(7,  (lastbal+Integer.parseInt(amount)));
                
                pst.executeUpdate();
                out.println("Transaction done..cash deposite");
//                -----------------------------------------------------
                String viewqierycustomer ="select * from "+accountno;
                Statement stmt2 = con.createStatement();
                ResultSet rs2=stmt2.executeQuery(viewqierycustomer);
                
                int lastbalcust=0;
                while(rs2.next())
                {
                    lastbalcust=rs2.getInt(7);
                }
                
                String cashdepqueryincustomer="insert into "+accountno+" values(?,?,?,?,?,?,?)";
                
                PreparedStatement pst2= con.prepareStatement(cashdepqueryincustomer);
                
                pst2.setString(1, accountno);
                pst2.setString(2, refe);
                pst2.setString(3, date);
                pst2.setString(4, transid);
                pst2.setInt(5, Integer.parseInt(amount));
                pst2.setInt(6, 0);
                pst2.setInt(7,  lastbalcust+Integer.parseInt(amount));
                
                pst2.executeUpdate();
                out.println("<br>Transaction done..cash deposite into Customer Account also");
                
            }
            catch(Exception e)
            {
                out.println("Transaction Failed ..........."+e);
            }
            
        
        %>
    </body>
</html>
