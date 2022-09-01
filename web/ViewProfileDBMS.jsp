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
        <h1>view profile dbms</h1>
        <%
            out.println(session.getAttribute("loginname"));
            out.println("             "+session.getAttribute("accountno"));
            
            
            try
            {
                String viewquery="select * from account where accno='"+session.getAttribute("accountno")+"'";
                        
                Statement stmt = con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                
                while(rs.next())
                {
                    out.println(" "+rs.getString(1));
                    out.println(" "+rs.getString(2));
                    out.println(" "+rs.getString(3));
                    out.println(" "+rs.getString(4));
                    out.println(" "+rs.getString(5));
                    out.println(" "+rs.getInt(6));
                    out.println(" "+rs.getString(7));
                    out.println(" "+rs.getString(8));
                    out.println(" "+rs.getString(9));
                    out.println(" "+rs.getString(10));
                    out.println("<br> ");
                }
                
            }
            catch(Exception e)
            {
                out.println(" Data not found"+e);
            }
        %>
        <a href="UpdateProfile.jsp" >Edit Profile</a>
    </body>
</html>
