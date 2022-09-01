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
        <%
//            String accno = request.getParameter("accno");
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String dob = request.getParameter("DOB");
            String address = request.getParameter("address");
            String mob = request.getParameter("contactno");
            String password = request.getParameter("password");
            String sques = request.getParameter("sques");
            String answer = request.getParameter("answer");          



           try {
//                out.println(accno);
                int accInt = 0;
                String viewquery = "select * from account";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(viewquery);
                
                while(rs.next()) {
                    String accno = rs.getString(1).substring(1);
                    accInt = Integer.parseInt(accno);
                }
                accInt += 1;
                String accnofinal = "C" + accInt;
                
                String newaccountinsert = "insert into account values(?,?,?,?,?,?,?,?,?,?);";
                PreparedStatement pst = con.prepareStatement(newaccountinsert);
                pst.setString(1, accnofinal);
                pst.setString(2, name);
                pst.setString(3, gender);
                pst.setString(4, dob);
                pst.setString(5, address);
                pst.setString(6, mob);
                pst.setString(7, "Customer");
                pst.setString(8, password);
                pst.setString(9, sques);
                pst.setString(10, answer);
                
                pst.executeUpdate();
                out.println("<h1>Account created successfully</h1><br>");
                
                
                String customeraccount = "create table " + accnofinal + " (accountno varchar(20), ref varchar(20), dotrans varchar(20), transid varchar(20), depamount int, wdrwamount int, netbal int);";
                PreparedStatement pst2 = con.prepareStatement(customeraccount);
                pst2.executeUpdate();
                
                out.println("<h1>Customer table also created</h1>");
            } catch(Exception e) {
                
                out.println("Account not created." + e);
            }
        %>
    </body>
</html>