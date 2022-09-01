

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
        <h1>Fund Transfer DBMS</h1>
        
        
        <%
                String accountfrom =(String)session.getAttribute("accountno");
            
                //String accountfrom=request.getParameter("accountfrom");
                String accountto=request.getParameter("accountto");
                String transdate=request.getParameter("date");
                String transId=request.getParameter("transID");
                String transamount=request.getParameter("amount");
                
                /*
                out.println(accountfrom);
                out.println(accountto);
                out.println(transdate);
                out.println(transId);
                out.println(transamount);
                */
                try 
                {
                String viewqiery ="select * from "+accountfrom;
                Statement stmt = con.createStatement();
                ResultSet rs=stmt.executeQuery(viewqiery);
                
                int lastbal=0;
                while(rs.next())
                {
                    lastbal=rs.getInt(7);
                }
                
                String cashdepquery="insert into "+accountfrom+" values(?,?,?,?,?,?,?)";
                
                PreparedStatement pst= con.prepareStatement(cashdepquery);
                
                pst.setString(1, accountfrom);
                pst.setString(2, accountto);
                pst.setString(3, transdate);
                pst.setString(4, transId);
                pst.setInt(5, 0);
                pst.setInt(6, Integer.parseInt(transamount));
                pst.setInt(7,  (lastbal-Integer.parseInt(transamount)));
                
                pst.executeUpdate();
                out.println("Transaction done..fund transfer from  "+accountfrom+" Successfully ");
                
                //--------------------------------------------------------------------------------
                  
                String viewqierycustomer ="select * from "+accountto;
                Statement stmt2 = con.createStatement();
                ResultSet rs2=stmt2.executeQuery(viewqierycustomer);
                
                int lastbalcust=0;
                while(rs2.next())
                {
                    lastbalcust=rs2.getInt(7);
                }
                
                String cashdepqueryincustomer="insert into "+accountto+" values(?,?,?,?,?,?,?)";
                
                PreparedStatement pst2= con.prepareStatement(cashdepqueryincustomer);
                
                pst2.setString(1, accountto);
                pst2.setString(2, accountfrom);
                pst2.setString(3, transdate);
                pst2.setString(4, transId);
                pst2.setInt(5, Integer.parseInt(transamount));
                pst2.setInt(6, 0);
                pst2.setInt(7,  lastbalcust+Integer.parseInt(transamount));
                
                pst2.executeUpdate();
                    
                    out.println("Fund Transfer sucressful to "+accountto+" done");
                }
                catch (Exception e)
                {
                    out.println("Transection Failed "+e);
                }
        
        %>
    </body>
</html>
