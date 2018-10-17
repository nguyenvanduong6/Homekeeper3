 <!DOCTYPE html>
	<html lang="en">
	<head>
	  <!-- khai báo các thư viện-->
	  <title>Hợp đồng</title>
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
					<a href="index.jsp"><button class="btn btn-primary"><span class="glyphicon glyphicon-log-out"></span> Đăng Xuất</button></a> 
				</div>		
			</div>	
		</div>
	 </nav>
	 <br><br><br>
	 <!--Content-->
	 <div class="container-fluid text-center">
	 	
	 	<br><br>
		<div class="row jumbotron">
			<div class="inf_course">
				<h3 class="title">Thông Tin Nhân Viên</h3>			
			<div class="khoangcach"><br><br></div>
				<div class="col-sm-4">
					<span><strong>Họ Tên:</strong></span>
				</div>
				<div class="col-sm-8 input-group">
                                    <p>Lê Minh A</p>
				</div>
				<div class="khoangcach"><br></div>
				<div class="col-sm-4">
					<span><strong>Công Việc:</strong></span>
				</div>
				<div class="col-sm-8 input-group">
                                    <p>Nguyễn Văn A</p>
				</div>
				<div class="khoangcach"><br></div>
				<div class="col-sm-4">
					<span><strong>Số Năm Kinh Nghiệm:</strong></span>
				</div>
				<div class="col-sm-8 input-group">
                                    <p>4 NĂM</p>
				</div>
				<div class="khoangcach"><br></div>

				<div class="col-sm-4">
					<span><strong>Lương:</strong></span>
				</div>
				<div class="col-sm-8 input-group">
                                    <p>6.000.000đ</p>
				</div>
				<div class="khoangcach"><br></div>

				<div class="col-sm-4">
					<span><strong>Đánh Giá:</strong></span>
				</div>
				<div class="col-sm-8 input-group">
                                    <p>9/10</p>
				</div>
				<br>
                                <button class="formreg btn btn-primary" > Kí Hợp Đồng</button>
				
			</div>
		</div>
	 </div>
		 <div id="id02" class="modal">
                     <br><br><br>
		  <form class="modal-content animate">
			<div class="modal-header">
			 <span class="close" title="Close">&times;</span>
			  <p><strong style="font-size:20px">Chi Tiết Hợp Đồng</strong></p>
			</div>
			  <div>
			  	<p id="announce1"></p>
			  </div>
                      <div class="col-sm-4">
					<span><strong>Nhân Viên:</strong></span>
				</div>
				<div class="col-sm-8 input-group">
                                    <p>Lê Minh A</p>
				</div>
				<div class="khoangcach"><br></div>
                                <div class="col-sm-4">
					<span><strong>Khách Hàng:</strong></span>
				</div>
				<div class="col-sm-8 input-group">
                                    <p>ABCXZY</p>
				</div>
				<div class="khoangcach"><br></div>
                                <div class="col-sm-4">
					<span><strong>Mã hợp Đồng:</strong></span>
				</div>
				<div class="col-sm-8 input-group">
                                    <p>HD01</p>
				</div>
				<div class="khoangcach"><br></div>
                                <div class="col-sm-4">
					<span><strong>Tổng Tiền:</strong></span>
				</div>
				<div class="col-sm-8 input-group">
                                    <p>6.000.000đ</p>
				</div>
				<div class="khoangcach"><br></div>
			</div>
			<div class="modal-footer">
				<div class="text-center">
                                    <br>
			  </div>
			</div>
		  </form>
		</div>
		</div>
	 </div>
	<br>
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