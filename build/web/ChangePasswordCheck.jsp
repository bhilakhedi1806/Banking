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
        <h1>change password check page</h1>
        Dear : 
        <%
            out.println(session.getAttribute("loginname"));
            out.println("             "+session.getAttribute("accountno"));
        
        %>
        <%
            
        
            String s1oldpass=request.getParameter("oldpass");
            String s1newpass=request.getParameter("newpass");
            String s1cnpass=request.getParameter("cnpass");
            
//            out.println(s1oldpass);
//            out.println(s1newpass);
//            out.println(s1cnpass);
            try
            {
                if(s1newpass.equals(s1cnpass))
                {
                    if(session.getAttribute("loginpassword").equals(s1oldpass))
                    {
                        try
                        {
                            String updatepassquery="update account set password='"+s1newpass+"' where accno='"+session.getAttribute("accountno")+"'";
                            PreparedStatement pst=con.prepareStatement(updatepassquery);
                            
                            pst.executeUpdate();
                            out.println("Dear "+session.getAttribute("loginname")+" Password changed ....<br>");
                            
                            session.invalidate(); // to destroy sesssion 
                            
                            response.setHeader("Cache-Control", "no-store");
                            response.setHeader("Pragma", "no-cache");
                            response.setHeader("Expires", "0");// prevent caching at proxy server
                            out.println("<a href=Login.jsp>Login Again</a>");
                                    
                        }
                        catch(Exception ee)
                        {
                            out.println("<br> Password not change"+ee);
                        }
                    }
                    else
                    {
                        out.println("<br> old Password & Confirm Password Not Match");
                    }
                }
                else
                {
                    out.println("<br> New Password & Confirm Password Not Match");
                }
                
            }
            catch(Exception e)
            {
                out.println(" "+e);
            }
        
        %>
    </body>
</html>