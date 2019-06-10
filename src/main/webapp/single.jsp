<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.wenr.model.User" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title> Single</title>
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
	<link href="css/single.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700" rel="stylesheet">
</head>

<body>
	<!--/banner-->
	<%@include file="header.jsp"%>

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
						<a class="nav-link" href="index.jsp">主页
							<span class="sr-only">(current)</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="about.jsp">关于我们</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="index.jsp">早餐推荐</a>
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
			<a href="index.jsp">Home</a>
		</li>
		<li class="breadcrumb-item active">Blog Single</li>
	</ol>
	<!--/main-->
	<section class="banner-bottom">
		<div class="container">
			<h3 class="tittle">Blog Single</h3>
			<div class="row inner-sec">
				<!--left-->
				<div class="col-lg-8 left-blog-info text-left">
					<div class="blog-grid-top">
						<div class="blog_info_left_grid mb-4">
							<img src="images/banner2.jpg" class="img-fluid" alt="">
						</div>
						<h3>Amet consectetur adipisicing</h3>
						<p class="para my-4">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt ut labore et dolore magna
							aliqua uta enim ad minim ven iam quis nostrud exercitation ullamco labor nisi ut aliquip exea commodo consequat duis
							aute irudre dolor in elit sed uta labore dolore reprehender</p>
						<a href="single.jsp" class="btn btn-primary read-m">Read More</a>
					</div>

					<div class="comment-top">
						<h4>Comments</h4>
						<div class="media">
							<img src="images/t3.jpg" alt="" class="img-fluid" />
							<div class="media-body">
								<h5 class="mt-0">Joseph Goh</h5>
								<p>Lorem Ipsum convallis diam consequat magna vulputate malesuada. id dignissim sapien velit id felis ac cursus eros.
									Cras a ornare elit.</p>

								<div class="media mt-3">
									<a class="d-flex pr-3" href="#">
										<img src="images/t4.jpg" alt="" class="img-fluid" />
									</a>
									<div class="media-body">
										<h5 class="mt-0">Richard Spark</h5>
										<p>Lorem Ipsum convallis diam consequat magna vulputate malesuada. id dignissim sapien velit id felis ac cursus eros.
											Cras a ornare elit.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="comment-top">
						<h4>Leave a Comment</h4>
						<div class="comment-bottom">
							<form action="#" method="post">
								<input class="form-control" type="text" name="Name" placeholder="Name" required="">
								<input class="form-control" type="email" name="Email" placeholder="Email" required="">

								<input class="form-control" type="text" name="Subject" placeholder="Subject" required="">

								<textarea class="form-control" name="Message" placeholder="Message..." required=""></textarea>
								<button type="submit" class="btn btn-primary submit">Submit</button>
							</form>
						</div>
					</div>
				</div>

				<!--//left-->
				<!--right-->
				<aside class="col-lg-4 right-blog-con text-right">
					<div class="right-blog-info text-left">
						<div class="tech-btm">
							<img src="images/banner1.jpg" class="img-fluid" alt="">
						</div>
						<div class="tech-btm mt-4">
							<h4>Sign up to our newsletter</h4>
							<p>Pellentesque dui, non felis. Maecenas male </p>
							<form action="#" method="post">
								<input class="form-control" type="email" placeholder="Email" required="">
								<button type="submit" class="btn btn-primary submit">Subscribe</button>
							</form>

						</div>
						<div class="tech-btm mt-4">
							<h4>Categories</h4>
							<ul class="list-group single">
								<li class="list-group-item d-flex justify-content-between align-items-center">
									Cras justo odio
									<span class="badge badge-primary badge-pill">14</span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center">
									Dapibus ac facilisis in
									<span class="badge badge-primary badge-pill">2</span>
								</li>
								<li class="list-group-item d-flex justify-content-between align-items-center">
									Morbi leo risus
									<span class="badge badge-primary badge-pill">1</span>
								</li>
							</ul>
						</div>
						<div class="single-gd my-5 tech-btm">
							<h4>Our Progress</h4>
							<div class="progress">
								<div class="progress-bar progress-bar-striped" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0"
								    aria-valuemax="100"></div>
							</div>
							<div class="progress">
								<div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0"
								    aria-valuemax="100"></div>
							</div>
							<div class="progress">
								<div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0"
								    aria-valuemax="100"></div>
							</div>
							<div class="progress">
								<div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0"
								    aria-valuemax="100"></div>
							</div>
							<div class="progress">
								<div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0"
								    aria-valuemax="100"></div>
							</div>
						</div>
						<div class="single-gd tech-btm">
							<h4>Recent Post</h4>
							<div class="blog-grids">
								<div class="blog-grid-left">
									<a href="single.jsp">
										<img src="images/banner4.jpg" class="img-fluid" alt="">
									</a>
								</div>
								<div class="blog-grid-right">

									<p>Pellentesque dui, non felis. Maecenas male </p>

								</div>

							</div>
						</div>
					</div>

				</aside>
				<!--//right-->
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