package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Login</title>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/csslogin.css.jsp\">\r\n");
      out.write("    </head>\r\n");
      out.write("        <style>\r\n");
      out.write("     body{\r\n");
      out.write("\tfont-family: sans-serif;\r\n");
      out.write("\t\r\n");
      out.write("        }\r\n");
      out.write("        .tulisan_login{\r\n");
      out.write("                text-align: center;\r\n");
      out.write("                text-transform: uppercase;\r\n");
      out.write("        }\r\n");
      out.write("        .kotak_login{\r\n");
      out.write("                width: 350px;\r\n");
      out.write("                background-color: white;\r\n");
      out.write("                margin: 80px auto;\r\n");
      out.write("                padding: 30px 20px;\r\n");
      out.write("                opacity: 0.9;\r\n");
      out.write("                box-shadow: 0px 0px 20px 6px;  \r\n");
      out.write("                border-radius: 10px;\r\n");
      out.write("        }\r\n");
      out.write("        label{\r\n");
      out.write("                font-size: 11pt;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form_login{\r\n");
      out.write("                box-sizing: border-box;\r\n");
      out.write("                width: 100%;\r\n");
      out.write("                padding: 10px;\r\n");
      out.write("                font-size: 11pt;\r\n");
      out.write("                margin-bottom: 20px;\r\n");
      out.write("        }\r\n");
      out.write("        .form_login:hover{\r\n");
      out.write("            background-color: firebrick;\r\n");
      out.write("            outline-style: none; \r\n");
      out.write("        }\r\n");
      out.write("        .form_login:focus{\r\n");
      out.write("            background-color: lightcoral;\r\n");
      out.write("        }\r\n");
      out.write("        .tombol_login{\r\n");
      out.write("                background-color: firebrick;\r\n");
      out.write("                color: white;\r\n");
      out.write("                font-size: 11pt;\r\n");
      out.write("                width: 48%;\r\n");
      out.write("                border: none;\r\n");
      out.write("                border-radius: 10px;\r\n");
      out.write("                padding: 10px 20px;\r\n");
      out.write("                \r\n");
      out.write("              \r\n");
      out.write("        }\r\n");
      out.write("        .tombol_login:hover{\r\n");
      out.write("            background-color: indianred;\r\n");
      out.write("        }\r\n");
      out.write("        a{\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("            color: black;\r\n");
      out.write("            letter-spacing: 3px;\r\n");
      out.write("            font-size: 10pt;\r\n");
      out.write("        }\r\n");
      out.write("        a:hover{\r\n");
      out.write("            color: darkred;\r\n");
      out.write("            text-decoration: underline;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("    <body>\r\n");
      out.write("\t<div class=\"kotak_login\">\r\n");
      out.write("            <p class=\"tulisan_login\">Please enter an Account</p>\r\n");
      out.write("\t\t<form method=\"POST\" action=\"beranda.jsp\">\r\n");
      out.write("\t\t\t<label>Username</label>\r\n");
      out.write("\t\t\t<input type=\"text\" name=\"username\" class=\"form_login\" placeholder=\"Username ...\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<label>Password</label>\r\n");
      out.write("                        <input type=\"password\" name=\"password\" class=\"form_login\" placeholder=\"Password...\">\r\n");
      out.write("\r\n");
      out.write("                        <input type=\"submit\" class=\"tombol_login\" value=\"Login\"/>\r\n");
      out.write("                        <input type=\"reset\" class=\"tombol_login\" value=\"Reset\" />\r\n");
      out.write("\t\t\t<center>\r\n");
      out.write("                            \r\n");
      out.write("                            <a href=\"registreasi.jsp\">Register Here!!</a>\r\n");
      out.write("\t\t\t</center>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
