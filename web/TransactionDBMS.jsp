<%@include file="DBCON.jsp" %>
<%@include file="Transaction.jsp" %>
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
        <h1>Transaction dbms page</h1>
        <%
            out.println(session.getAttribute("loginname"));
            out.println("             "+session.getAttribute("accountno"));
        
        %>
        <%
            String choice=request.getParameter("choice");
            
        
            try
            {
                String viewquery="";
                if(choice.equalsIgnoreCase("accno"))
                {
                    String ac=request.getParameter("txt1");
                    viewquery="select * from transactionbank where accountno='"+ac+"'";
                }
                else if(choice.equalsIgnoreCase("transid"))
                {
                    String tid=request.getParameter("txt1");
                    viewquery="select * from transactionbank where transid='"+tid+"'";
                }
                else if(choice.equalsIgnoreCase("depamount"))
                {
                    String damonut=request.getParameter("txt1");
                    viewquery="select * from transactionbank where depamount='"+damonut+"'";
                }
                else if(choice.equalsIgnoreCase("wdrwamount"))
                {
                    String wamount=request.getParameter("txt1");
                    viewquery="select * from transactionbank where wdrwamount='"+wamount+"'";
                }
                else
                {
                    viewquery="select * from transactionbank";
                }
                
                Statement stmt = con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                
                while(rs.next())
                {
                    out.println(" "+rs.getString(1));
                    out.println(" "+rs.getString(2));
                    out.println(" "+rs.getString(3));
                    out.println(" "+rs.getString(4));
                    out.println(" "+rs.getInt(5));
                    out.println(" "+rs.getInt(6));
                    out.println(" "+rs.getInt(7));
                    
                    out.println("<br> ");
                }
                %>
                 <button onclick="window.print()">Print this Page</button>
                <%
            }
            catch(Exception e)
            {
                out.println("data not found"+e);
            }
        %>
    </body>
</html>
