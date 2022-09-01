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
        <h1>View statement dbms</h1>
        <%
            out.println(session.getAttribute("loginname"));
            out.println("             "+session.getAttribute("accountno"));
        
        %>
        <%
            String ac=request.getParameter("txt1");
            
            try
            {
                String viewquery="select * from "+ac;
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
