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
        <h1>check page</h1>
        <% 
            String role = request.getParameter("role");
            String accountnumber = request.getParameter("accountno");
            String upass = request.getParameter("password");
            String cap1=request.getParameter("cap1");
            String cap=(String)session.getAttribute("cap_passed");
            
            String  loginname="";
            try 
            {
                if (cap1.equals("")) {
                    out.println("Please Enter Captcha");
                } else if (!cap1.equals(cap)) {
                    out.println("Invalid Captcha!! Please try again");
                    RequestDispatcher disp=request.getRequestDispatcher("Login.jsp");
                    disp.include(request, response);
                } else if (cap1.equals(cap)) {
                    
                String viewquery="select * from account";
                Statement stmt= con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                
                int count=0;
                while(rs.next())
                {
                    if(role.equalsIgnoreCase(rs.getString(7)) && accountnumber.equalsIgnoreCase(rs.getString(1)) && upass.equals(rs.getString(8)))
                    {
//                        session.setAttribute("user_id", role);
//                        session.setAttribute("pass_word", upass);
                        
                        count++;
                        loginname=rs.getString(2);
                        break;
                    }
                   
                }    
                if(count>0)
                {
                    session.setAttribute("accountno", accountnumber);
                    session.setAttribute("loginname",loginname);
                    session.setAttribute("loginpassword", upass);
                    
                    if(role.equalsIgnoreCase("ADMIN"))
                    {
                        response.sendRedirect("Admin.jsp");
                    }
                    else
                    {
                        response.sendRedirect("CustomerLogin.jsp");
                    }
                    //out.println("login Su,ccess");
                    //response.sendRedirect("Success.jsp");;
                }
                else 
                {
                    RequestDispatcher disp=request.getRequestDispatcher("Login.jsp");
                    disp.include(request, response);
                    out.println("<br> Invalid Username and password ");
                }
                    
                } 
            }
            catch(Exception e)
            {
                out.println("Invalid Login "+e);
            }
           
        %>
    </body>
</html>