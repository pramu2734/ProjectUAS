package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Product</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"config/product.css\" media=\"screen\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("            <h1>Daftar Product</h1>\n");
      out.write("            <div class=\"list-produk\">\n");
      out.write("        <img src=\"image/A30.png\" alt=\"Samsung Galaxy A30\">\n");
      out.write("            <h4>Samsung Galaxy A30</h4>\n");
      out.write("            <h5>Rp 3.000.000,-</h5>\n");
      out.write(" <nav>\n");
      out.write("            <ul>\n");
      out.write("        <li><a href=\"pemesanan.jsp\">Pesan</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("        <div class=\"list-produk\">\n");
      out.write("            <img src=\"image/A50.png\" alt=\"Samsung Galaxy A50\">\n");
      out.write(" \n");
      out.write("            <h4>Samsung Galaxy A50</h4>\n");
      out.write("            <h5>Rp 3.700.000,-</h5>\n");
      out.write("<nav>\n");
      out.write("            <ul>\n");
      out.write("        <li><a href=\"pemesanan.jsp\">Pesan</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    </div>\n");
      out.write(" \n");
      out.write("        <div class=\"list-produk\">\n");
      out.write("            <img src=\"image/A50S.png\" alt=\"Samsung Galaxy A50S\">\n");
      out.write(" \n");
      out.write("            <h4>Samsung Galaxy A50S</h4>\n");
      out.write("            <h5>Rp 4.500.000,-</h5>\n");
      out.write("<nav>\n");
      out.write("            <ul>\n");
      out.write("        <li><a href=\"pemesanan.jsp\">Pesan</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    </div>\n");
      out.write(" \n");
      out.write("        <div class=\"list-produk\">\n");
      out.write("            <img src=\"image/A70.png\" alt=\"Samsung Galaxy A70\">\n");
      out.write(" \n");
      out.write("            <h4>Samsung Galaxy A70</h4>\n");
      out.write("            <h5>Rp 5.700.000,-</h5>\n");
      out.write("<nav>\n");
      out.write("            <ul>\n");
      out.write("        <li><a href=\"pemesanan.jsp\">Pesan</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("           <div class=\"list-produk\">\n");
      out.write("            <img src=\"image/A80.png\" alt=\"Samsung Galaxy A80\">\n");
      out.write(" \n");
      out.write("            <h4>Samsung Galaxy A80</h4>\n");
      out.write("            <h5>Rp 9.400.000,-</h5>\n");
      out.write("<nav>\n");
      out.write("            <ul>\n");
      out.write("        <li><a href=\"pemesanan.jsp\">Pesan</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    <div class=\"list-produk\">\n");
      out.write("        <img src=\"image/M20.png\" alt=\"Samsung Galaxy M20\">\n");
      out.write("            <h4>Samsung Galaxy M20</h4>\n");
      out.write("            <h5>Rp 1.700.000,-</h5>\n");
      out.write(" <nav>\n");
      out.write("            <ul>\n");
      out.write("        <li><a href=\"pemesanan.jsp\">Pesan</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    </div>\n");
      out.write("        <div class=\"list-produk\">\n");
      out.write("        <img src=\"image/M30.png\" alt=\"Samsung Galaxy M30\">\n");
      out.write("            <h4>Samsung Galaxy M30</h4>\n");
      out.write("            <h5>Rp 3.500.000,-</h5>\n");
      out.write(" <nav>\n");
      out.write("            <ul>\n");
      out.write("        <li><a href=\"pemesanan.jsp\">Pesan</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    </div>\n");
      out.write("        <div class=\"list-produk\">\n");
      out.write("        <img src=\"image/M30s.png\" alt=\"Samsung Galaxy M30S\">\n");
      out.write("            <h4>Samsung Galaxy M30S</h4>\n");
      out.write("            <h5>Rp 3.900.000,-</h5>\n");
      out.write(" <nav>\n");
      out.write("            <ul>\n");
      out.write("        <li><a href=\"pemesanan.jsp\">Pesan</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    </div>\n");
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
