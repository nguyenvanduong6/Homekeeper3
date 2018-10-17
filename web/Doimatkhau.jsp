	<!DOCTYPE html>
	<html lang="en">
	<head>
	  <!-- khai báo các thư viện-->
	  <title>Đổi Mật Khẩu</title>
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
					<a href="Trangcanhan.jsp"><button class="btn btn-primary"><span class="glyphicon glyphicon-folder-open"></span> Hồ sơ của bạn</button></a> 
					<a href="trangchu.jsp"><button class="btn btn-primary"><span class="glyphicon glyphicon-log-out"></span> Đăng Xuất</button></a> 
				</div>		
			</div>	
		</div>
	 </nav>
	 <br><br><br>
	 <!-- Content-->
	 <div class="container-fluid">
		<div class="row">
			<div class="col-sm-3">
				<div class="imgAvatar thumbnail">
					<img src="image/man.jpg" width="250" height="250">
				</div>
				<div class="NameAccount">
					Lê Minh Hào
				</div>
				<div class="Menu content">
					<ul class="list-group">
					
					  <li id="list-one" class="list-group-item"><a href="Doimatkhau.html">Đổi mật khẩu</a></li>
					</ul>
				</div>
			</div>
			<div class="inform col-sm-9">
				<div class="titleInfo title">Thay đổi mật khẩu</div>
				<div class="khoangcach"><br><br></div>
				<div>
						<p id="announce1"></p>
				</div>
				<form>
					<div class="col-sm-4">
						<span><strong>Mật khẩu:</strong></span>
					</div>
					<div class="col-sm-8">
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon"><i class="fa fa-lock " aria-hidden="true"></i></span>
							<input type="password" class="password_old form-control content_input" placeholder="Mật khẩu hiện tại" aria-describedby="basic-addon">
						</div>
					</div>
					<div class="khoangcach"><br><br><br></div>

					<div class="col-sm-4">
						<span><strong>Mật khẩu mới:</strong></span>
					</div>
					<div class="col-sm-8">
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1"><i class="fa fa-lock " aria-hidden="true"></i></span>
							<input type="password" class="password_new form-control content_input" placeholder="Mật khẩu mới" aria-describedby="basic-addon1">
						</div>
					</div>					
					<div class="khoangcach"><br><br><br></div>

					<div class="col-sm-4">
						<span><strong>Nhập lại mật khẩu mới:</strong></span>
					</div>
					<div class="col-sm-8">
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon3"><i class="fa fa-lock" aria-hidden="true"></i></span>
							<input type="password" class="password_check form-control content_input" placeholder="Nhập lại mật khẩu mới" aria-describedby="basic-addon3">
						</div>
					</div>
					<br>
					<div class="khoangcach"><br><br></div>

					<div class="col-sm-6 col-xs-6 text-right">
						<button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-ok"></span> Xác nhận</button>
					</div>
					<div class="col-sm-6 col-xs-6 text-center">
						<button class="btn btn-danger" type="reset"><span class="glyphicon glyphicon-remove"></span> Hủy bỏ</button>
					</div><br><br>
				</form>
			</div>
		</div>
	 </div>
	 <!-- Contact-->
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
				<p class="contact_inf"><span class="glyphicon glyphicon-map-marker logo2"></span> Số 459, Tôn Đức Thắng, Q.Liên Chiểu, Đà Nẵng, Việt Nam.</p>
				<p class="contact_inf"><span class="glyphicon glyphicon-phone logo2"></span> 01674940492</p>
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