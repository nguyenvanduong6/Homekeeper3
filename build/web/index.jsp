<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSetMetaData"%>
<!DOCTYPE html>
	<html lang="vi">
	<head>
	  <title>HouseKeeper Service</title>
          <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	  <!-- Khai báo các thư viện css-->
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	   <!-- Nhúng style.css do ta tạo vào trang web --> 
	  <link rel="stylesheet" type="text/css" href="style.css">
	  <!-- Khai báo các thư viện js--> 
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	  <!-- Nhúng validation.js do ta tạo vào trang web --> 
	  <script type="text/javascript" src="validation.js"></script>
           
	</head>
	<body id="myPage">
	<!-- Menu-->
	 <nav class="navbar navbar-default navbar-fixed-top">
		<h1 class="company">HouseKeeper Service</h1>
			
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-left">
					<li><a href="index.jsp">TRANG CHỦ</a></li>
					<li><a href="Nhanvien.jsp">DANH SÁCH NHÂN VIÊN</a></li>
					
				</ul>
				<div class="navbar-box navbar-right navbar-log text-center">
					<button class="formlogin btn btn-primary"><span class="glyphicon glyphicon-log-in"></span>  Đăng Nhập</button>
					<button class="formreg btn btn-primary" ><span class="glyphicon glyphicon-user"></span> Đăng Ký</button>
				</div>		
			</div>	
	 </nav>
	 <!--Form đăng nhập-->
		<div id="id01" class="modal">
			<br><br><br>
		  <form action="index.jsp" name="Login" class="modal-content animate" method="post">
			<div class="modal-header">
			  <span class="close" title="Close">&times;</span>
			  <p><strong style="font-size:20px">Đăng nhập hệ thống</strong></p>
			</div>
			<div class="modal-body">
			<!-- Nơi display thông báo lỗi -->
			  <div>
			  	<p id="announce"></p>
			  </div>

			  <p><b>Tên đăng nhập:</b></p>
			  <input id="username_login" type="text" placeholder="Nhập tên đăng nhập" name="username" required><br>

			  <p><b>Mật khẩu:</b></p>
			  <input id="password_login" type="password" placeholder="Nhập mật khẩu" name="pw-login" required>

			  <div class="text-center">
				  <button class="btn-login" type="submit"><span class="glyphicon glyphicon-log-in"></span>  Đăng Nhập</button>
			  </div>
			</div>
			<div class="modal-footer">
				<div class="text-center">
					<p>Nếu chưa có tài khoản hãy</p>
					<button class="formreg btn-reg" type="submit"><span class="glyphicon glyphicon-user"></span>  Đăng Ký</button>
			  </div>
			</div>
		  </form>
		</div>
		<!--Form đăng ký-->
		<div id="id02" class="modal">
			<br><br><br>
		  <form class="modal-content animate">
			<div class="modal-header">
			  <span class="close" title="Close">&times;</span>
			  <p><strong style="font-size:20px">Đăng ký tài khoản</strong></p>
			</div>
			<div class="modal-body">
				<!-- Nơi display thông báo lỗi -->
			  <div>
			  	<p id="announce1"></p>
			  </div>
			  <input id="username_reg" type="text" placeholder="Chọn tên đăng nhập" name="username-reg" required>
			  <input id="password_reg" type="password" placeholder="Nhập mật khẩu" name="pw-reg" required>
			  <input id="password_cofirm" type="password" placeholder="Nhập lại mật khẩu" name="pw-reg-ago" required>
			  <input class="validation_phone" type="text" placeholder="Nhập số điện thoại" name="phone" required>
			  <input class="validation_email" type="email" placeholder="Nhập vào Email" name="email" required>
			  <div class="text-center">
				  <button class="btn btn-login" type="submit"><span class="glyphicon glyphicon-user"></span>  Đăng Ký</button>
			  </div>
			</div>
			<div class="modal-footer">
				<div class="text-center">
					<p>Nếu đã có tài khoản!</p>
					<button  class="formlogin btn btn-reg" type="submit"><span class="glyphicon glyphicon-log-in"></span>  Đăng Nhập</button>
			  </div>
			</div>
		  </form>
		</div>
	 <!--Header-->
	<div class="container-fluid text-right">
		<form class="form-inline">
			<input class="btn_search input-text form-control" type="text" placeholder="Search" aria-label="Search" required>
			<button class="btn btn-danger btn_search" type="submit"><span class="glyphicon glyphicon-search"></span> Search</button>
		</form>
	</div>
		
		<br>
		<br>
	<!-- container-fluid ( Section) -->
	<div class="container-fluid text-center">
	<h2 class="title">DANH MỤC NHÂN VIÊN NỔI BẬT</h2>
	<div class="khoangcach"><br></div>
	<div class="row slideanim">
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
        String sql="select * from nhanvien where kinhNghiem > '4' ";
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
	<a href="Nhanvien.jsp"><button class="btn btn-all">Xem tất cả nhân viên</button></a>
	</div>
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