<%@include file="DBCON.jsp" %>
<%@include file="UpdateProfile.jsp" %>
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
        <h1>View Profile Update Page!!</h1>
        
        <%
            
        out.println(session.getAttribute("loginname"));
        out.println("   "+session.getAttribute("accountno"));
          
        try{
            
            String viewquery="";
            String choice=request.getParameter("choice");
            if(choice.equals("name")){
                
                viewquery="Update account set cname='"+request.getParameter("text1")+"' where accno='"+session.getAttribute("accountno")+"';";
            }
            else if(choice.equals("mob")){
                viewquery="Update account set mob='"+request.getParameter("text1")+"' where accno='"+session.getAttribute("accountno")+"';";
            }
            else if(choice.equals("add")){
                viewquery="Update account set address='"+request.getParameter("text1")+"' where accno='"+session.getAttribute("accountno")+"';";
            }
            else if(choice.equals("sques")){
                viewquery="Update account set sques='"+request.getParameter("text1")+"' where accno='"+session.getAttribute("accountno")+"';";
            }
            else if(choice.equals("sans")){
                viewquery="Update account set sans='"+request.getParameter("text1")+"' where accno='"+session.getAttribute("accountno")+"';";
            }
            
            
            PreparedStatement pst=con.prepareStatement(viewquery);
            pst.executeUpdate();
            
            out.println("Updatation Of Record is Successfull....");
        }
        catch(Exception e){
            out.println("View Transaction Failed !!!"+e);
        }
        %>
    </body>
</html>