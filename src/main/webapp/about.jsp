<%@ page import="com.wenr.model.User" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title> 关于我们</title>
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
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
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
					<li class="nav-item active">
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
		<li class="breadcrumb-item active">关于我们</li>
	</ol>
	<!--/main-->
	<section class="banner-bottom">
		<div class="container">
			<h3 class="tittle">早餐</h3>
			<div class="row inner-sec">
				<div class="col-lg-6 about-img" data-aos="flip-right">
					<img src="images/ab.jpg" class="img-fluid" alt="">
				</div>
				<div class="col-lg-6 about-info text-left" data-aos="flip-left" >
					<h4 class="sub-hd mb-4">早餐必吃论</h4>
					<p>营养早餐，通俗的来讲就是有养分的早餐。科学的早餐应是低热能、营养均衡，碳水化合物、脂肪、蛋白质、维生素、矿物质和水齐全，特别是要富含膳食纤维。</p>
					<p class="sup-para mt-2">一顿营养的早餐，犹如雪中送炭，能使激素分泌很快进入正常直达高潮，给嗷嗷待哺的脑细胞提供饥渴的能量，给亏缺待摄的身体补以必需的营养，一下子带给我们身体精力、活力和健康。</p>
					<div class="view my-4">
						<a href="single.jsp" class="btn btn-primary read-m">更多</a>
					</div>

					<img src="images/banner3.jpg" class="img-fluid" alt="">
				</div>
			</div>
		</div>
	</section>
	<!--/seller-->
	<section class="grid-info-section">
		<div class="container">
			<h3 class="tittle">早餐推荐</h3>
			<div class="row inner-sec">
				<ul id="flexiselDemo1">
					<li>
						<div class="blog-item text-center">
							<img src="images/1.jpg" alt=" " class="img-fluid rounded-circle" />
							<div class="floods-text">
								<h3>面包</h3>

							</div>
						</div>
					</li>
					<li>
						<div class="blog-item text-center">
							<img src="images/2.jpg" alt=" " class="img-fluid rounded-circle" />
							<div class="floods-text">
								<h3>豆浆</h3>

							</div>
						</div>
					</li>
					<li>
						<div class="blog-item text-center">
							<img src="images/3.jpg" alt=" " class="img-fluid rounded-circle" />
							<div class="floods-text">
								<h3>酸奶</h3>
							</div>
						</div>
					</li>
					<li>
						<div class="blog-item text-center">
							<img src="images/4.jpg" alt=" " class="img-fluid rounded-circle" />
							<div class="floods-text">
								<h3>粥</h3>
							</div>
						</div>
					</li>
					<li>
						<div class="blog-item text-center">
							<img src="images/5.jpg" alt=" " class="img-fluid rounded-circle" />
							<div class="floods-text">
								<h3>鸡蛋</h3>

							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</section>
	<!--//seller-->
	<section class="banner-bottom">
		<div class="container-fluid">
			<h3 class="tittle">负责人</h3>
			<div class="row inner-sec team-sec">
				<div class="col-md-6 team-main">
					<div class="row">

						<div class="col-md-5 team-img" data-aos="flip-right">
								<img src="images/team1.jpg" alt=" " class="img-fluid" />
						</div>
						<div class="col-md-7 team-info text-left" data-aos="flip-left">
								<h4>陈信宏</h4>
								<h6>Ashin，昵称阿信</h6>
								<p>中国台湾男歌手、词曲创作者，中国台湾摇滚乐团五月天的主唱，创意潮牌STAYREAL总裁。 </p>
								<div class="row  pt-3 mt-3 team-social border-top">
									<h5 class="col-md-4 text-left">联系方式</h5>
									<ul class="col-md-8 social_list1 text-right">

										<li>
											<a href="#" class="facebook1 ">
												<i class="fab fa-facebook-f"></i>

											</a>
										</li>
										<li>
											<a href="#" class="twitter2 mx-2">
												<i class="fab fa-twitter"></i>

											</a>
										</li>
										<li>
											<a href="#" class="dribble3">
												<i class="fab fa-dribbble"></i>
											</a>
										</li>

									</ul>
								</div>
						</div>
					</div>

				</div>
				<div class="col-md-6 team-main">
						<div class="row">

							<div class="col-md-5 team-img" data-aos="flip-right">
									<img src="images/team2.jpg" alt=" " class="img-fluid" />
							</div>
							<div class="col-md-7 team-info text-left" data-aos="flip-left">
									<h4>吴世勋</h4>
									<h6>Oh SeHun</h6>
									<p>出生于韩国首尔特别市，韩国男团EXO及其分队EXO-K成员，演员。 </p>
									<div class="row  pt-3 mt-3 team-social border-top">
										<h5 class="col-md-4 text-left">联系方式</h5>
										<ul class="col-md-8 social_list1 text-right">

											<li>
												<a href="#" class="facebook1 ">
													<i class="fab fa-facebook-f"></i>

												</a>
											</li>
											<li>
												<a href="#" class="twitter2 mx-2">
													<i class="fab fa-twitter"></i>

												</a>
											</li>
											<li>
												<a href="#" class="dribble3">
													<i class="fab fa-dribbble"></i>
												</a>
											</li>

										</ul>
									</div>
							</div>
						</div>

					</div>
			</div>
		</div>
	</section>
	<!--reviews_sec-->
	<!---->

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
	<!-- /flexisel -->
	<script>
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 2
					},
					tablet: {
						changePoint: 768,
						visibleItems: 3
					}
				}
			});

		});
	</script>
	<script src="js/jquery.flexisel.js"></script>
	<!-- //flexisel -->
	<!-- flexSlider -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script>
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				start: function (slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>

	<!-- //flexSlider -->
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