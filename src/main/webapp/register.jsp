<%@ page language="java" import="com.wenr.model.User"
contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
%>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title> 注册</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700" rel="stylesheet">
</head>

<body>
	<!--/banner-->
	<header>
		<div class="top-bar_sub container-fluid">
			<div class="row">
				<div class="col-md-4 top-forms text-left mt-4"  data-aos="fade-up">
					<span>欢迎来到美食网站!</span>
					<c:choose>
						<c:when test="${! empty sessionScope.user}">
						<span class="mx-lg-4 mx-md-2  mx-1">
							<a href="#"><i class="fas fa-lock"></i> <%=((User)session.getAttribute("user")).getName()%></a>
						</span>
							<span>
							<a href="servlet/LoginServlet?action=logout"><i class="far fa-user"></i> 退出登录</a>
						</span>
						</c:when>
						<c:otherwise>
						<span class="mx-lg-4 mx-md-2  mx-1">
							<a href="login.jsp"><i class="fas fa-lock"></i> 登录</a>
						</span>
							<span>
							<a href="register.jsp"><i class="far fa-user"></i> 注册</a>
						</span>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="col-md-4 logo text-center" data-aos="fade-up">
					<a class="navbar-brand" href="index.html">
						<i class="fab fa-gitkraken"></i> MAYDAY</a>
				</div>

				<div class="col-md-4 log-icons text-right"  data-aos="fade-up">

					<ul class="social_list1 mt-4">

						<li>
							<a href="#" class="facebook1 mx-2">
								<i class="fab fa-facebook-f"></i>

							</a>
						</li>
						<li>
							<a href="#" class="twitter2">
								<i class="fab fa-twitter"></i>

							</a>
						</li>
						<li>
							<a href="#" class="dribble3 mx-2">
								<i class="fab fa-dribbble"></i>
							</a>
						</li>
						<li>
							<a href="#" class="pin">
								<i class="fab fa-pinterest-p"></i>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</header>

	<!--/banner-->
	<div class="banner-inner">
	</div>
	<!--//banner-->
	<!--/nav-->
	<div class="header_top" id="home">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<button class="navbar-toggler navbar-toggler-right mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
			    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item">
						<a class="nav-link" href="index.html">主页
							<span class="sr-only">(current)</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="about.jsp">关于我们</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="index.html">早餐推荐</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contact.jsp">联系</a>
					</li>

					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
						    aria-expanded="false">
							更多
						</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#"></a>
								<a class="dropdown-item" href="gallery.jsp">展示</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="404.jsp">服务</a>
	
							</div>
					</li>

				</ul>
			</div>
		</nav>

	</div>
	<!--//nav-->
	<ol class="breadcrumb">
		<li class="breadcrumb-item">
			<a href="index.html">主页</a>
		</li>
		<li class="breadcrumb-item active">注册</li>
	</ol>
	<!--/main-->
	<section class="banner-bottom">
		<div class="container">
			<h3 class="tittle">用户注册</h3>
			<div class="inner-sec">
				<div class="login p-5 bg-dark mx-auto mw-100">
					<form action="servlet/RegisterServlet" method="post">
						<div class="form-row">
							<div class="col-md-6 mb-3">
								<label for="validationCustom01">用户名</label>

								<input type="text" class="form-control" id="validationDefault01"
									   placeholder="" required="" name="username">
							</div>
							<div class="col-md-6 mb-3">
								<label for="validationCustom02">昵称</label>
								<input type="text" class="form-control" id="validationDefault02"
									   placeholder="" required="" name="name">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="exampleInputPassword1 mb-2">密码</label>
								<input type="password" class="form-control" id="password1"
									   placeholder="" required="" name="password">
							</div>
							<div class="form-group col-md-6">
								<label for="exampleInputPassword2 mb-2">确认密码</label>
								<input type="password" class="form-control" id="password2"
									   placeholder="" required="" name="confirmPassword">
							</div>
							<div class="col-md-6 mb-3">
								<label for="validationCustom01">验证码</label>
								<img src="/ZXTM/yzmServlet" onclick="" /><!-- 验证码图片 -->

								<input type="text" class="form-control" id="validationDefault01" placeholder="" required="">
							</div>

						</div>
						<button type="submit" class="btn btn-primary submit mb-4">注册</button>
						<p>
							<a href="#">点击同意注册</a>
						</p>
					</form>

				</div>
			</div>
		</div>
	</section>
	<!--//main-->
	<!--footer-->
	<footer>
			<div class="container">
			<div class="row">
				<div class="col-lg-4 footer-grid text-left" data-aos="fade-right" >
					<h3>关于我们</h3>
					<p>请你晚上吃饭的人太多，能给你买早餐的人太少</p>
					<div class="read">
						<a href="single.jsp" class="btn btn-primary read-m">更多</a>
					</div>
				</div>
				<!-- subscribe -->
				<div class="col-lg-8 subscribe-main footer-grid text-left" data-aos="fade-left">
					<h2>联系我们</h2>
					<div class="subscribe-main text-left">
						<div class="subscribe-form">
							<form action="#" method="post" class="subscribe_form">
								<input class="form-control" type="email" placeholder="邮箱地址" required="">
								<button type="submit" class="btn btn-primary submit">提交</button>
							</form>

						</div>
						<p>欢迎您给我们提交宝贵意见!</p>
					</div>
					<!-- //subscribe -->
					<div class="footer-cpy text-left">
						<div class="copyrighttop">
							<ul>
								<li class="mx-lg-3 mx-md-2 mx-1">
									<a class="facebook" href="#">
										<i class="fab fa-facebook-f"></i>
										<span>Facebook</span>
									</a>
								</li>
								<li>
									<a class="facebook" href="#">
										<i class="fab fa-twitter"></i>
										<span>Twitter</span>
									</a>
								</li>
								<li class="mx-lg-3 mx-md-2 mx-1">
									<a class="facebook" href="#">
										<i class="fab fa-google-plus-g"></i>
										<span>Google+</span>
									</a>
								</li>
								<li>
									<a class="facebook" href="#">
										<i class="fab fa-pinterest-p"></i>
										<span>Pinterest</span>
									</a>
								</li>
							</ul>
						</div>
						<div class="copyrightbottom">

						</div>
					</div>
				</div>
			</div>
			<!-- //footer -->
		</div>
	</footer>
	<!---->
	<!-- js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->
    <!-- /js files -->
	<link href='css/aos.css' rel='stylesheet prefetch' type="text/css" media="all" />
	<link href='css/aos-animation.css' rel='stylesheet prefetch' type="text/css" media="all" />
	<script src='js/aos.js'></script>
	<script src="js/aosindex.js"></script>
	<!-- //js files -->
	<!--/ start-smoth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<!--// end-smoth-scrolling -->

	<script>
		$(document).ready(function () {
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- //Custom-JavaScript-File-Links -->
	<script src="js/bootstrap.js"></script>


</body>

</html>