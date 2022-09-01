package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<html>\n");
      out.write("  \n");
      out.write("    <style>\n");
      out.write("        * {\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("            box-sizing: border-box;\n");
      out.write("        }\n");
      out.write("        body {\n");
      out.write("            font-family: sans-serif;\n");
      out.write("            background: #f5e0c6 ;\n");
      out.write("        }\n");
      out.write("        h1 {\n");
      out.write("            font-size: 40px;\n");
      out.write("            text-align: center;\n");
      out.write("            text-transform: uppercase;\n");
      out.write("            margin-bottom: 10px;\n");
      out.write("            margin-top: 40px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("    <body bgcolor=\"YELLOW\">\n");
      out.write("        <h1>Login page</h1>\n");
      out.write("        <div align=\"center\">\n");
      out.write("        <table border='5'>\n");
      out.write("        <form action=\"Check.jsp\" method=\"post\">\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"3\">Select Role<select name=\"role\">\n");
      out.write("                           \n");
      out.write("                <option>Admin</option>\n");
      out.write("                <option>Customer</option>\n");
      out.write("                \n");
      out.write("            </select></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Enter Account Number</td><td colspan=\"2\"><input type=\"text\" name=\"accountno\"><br></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Enter Password</td><td colspan=\"2\"> <input type=\"text\" name=\"password\"><br></td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("             ");

                    StringBuffer sb = new StringBuffer();
                    for (int i = 1; i <= 5; i++) {
                        sb.append((char) (int) (Math.random() * 79 + 23 + 7));
                    }
                    String cap = new String(sb);
                    session.setAttribute("cap_passed", cap);
                
      out.write("      \n");
      out.write("                <tr>  \n");
      out.write("                    <td>\n");
      out.write("                        Enter Captcha\n");
      out.write("                        <div style=\"background-color: white\"><h2><s><i><font face=\"TIMES NEW ROMAN\">");
      out.print(cap);
      out.write("</font></i></s></h2></div>  \n");
      out.write("                    </td>  \n");
      out.write("                    <td><input type=\"text\" name=\"cap1\" value=\"\" /></td>  \n");
      out.write("<!--                    <td><input type=\"hidden\" name=\"cap2\" value='");
      out.print(cap);
      out.write("' readonly=\"readonly\" </td>  -->\n");
      out.write("                </tr>\n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"submit\" name=\"b1\" value=\"Login\">\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"reset\" name=\"b2\" value=\"RESET\">\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"ForgetPassword.jsp\">Forget Password </a>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("        </table>\n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
