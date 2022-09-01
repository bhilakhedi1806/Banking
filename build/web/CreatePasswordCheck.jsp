
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
        <h1>Create Password Check </h1>
        <%
            
        
           
            String s1newpass=request.getParameter("newpass");
            String s1cnpass=request.getParameter("cnpass");
            
            String loginuid = (String)session.getAttribute("id");
//           
            try
            {
                if(s1newpass.equals(s1cnpass))
                {
                    
                        try
                        {
                            String updatepassquery="update account set password='"+s1newpass+"' where accno='"+loginuid+"'";
                            PreparedStatement pst=con.prepareStatement(updatepassquery);
                            
                            pst.executeUpdate();
                            out.println("Dear "+loginuid+" Password changed ....<br>");
                            out.println("<a href=Login.jsp>Login Again</a>");
                                    
                        }
                        catch(Exception ee)
                        {
                            out.println("<br> Password not change"+ee);
                        }
                    }
                    
                }
                

            catch(Exception e)
            {
                out.println(" "+e);
            }
        
        %>
    </body>
</html>
