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
        <h1>forget password dbms </h1>
        <%
            String s1uid=request.getParameter("user_id");
            String s1ques= request.getParameter("sques");
            String s1ans= request.getParameter("ans");
            
            session.setAttribute("id", s1uid);
            
            out.println(s1uid);
            out.println(s1ques);
            out.println(s1ans);
            
            String matchquery="select * from account where accno='"+s1uid+"'";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(matchquery);
            
            while(rs.next()){
                
                if(s1ques.equals(rs.getString(9)) && s1ans.equals(rs.getString(10)) )
                {
                    out.println("Security quest and ANS matched succesfully ...");
                    response.sendRedirect("CreatePassword.jsp");
                }
                else{
                    out.println("Security quest and ANS  NOT matched succesfully ...");
                }
            }
        %>
    </body>
</html>