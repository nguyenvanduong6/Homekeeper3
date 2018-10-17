		
	// FORM LOGIN
	//Kiểm tra tất cả các thẻ đã được load
	$(document).ready(function(){
		// Bắt lỗi không nhập hoặc nhập sai điều kiện cho phép
		// Bắt lỗi cho textbox username(tên đăng nhập)
            $("#username_login").focusout(function(){
            	var username_length= $("#username_login").val().length;
            	if(username_length==0)
            	{
            		$("#announce").css("display","block");
            		$("#announce").html("Tên đăng nhập bị trống, mời nhập lại!");
            		$("#username_login").css("border","solid 1px red");
            	} 
            	else
            	if(username_length <5 || username_length >30) {
            	 	$("#announce").css("display","block");
            		$("#announce").html("Hãy nhập tên đăng nhập từ 5 đến 30 kí tự!");
            		$("#username_login").css("border","solid 1px red");
                }
                else {
            	 	$("#announce").css("display","none");
            	 	$("#username_login").css("border","solid 1px #ccc");
            	}
            });
         // Bắt lỗi cho textbox password(mật khẩu)   	
            $("#password_login").focusout(function(){
            	var password_length= $("#password_login").val().length;
            	if(password_length==0)
            	{
            		$("#announce").css("display","block");
            		$("#announce").html("Hãy nhập mật khẩu!");
            		$("#password_login").css("border","solid 1px red");
            	} 
            	else
            	if(password_length <8 || password_length >20) {
            	 	$("#announce").css("display","block");
            		$("#announce").html("Mật khẩu từ 8 đến 20 kí tự!");
            		$("#password_login").css("border","solid 1px red");
                }
                else {
            	 	$("#announce").css("display","none");
            	 	$("#password_login").css("border","solid 1px #ccc");
            	}
            });

    });
   //FORM REGISTER
  	$(document).ready(function(){
  		// Bắt lỗi cho textbox username(tên đăng nhập)
            $("#username_reg").focusout(function(){
            	var username_length= $("#username_reg").val().length;
            	if(username_length==0)
            	{
            		$("#announce1").css("display","block");
            		$("#announce1").html("Tên đăng nhập bị trống, mời nhập lại!");
            		$("#username_reg").css("border","solid 1px red");
            	} 
            	else
            	if(username_length <5 || username_length >30) {
            	 	$("#announce1").css("display","block");
            		$("#announce1").html("Hãy nhập tên đăng nhập từ 5 đến 30 kí tự!");
            		$("#username_reg").css("border","solid 1px red");
                }
                else {
            	 	$("#announce1").css("display","none");
            	 	$("#username_reg").css("border","solid 1px #ccc");
            	}
            });
         // Bắt lỗi cho textbox password(mật khẩu)   	
            $("#password_reg").focusout(function(){
            	var password_length= $("#password_reg").val().length;
            	if(password_length==0)
            	{
            		$("#announce1").css("display","block");
            		$("#announce1").html("Hãy nhập mật khẩu!");
            		$("#password_reg").css("border","solid 1px red");
            	} 
            	else
            	if(password_length <8 || password_length >20) {
            	 	$("#announce1").css("display","block");
            		$("#announce1").html("Mật khẩu từ 8 đến 20 kí tự!");
            		$("#password_reg").css("border","solid 1px red");
                }
                else {
            	 	$("#announce1").css("display","none");
            	 	$("#password_reg").css("border","solid 1px #ccc");
            	}
            });
            // Bắt lỗi cho cofirm password(mật khẩu)   	
            $("#password_cofirm").focusout(function(){
            	var password_reg= $("#password_reg").val();
            	var password_cofirm= $("#password_cofirm").val();
            	if(password_reg != password_cofirm)
            	{
            		$("#announce1").css("display","block");
            		$("#announce1").html("Mật khẩu không trùng khớp!");
            		$("#password_cofirm").css("border","solid 1px red");
            	}
                else {
            	 	$("#announce1").css("display","none");
            	 	$("#password_cofirm").css("border","solid 1px #ccc");
            	}
            });
    });
    //
     //FORM DỔI MẬT KHẨU
  	$(document).ready(function(){
         // Bắt lỗi cho textbox password(mật khẩu)   	
            $(".password_old").focusout(function(){
            	var password_length= $(".password_old").val().length;
            	if(password_length==0)
            	{
            		$("#announce1").css("display","block");
            		$("#announce1").html("Hãy nhập mật khẩu!");
            		$(".password_old").css("border","solid 1px red");
            	} 
            	else
            	if(password_length <8 || password_length >20) {
            	 	$("#announce1").css("display","block");
            		$("#announce1").html("Mật khẩu từ 8 đến 20 kí tự!");
            		$(".password_old").css("border","solid 1px red");
                }
                else {
            	 	$("#announce1").css("display","none");
            	 	$(".password_old").css("border","solid 1px #ccc");
            	}
            });
            $(".password_new").focusout(function(){
            	var password_length= $(".password_new").val().length;
            	if(password_length==0)
            	{
            		$("#announce1").css("display","block");
            		$("#announce1").html("Hãy nhập mật khẩu!");
            		$(".password_new").css("border","solid 1px red");
            	} 
            	else
            	if(password_length <8 || password_length >20) {
            	 	$("#announce1").css("display","block");
            		$("#announce1").html("Mật khẩu từ 8 đến 20 kí tự!");
            		$(".password_new").css("border","solid 1px red");
                }
                else {
            	 	$("#announce1").css("display","none");
            	 	$(".password_new").css("border","solid 1px #ccc");
            	}
            });
            // Bắt lỗi cho cofirm password(mật khẩu)   	
            $(".password_check").focusout(function(){
            	var password_reg= $(".password_new").val();
            	var password_cofirm= $(".password_check").val();
            	if(password_reg != password_cofirm)
            	{
            		$("#announce1").css("display","block");
            		$("#announce1").html("Mật khẩu không trùng khớp!");
            		$(".password_check").css("border","solid 1px red");
            	}
                else {
            	 	$("#announce1").css("display","none");
            	 	$(".password_check").css("border","solid 1px #ccc");
            	}
            });

    });
   //FORM TRANG CA NHAN
  	$(document).ready(function(){
  		// Bắt email hợp lệ
  		$(".validation_email").focusout(function(){
  			var pattern = new RegExp(/^([\w\.])+@([a-zA-Z0-9\-])+\.([a-zA-Z]{2,4})(\.[a-zA-Z]{2,4})?$/);
  			if(pattern.test($(".validation_email").val()))
  			{
  				$("#announce1").css("display","none");
            	$(".validation_email").css("border","solid 1px #ccc");
  			}
  		    else 
  		    {
            	$("#announce1").css("display","block");
            	$("#announce1").html("Email chưa hợp lệ!");
            	$(".validation_email").css("border","solid 1px red");
            }
  		});
  		// Bắt tuổi là số
  		$(".validation_age").focusout(function(){
  			var pattern = new RegExp(/^[0-9]+$/);
  			if(pattern.test($(".validation_age").val()))
  			{
  				$("#announce1").css("display","none");
            	$(".validation_age").css("border","solid 1px #ccc");
  			}
  		    else 
  		    {
            	$("#announce1").css("display","block");
            	$("#announce1").html("Hãy nhập tuổi là số!");
            	$(".validation_age").css("border","solid 1px red");
            }
  		});
  		// Bắt số điện thoại là số
  		$(".validation_phone").focusout(function(){
  			var pattern = new RegExp(/^[0-9]+$/);
  			if(pattern.test($(".validation_phone").val()))
  			{
  				$("#announce1").css("display","none");
            	$(".validation_phone").css("border","solid 1px #ccc");
  			}
  		    else 
  		    {
            	$("#announce1").css("display","block");
            	$("#announce1").html("Hãy nhập số điện thoại là số!");
            	$(".validation_phone").css("border","solid 1px red");
            }
  		});
    });
   //Đặt sự kiện cho các button trong Form LOGIN, LOGOUT
	$(document).ready(function(){
		
			  $(".btn").click(function(){
				  $(".carousel-indicators").css("display","none");
			 });
			  $(".close").click(function(){
				  $("#id01").css("display","none");
				  $("#id02").css("display","none");
				  $(".carousel-indicators").css("display","block");
			 });
			
			  $(".formreg").click(function(){
				  $("#id02").css("display","block");
				  $("#id01").css("display","none");
			 });
			  $(".formlogin").click(function(){
				   $("#id02").css("display","none");
				   $("#id01").css("display","block");
			 });
		
		var modal = document.getElementById('id01');
		var modal2 = document.getElementById('id02');
		
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
			else
				if(event.target == modal2) {
				modal2.style.display = "none";
			}
		}
		//END 
		 
	});

			
	$(document).ready(function(){
				//Jquey hiệu ứng slideanim khi trượt
			$(window).scroll(function(){
				$(".slideanim").each(function(){
					var pos= $(this).offset().top;
					var winTop= $(window).scrollTop();
					if(pos < winTop + 1000) {
						$(this).addClass("slide");
					}
				});
			   });		
	});


