package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<div class=\"box2\" align=\"justify\">\n");
      out.write("    <div class=\"post_title\">HOME WEBSITE</div>\n");
      out.write("    <div class=\"text_area\">\n");
      out.write("        <img src=\"images/artikel/logo-andro.png\" alt=\"Photo One\" title=\"Photo One\" width=\"120\" height=\"90\" class=\"pic\" />\n");
      out.write("        Aplikasi pembelian ini dibuat oleh Unit pengembangan Akademik Program Studi Sistem Informasi Akuntansi.\n");
      out.write("        Aplikasi ini berkaitan dengan mata kuliah Analisa Perancangan Sistem Informasi Akuntansi (APSIA).\n");
      out.write("        Aplikasi ini membahas tentang sistem informasi pembelian yang dimulai dari pengolahan data barang, pengolahan data supplier, proses data pemesanan, proses data pembelian, proses data retur, cetak semua laporan transaksi hingga cetak laporan jurnal umum. \n");
      out.write("    </div>\n");
      out.write("</div>");
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
