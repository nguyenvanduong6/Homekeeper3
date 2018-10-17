<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
	<html lang="en">
	<head>
	  <!-- khai báo các thư viện-->
	  <title>Nhân Viên</title>
	  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	  <link rel="stylesheet" type="text/css" href="style.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	  <script type="text/javascript" src="validation.js"></script>
	</head>
	<body id="myPage">
	<!-- danh mục-->
	 <nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-left">
					<h1 class="company">HouseKeeper Service</h1>
					<li><a href="index.jsp">TRANG CHỦ</a></li>
					<li><a href="Nhanvien.jsp">DANH SÁCH NHÂN VIÊN</a></li>
					
				</ul>
				<div class="navbar-right navbar-log text-center">
					<a href="Trangcanhan.jsp"><button class="btn btn-primary"><span class="glyphicon glyphicon-folder-open"></span>  Hồ sơ của bạn</button></a> 
					<a href="index.jsp"><button class="btn btn-primary"><span class="glyphicon glyphicon-log-out"></span> Đăng Xuất</button></a> 
				</div>		
			</div>	
		</div>
	 </nav>
	 <br><br><br>
 <!-- container-fluid ( Section) -->
            <div class="text-center">			

		<h2 class="title">Danh Sách Nhân Viên</h2>				

                    <div class="khoangcach"><br></div>
                    <div class="row">
	<% Connection con=null;
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
                out.println("<tr>"); %> 
 
                 <div class="col-sm-4 col-xs-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="title"><%=rs.getString(3)%></h1>
				</div>
				<div class="panel-body">
					<img class="img-responsive" src="image/3.jpg" alt="Nhan vien">
				</div>
				<div>
					<div class="panel-footer">
						<h3><%=rs.getString(2)%></h3>
						<p><%=rs.getString(5)%> kinh nghiệm</p>
						<p><%=rs.getString(4)%>đ</p>
                                               
						<a href="Kihopdong.jsp"><button class="btn btn-lg">Xem chi tiết</button></a>
					</div>
				</div>
			</div>
		</div>
        <%
            }
        }rs.close();
        preStmt.close();
        con.close();
            %>
	<br><br><br>
<!-- Fooder Contact -->
	<div id="contact" class="container-fluid">
		<div class="text-center">
			<a href="#myPage" title="To Top">
				<span class="glyphicon glyphicon-chevron-up"></span>
			</a>
		</div>
		<h2 class="text-center content">LIÊN HỆ</h2>
		<h3 class="text-center content">Hãy liên hệ với chúng tôi, chúng tôi sẽ trả lời trong vòng 24 giờ .</h3>
		<div class="row slideanim">
			<div class="col-sm-2" ></div>	
			<div class="col-sm-5">
				<p class="contact_inf"><span class="glyphicon glyphicon-map-marker logo2"></span> Số 111, Đồng Kè, Q.Liên Chiểu, Đà Nẵng, Việt Nam.</p>
				<p class="contact_inf"><span class="glyphicon glyphicon-phone logo2"></span> 01674 940 492</p>
				<p class="contact_inf"><span class="glyphicon glyphicon-envelope logo2"></span> housekeeper@gmail.com</p>
			</div>
			<div class="col-sm-5"> 
				<p class="contact_inf"><span  class="logo2"><i class="fa fa-facebook" aria-hidden="true"></i></span><a href="https://www.facebook.com/LeeMinHao97"> Facebook (Lê Minh Hào)</a></p>
				<p class="contact_inf"><span  class="logo2"><i class="fa fa-google-plus" aria-hidden="true"></i></span><a href="https://www.facebook.com/nhok.iu.90"> Google+ (Trần Thị Thanh Tiền)</a></p>
				<p class="contact_inf"><span  class="logo2"><i class="fa fa-twitter" aria-hidden="true"></i></span><a href="https://www.facebook.com/profile.php?id=100007012037768"> Twitter (Nguyễn Văn Dương)</a></p>
			</div>
		</div>
		<h5 class="text-center">Copyright @ Trung tâm môi giới việc Làm Housekeeper</h5>
	</div>
	</body>
	</html>