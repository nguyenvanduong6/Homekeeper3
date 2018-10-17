package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSetMetaData;
import java.sql.DriverManager;

public final class Nhanvien_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\t<html lang=\"en\">\n");
      out.write("\t<head>\n");
      out.write("\t  <!-- khai báo các thư viện-->\n");
      out.write("\t  <title>Nhân Viên</title>\n");
      out.write("\t  \n");
      out.write("          <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\t  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("\t  <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css\">\n");
      out.write("\t  <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("\t  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js\"></script>\n");
      out.write("\t  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("\t  <script type=\"text/javascript\" src=\"validation.js\"></script>\n");
      out.write("\t</head>\n");
      out.write("\t<body id=\"myPage\">\n");
      out.write("\t<!-- danh mục-->\n");
      out.write("\t <nav class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t\t<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t</button>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav navbar-left\">\n");
      out.write("\t\t\t\t\t<h1 class=\"company\">HouseKeeper Service</h1>\n");
      out.write("\t\t\t\t\t<li><a href=\"index.jsp\">TRANG CHỦ</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"Nhanvien.jsp\">DANH SÁCH NHÂN VIÊN</a></li>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t\t<div class=\"navbar-right navbar-log text-center\">\n");
      out.write("\t\t\t\t\t<a href=\"Trangcanhan.jsp\"><button class=\"btn btn-primary\"><span class=\"glyphicon glyphicon-folder-open\"></span>  Hồ sơ của bạn</button></a> \n");
      out.write("\t\t\t\t\t<a href=\"index.jsp\"><button class=\"btn btn-primary\"><span class=\"glyphicon glyphicon-log-out\"></span> Đăng Xuất</button></a> \n");
      out.write("\t\t\t\t</div>\t\t\n");
      out.write("\t\t\t</div>\t\n");
      out.write("\t\t</div>\n");
      out.write("\t </nav>\n");
      out.write("\t <br><br><br>\n");
      out.write(" <!-- container-fluid ( Section) -->\n");
      out.write("            <div class=\"text-center\">\t\t\t\n");
      out.write("\n");
      out.write("\t\t<h2 class=\"title\">Danh Sách Nhân Viên</h2>\t\t\t\t\n");
      out.write("\n");
      out.write("                    <div class=\"khoangcach\"><br></div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("\t");
 Connection con=null;
        PreparedStatement preStmt=null;
        ResultSet rs=null;

        String username="sa";
        String password="123456";
        String url="jdbc:sqlserver://localhost:1433;databaseName=housekeeper";
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con=DriverManager.getConnection(url,username,password);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        String sql="select * from nhanvien ";
        preStmt=con.prepareStatement(sql);
        rs=preStmt.executeQuery();
        if(rs!=null){
            ResultSetMetaData meta=rs.getMetaData();

            while(rs.next()){
                out.println("<tr>"); 
      out.write(" \n");
      out.write(" \n");
      out.write("                 <div class=\"col-sm-4 col-xs-12\">\n");
      out.write("\t\t\t<div class=\"panel panel-default\">\n");
      out.write("\t\t\t\t<div class=\"panel-heading\">\n");
      out.write("\t\t\t\t\t<h1 class=\"title\">");
      out.print(rs.getString(3));
      out.write("</h1>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t<img class=\"img-responsive\" src=\"image/3.jpg\" alt=\"Nhan vien\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t<div class=\"panel-footer\">\n");
      out.write("\t\t\t\t\t\t<h3>");
      out.print(rs.getString(2));
      out.write("</h3>\n");
      out.write("\t\t\t\t\t\t<p>");
      out.print(rs.getString(5));
      out.write(" kinh nghiệm</p>\n");
      out.write("\t\t\t\t\t\t<p>");
      out.print(rs.getString(4));
      out.write("đ</p>\n");
      out.write("                                               \n");
      out.write("\t\t\t\t\t\t<a href=\"Kihopdong.jsp\"><button class=\"btn btn-lg\">Xem chi tiết</button></a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("        ");

            }
        }rs.close();
        preStmt.close();
        con.close();
            
      out.write("\n");
      out.write("\t<br><br><br>\n");
      out.write("<!-- Fooder Contact -->\n");
      out.write("\t<div id=\"contact\" class=\"container-fluid\">\n");
      out.write("\t\t<div class=\"text-center\">\n");
      out.write("\t\t\t<a href=\"#myPage\" title=\"To Top\">\n");
      out.write("\t\t\t\t<span class=\"glyphicon glyphicon-chevron-up\"></span>\n");
      out.write("\t\t\t</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<h2 class=\"text-center content\">LIÊN HỆ</h2>\n");
      out.write("\t\t<h3 class=\"text-center content\">Hãy liên hệ với chúng tôi, chúng tôi sẽ trả lời trong vòng 24 giờ .</h3>\n");
      out.write("\t\t<div class=\"row slideanim\">\n");
      out.write("\t\t\t<div class=\"col-sm-2\" ></div>\t\n");
      out.write("\t\t\t<div class=\"col-sm-5\">\n");
      out.write("\t\t\t\t<p class=\"contact_inf\"><span class=\"glyphicon glyphicon-map-marker logo2\"></span> Số 111, Đồng Kè, Q.Liên Chiểu, Đà Nẵng, Việt Nam.</p>\n");
      out.write("\t\t\t\t<p class=\"contact_inf\"><span class=\"glyphicon glyphicon-phone logo2\"></span> 01674 940 492</p>\n");
      out.write("\t\t\t\t<p class=\"contact_inf\"><span class=\"glyphicon glyphicon-envelope logo2\"></span> housekeeper@gmail.com</p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-sm-5\"> \n");
      out.write("\t\t\t\t<p class=\"contact_inf\"><span  class=\"logo2\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></span><a href=\"https://www.facebook.com/LeeMinHao97\"> Facebook (Lê Minh Hào)</a></p>\n");
      out.write("\t\t\t\t<p class=\"contact_inf\"><span  class=\"logo2\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i></span><a href=\"https://www.facebook.com/nhok.iu.90\"> Google+ (Trần Thị Thanh Tiền)</a></p>\n");
      out.write("\t\t\t\t<p class=\"contact_inf\"><span  class=\"logo2\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></span><a href=\"https://www.facebook.com/profile.php?id=100007012037768\"> Twitter (Nguyễn Văn Dương)</a></p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<h5 class=\"text-center\">Copyright @ Trung tâm môi giới việc Làm Housekeeper</h5>\n");
      out.write("\t</div>\n");
      out.write("\t</body>\n");
      out.write("\t</html>");
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
