<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  %>
<!DOCTYPE html>
<html>
<head>
	<title>爱健康</title>
	<link rel="stylesheet" href="style.css">
	<link href="popup-box.css" rel="stylesheet" type="text/css" media="all" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Sign In And Sign Up Forms  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="jquery.min.js"></script>
<script src="jquery.magnific-popup.js" type="text/javascript"></script>
<script type="text/javascript" src="modernizr.custom.53451.js"></script> 
 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});																						
						});
</script>		
</head>
<body>
	<h1>欢迎来到 爱健康</h1>
	<div class="w3layouts">
		<div class="signin-agile">
			<h2>登录
</h2>
			<form  action="UserloginServlet" method="post">
				<input type="text" name="username" class="username" placeholder="用户名" required="">
				<input type="password" name="password" class="password" placeholder="密码" required="">
				<ul>
					<li>
						<input type="checkbox" id="brand1" value="">
						<label for="brand1"><span></span>记住密码</label>
					</li>
				</ul>
				<a href="#">忘记密码?</a><br>
				<div class="clear"></div>
				<input type="submit" value="登录">
			</form>
		</div>
		<div class="signup-agileinfo">
			<h3>没有账号？</h3>
			<div class="more">
				<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog">点击注册</a>				
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="pop-up"> 
	<div id="small-dialog" class="mfp-hide book-form">
	<script  src="1.js" language="javascript"  type="text/javascript">
	</script>
		<h3>注册</h3>
			<form action="UseraddServlet"  method="post">
				<input type="text" name="id" placeholder="身份证号" />
				<input type="text" name="username" placeholder="用户名" />
				<input type="password" name="password" class="password" placeholder="密码" />
				<input type="password" name="password" class="password" placeholder="重复密码" />					
				<input type="text" name="name" placeholder="真实姓名" />
				<input type="text" name="sex"  placeholder="性别" />
				<input type="text" name="tele" placeholder="电话" />
				<input type="text" name="birth"  placeholder="出生日期" />
				<input type="submit" value="点击注册" onclick="say();" >
			</form>
	</div>
</div>	
<body>
</html>