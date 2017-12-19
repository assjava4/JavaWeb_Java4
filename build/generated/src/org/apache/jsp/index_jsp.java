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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Trang chủ</title>\n");
      out.write("        <link href=\"css/tooplate_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"tooplate_wrapper\">\n");
      out.write("            <div id=\"tooplate_header\">\n");
      out.write("                <div id=\"site_title\"><h1><a href=\"#\">Floral Design</a></h1></div>\n");
      out.write("            </div> <!-- end of header -->\n");
      out.write("\n");
      out.write("            <div id=\"tooplate_menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"index.html\" class=\"current\">Trang chủ</a></li>\n");
      out.write("                    <li><a href=\"#\">Tin mới</a></li>\n");
      out.write("                    <li><a href=\"#\">Tin xem nhiều</a></li>\n");
      out.write("                    <li><a href=\"#\">Tin ICT</a></li>\n");
      out.write("                    <li><a href=\"#\">Tin mobile</a></li>\n");
      out.write("                    <li><a href=\"#\">Giới thiệu</a></li>\n");
      out.write("                    <li><a href=\"#\">Phản hồi</a></li>\n");
      out.write("                    <li><a href=\"#\">Đăng nhập</a></li>\n");
      out.write("                </ul>    \t\n");
      out.write("            </div> <!-- end of tooplate_menu -->\n");
      out.write("\n");
      out.write("            <div id=\"tooplate_middle\">\n");
      out.write("                Tin tức công nghệ - Thông tin công nghệ\n");
      out.write("            </div> <!-- end of middle -->\n");
      out.write("\n");
      out.write("            <div id=\"tooplate_main\">\n");
      out.write("                <div class=\"col_w300 float_l\">\n");
      out.write("                    <h2>Web Design</h2>\n");
      out.write("                    <div class=\"image_wrapper\">\n");
      out.write("                        <a style=\"display: flex;\" href=\"#\">\n");
      out.write("                            <img src=\"images/tooplate_image_01.jpg\" alt=\"Image 01\" />\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    <p><em>Etiam ut urna ante, ut pulvinar ante. Vivamus a metus quam. A enean non eros nunc. </em></p>\n");
      out.write("                    <p align=\"justify\">Floral Design is  free website template for everyone. You may edit and apply this web template for any purpose. Credit goes to <a rel=\"nofollow\" href=\"http://www.photovaco.com\">Free Photos</a> for photos. Nunc risus tortor, posuere a cursus sit amet.</p>\n");
      out.write("                    <p align=\"justify\">Validate <a href=\"http://validator.w3.org/check?uri=referer\" rel=\"nofollow\"><strong>XHTML</strong></a> and <a href=\"http://jigsaw.w3.org/css-validator/check/referer\" rel=\"nofollow\"><strong>CSS</strong></a>. Praesent at purus quis nulla rhoncus bibendum. Aenean id faucibus mauris. Mauris non ipsum metus. Fusce et enim nunc. Donec non tellus mollis erat ultrices aliquam et sed lacus. Praesent lacinia, <a href=\"#\">neque vel feugiat</a> porta, urna nulla viverra augue, nec tempor urna nunc a urna. Phasellus sapien orci, at varius vel, aliquam molestie neque sit nulla et.</p>\n");
      out.write("                    <a href=\"#\" class=\"more\">Read more</a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col_w600 float_r\">\n");
      out.write("                    <div class=\"content_box\">\n");
      out.write("                        <h2>Floral Design Template</h2>\n");
      out.write("                        <p><em>Lorem ipsum dolor sit amet. Nullam faucibus ipsum ac sapien tincidunt auctor. Nunc risus tortor, posuere a cursus sit amet, vehicula ac est.</em></p>\n");
      out.write("                        <ul class=\"tooplate_list col_w280 float_l\">\n");
      out.write("                            <li><a href=\"#\">Sed nec eros egestas nisl</a></li>\n");
      out.write("                            <li><a href=\"#\">Morbi sed nulla ac est cursus</a></li>\n");
      out.write("                            <li><a href=\"#\">Curabitur ullamcorper nibh</a></li>\n");
      out.write("                            <li><a href=\"#\">Pellentesque adipiscing</a></li>    \n");
      out.write("                        </ul>\n");
      out.write("                        <ul class=\"tooplate_list col_w280 float_r\">\n");
      out.write("                            <li><a href=\"#\">Donec sit amet turpis</a></li>\n");
      out.write("                            <li><a href=\"#\">Morbi vel sem lacus</a></li>\n");
      out.write("                            <li><a href=\"#\">Nam at placerat sapien</a></li>    \n");
      out.write("                            <li><a href=\"#\">Proin id nulla in urna</a></li>                    \n");
      out.write("                        </ul>\n");
      out.write("                        <div class=\"cleaner\"></div>\n");
      out.write("                        <a href=\"#\" class=\"more float_r\">Read more</a>\n");
      out.write("                    </div>\n");
      out.write("                    <h2>New Projects</h2>\n");
      out.write("                    <div class=\"col_w280 float_l\">\n");
      out.write("                        <h5>Nullam ut neque neque</h5>\n");
      out.write("                        <div class=\"image_wrapper\">\n");
      out.write("                            <a style=\"display: flex;\" href=\"#\">\n");
      out.write("                                <img src=\"images/tooplate_image_02.jpg\" alt=\"Image 02\" />\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col_w280 float_r\">\n");
      out.write("                        <h5>Aliquam aliquet sem</h5>\n");
      out.write("                        <div class=\"image_wrapper\">\n");
      out.write("                            <a style=\"display: flex;\" href=\"#\">\n");
      out.write("                                <img src=\"images/tooplate_image_03.jpg\" alt=\"Image 03\" />\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"cleaner h30\"></div>\n");
      out.write("                    <a href=\"#\" class=\"more float_r\">View All</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"cleaner\"></div>\n");
      out.write("            </div> <!-- end of tooplate_main -->\n");
      out.write("        </div> <!-- end of wrapper -->\n");
      out.write("\n");
      out.write("        <div id=\"tooplate_footer_wrapper\">\n");
      out.write("            <div id=\"tooplate_footer\">\n");
      out.write("                Copyright © 2048 <a href=\"#\">Company Name</a>\n");
      out.write("            </div> <!-- end of tooplate_footer -->\n");
      out.write("        </div>\n");
      out.write("\n");
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
