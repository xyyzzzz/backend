<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.wenr.model.User" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title> 首页</title>
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
	<link href="css/simpleLightbox.css" rel='stylesheet' type='text/css' />
	<link href="http://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Lato:100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700" rel="stylesheet">
</head>

<body>
<!--/banner-->
<%@include file="header.jsp"%>

<div class="banner">
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active">
				<div class="carousel-caption">
					<h3>一日之计
						<span>在于晨</span>
					</h3>

				</div>
			</div>
			<div class="carousel-item item2">
				<div class="carousel-caption">
					<h3>Everyday is
						<span>MAYDAY</span>
					</h3>

				</div>
			</div>
			<div class="carousel-item item3">
				<div class="carousel-caption">
					<h3>Make sound stereo
						<span>Make life STAYREAL</span>
					</h3>

				</div>
			</div>
			<div class="carousel-item item4">
				<div class="carousel-caption">
					<h3>加入五月天
						<span>永远不会有钱</span>
					</h3>

				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
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
				<li class="nav-item active">
					<a class="nav-link" href="index.jsp">主页
						<span class="sr-only">(current)</span>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="about.jsp">关于我们</a>
				</li>
				<li class="nav-item">
					<a class="nav-link scroll" href="#menu">早餐推荐</a>
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
<!--/inner-content-->
<!--/banner-bottom-->
<section class="banner-bottom">
	<div class="container">
		<h3 class="tittle">早餐</h3>
		<div class="row inner-sec">
			<div class="col-lg-6 about-img" data-aos="flip-right">
				<img src="images/ab.jpg" class="img-fluid" alt="">
			</div>
			<div class="col-lg-6 about-info text-left" data-aos="flip-left" >
				<h4 class="sub-hd mb-4">早餐必吃论 </h4>
				<p>营养早餐，通俗的来讲就是有养分的早餐。科学的早餐应是低热能、营养均衡，碳水化合物、脂肪、蛋白质、维生素、矿物质和水齐全，特别是要富含膳食纤维。</p>
				<p class="sup-para mt-2">一顿营养的早餐，犹如雪中送炭，能使激素分泌很快进入正常直达高潮，给嗷嗷待哺的脑细胞提供饥渴的能量，给亏缺待摄的身体补以必需的营养，一下子带给我们身体精力、活力和健康。</p>
				<div class="view my-4">
					<a href="404.jsp" class="btn btn-primary read-m">更多</a>
				</div>

				<img src="images/banner3.jpg" class="img-fluid" alt="">
			</div>
		</div>
	</div>
</section>
<!--//banner-bottom-->

<!--/banner-bottom-->
<section class="grid-info-section">
	<div class="container">
		<h3 class="tittle">早餐类型</h3>
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
<!--//banner-bottom-->
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >建站模板</a></div>
<!--/Menu-->
<section class="banner-bottom menu" id="menu">
	<div class="container">
		<h3 class="tittle">早餐推荐</h3>
		<div class="row inner-sec">
			<div class="tabs">
				<ul class="nav nav-pills mb-5 justify-content-center" id="pills-tab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home"
						   aria-selected="true">传统早餐</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile"
						   aria-selected="false">其他</a>
					</li>

				</ul>
				<div class="tab-content" id="pills-tabContent">
					<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
						<div class="menu-grids my-lg-4 my-md-2">
							<div class="row inner-menu mt-4">
								<div class="col-md-6 menu-grid-left" data-aos="fade-down">
									<div class="row mt-2">
										<div class="col-md-5 menu-img">
											<img src="images/1.jpg" class="img-fluid rounded-circle" alt="">
										</div>
										<div class="col-md-7 menu-img-info mt-4 mt-md-2">
											<h5>全麦片面包含有大量的维生素、纤维素及矿物质，粗粮有益人体肠胃健康。</h5>

										</div>
									</div>

								</div>
								<div class="col-md-6 menu-grid-right" data-aos="fade-down">
									<div class="row mt-2">
										<div class="col-md-5 menu-img">
											<img src="images/2.jpg" class="img-fluid rounded-circle" alt="">
										</div>
										<div class="col-md-7 menu-img-info mt-4 mt-md-2">
											<h5>豆浆，中国汉族传统饮品，营养非常丰富，且易于消化吸收</h5>
										</div>
									</div>

								</div>
							</div>
							<div class="row inner-menu mt-4">
								<div class="col-md-6 menu-grid-left" data-aos="fade-down">
									<div class="row mt-2">
										<div class="col-md-5 menu-img">
											<img src="images/3.jpg" class="img-fluid rounded-circle" alt="">
										</div>
										<div class="col-md-7 menu-img-info mt-4 mt-md-2">
											<h5>酸奶除了营养丰富外，还含有乳酸菌，具有保健作用。</h5>
										</div>
									</div>

								</div>
								<div class="col-md-6 menu-grid-right" data-aos="fade-down">
									<div class="row mt-2">
										<div class="col-md-5 menu-img">
											<img src="images/4.jpg" class="img-fluid rounded-circle" alt="">
										</div>
										<div class="col-md-7 menu-img-info mt-4 mt-md-2">
											<h5>一种由稻米、小米或玉米豆类等粮食煮成的稠糊的食物。</h5>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
						<div class="menu-grids my-lg-4 my-md-2">
							<div class="row inner-menu mt-4">
								<div class="col-md-6 menu-grid-left" data-aos="fade-down">
									<div class="row mt-2">
										<div class="col-md-5 menu-img">
											<img src="images/a1.jpg" class="img-fluid rounded-circle" alt="">
										</div>
										<div class="col-md-7 menu-img-info mt-4 mt-md-2">
											<h5>葱花鸡蛋饼</h5>
										</div>
									</div>

								</div>
								<div class="col-md-6 menu-grid-right" data-aos="fade-down">
									<div class="row mt-2">
										<div class="col-md-5 menu-img">
											<img src="images/a2.jpg" class="img-fluid rounded-circle" alt="">
										</div>
										<div class="col-md-7 menu-img-info mt-4 mt-md-2">
											<h5>火腿芝士蛋三文治</h5>
										</div>
									</div>

								</div>
							</div>
							<div class="row inner-menu mt-4">
								<div class="col-md-6 menu-grid-left" data-aos="fade-down">
									<div class="row mt-2">
										<div class="col-md-5 menu-img">
											<img src="images/a3.jpg" class="img-fluid rounded-circle" alt="">
										</div>
										<div class="col-md-7 menu-img-info mt-4 mt-md-2">
											<h5>葱油拌面</h5>
										</div>
									</div>

								</div>
								<div class="col-md-6 menu-grid-right" data-aos="fade-down">
									<div class="row mt-2">
										<div class="col-md-5 menu-img">
											<img src="images/a4.jpg" class="img-fluid rounded-circle" alt="">
										</div>
										<div class="col-md-7 menu-img-info mt-4 mt-md-2">
											<h5>香蕉吐司卷</h5>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</section>
<!--//Menu-->

<!--/blog-->
<section class="blog_sec container-fluid">
	<h3 class="tittle">美食制作</h3>
	<div class="row inner-sec">
		<div class="col-lg-6 banner-btm-left">
			<div class="banner-btm-top">
				<div class="banner-btm-inner a1 text-left">

					<h6>
						<a href="single.jsp">网红奶酪面包</a>
					</h6>
					<p class="paragraph">1、按照用料和基本步骤制作好面包体备用</p>
					<p class="paragraph">2、提前一小时把奶酪放在室温软化，然后加入砂糖，用打蛋器隔热水打发至顺滑，离开热水后再加上牛奶调制稀稠备用</p>
					<p class="paragraph">3、面包体切四块，将打发好的奶酪糊用抹刀均匀涂在面包切面上，最后粘上奶粉即可</p>

					<a href="404.jsp" class="blog-btn" data-aos="fade-down">了解更多</a>
				</div>
				<div class="banner-btm-inner a2">

				</div>
			</div>
			<div class="banner-btm-bottom">
				<div class="banner-btm-inner a3">

				</div>
				<div class="banner-btm-inner a4 text-left">

					<h6>
						<a href="single.jsp">早餐鸡蛋杯</a>
					</h6>
					<p class="paragraph">在蛋糕纸杯里打进一个鸡蛋，撒上香肠、葱花、芝士，表面盖上锡纸，放入预热好的烤箱 10~15min</p>

					<a href="404.jsp" class="blog-btn" data-aos="fade-down">了解更多</a>
				</div>
			</div>
		</div>
		<div class="col-lg-6 banner-btm-left">
			<div class="banner-btm-top">
				<div class="banner-btm-inner a1 text-left">
					<h6>
						<a href="single.jsp">面包布丁</a>
					</h6>
					<p class="paragraph">1、鸡蛋、牛奶、砂糖搅拌到一起</p>
					<p class="paragraph">2、烤盘抹一层黄油撒点点面粉</p>
					<p class="paragraph">3、放一层面包，撒点干果，再放一层面包，再撒干果</p>
					<p class="paragraph">4、把做法1倒入做法3，按一按，让面包吸收布丁汁</p>
					<p class="paragraph">5、放一层面包，撒点干果，再放一层面包，再撒干果，之后放入烤箱</p>

					<a href="404.jsp" class="blog-btn" data-aos="fade-down">了解更多</a>
				</div>
				<div class="banner-btm-inner a5">

				</div>
			</div>
			<div class="banner-btm-bottom">
				<div class="banner-btm-inner a6">

				</div>
				<div class="banner-btm-inner a4 text-left">
					<h6>
						<a href="single.jsp">奶香玉米汁</a>
					</h6>
					<p class="paragraph">1、玉米剥下来加入水和冰糖煮熟后，一起倒入搅拌机</p>
					<p class="paragraph">2、倒入牛奶，最好是热牛奶，高速1分半钟即可</p>

					<a href="404.jsp" class="blog-btn" data-aos="fade-down">了解更多</a>
				</div>
			</div>
		</div>

	</div>
</section>
<!--//blog-->
<!--/Gallry-->
<section class="banner-bottom">
	<div class="container">
		<h3 class="tittle">展示</h3>
		<div class="row inner-sec">

			<div class="col-md-4 proj_gallery_grid" data-aos="zoom-in">
				<div class="section_1_gallery_grid">
					<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/p1.jpg">
						<div class="section_1_gallery_grid1">
							<img src="images/p1.jpg" alt=" " class="img-fluid" />
							<div class="proj_gallery_grid1_pos">
								<h3>网红奶酪面包</h3>
							</div>
						</div>
					</a>
				</div>
				<div class="section_1_gallery_grid" data-aos="zoom-in">
					<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/p2.jpg">
						<div class="section_1_gallery_grid1">
							<img src="images/p2.jpg" alt=" " class="img-fluid" />
							<div class="proj_gallery_grid1_pos">
								<h3>早餐鸡蛋杯</h3>
							</div>
						</div>
					</a>
				</div>

			</div>
			<div class="col-md-4 proj_gallery_grid" data-aos="zoom-in">
				<div class="section_1_gallery_grid">
					<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/p4.jpg">
						<div class="section_1_gallery_grid1">
							<img src="images/p4.jpg" alt=" " class="img-fluid" />
							<div class="proj_gallery_grid1_pos">
								<h3>奶香玉米汁</h3>
							</div>
						</div>
					</a>
				</div>
				<div class="section_1_gallery_grid" data-aos="zoom-in">
					<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/p5.jpg">
						<div class="section_1_gallery_grid1">
							<img src="images/p5.jpg" alt=" " class="img-fluid" />
							<div class="proj_gallery_grid1_pos">
								<h3>巧克力曲奇</h3>
							</div>
						</div>
					</a>
				</div>

			</div>
			<div class="col-md-4 proj_gallery_grid" data-aos="zoom-in">
				<div class="section_1_gallery_grid">
					<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/p3.jpg">
						<div class="section_1_gallery_grid1">
							<img src="images/p3.jpg" alt=" " class="img-fluid" />
							<div class="proj_gallery_grid1_pos">
								<h3>面包布丁</h3>
							</div>
						</div>
					</a>
				</div>
				<div class="section_1_gallery_grid" data-aos="zoom-in">
					<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/p2.jpg">
						<div class="section_1_gallery_grid1">
							<img src="images/p6.jpg" alt=" " class="img-fluid" />
							<div class="proj_gallery_grid1_pos">
								<h3>香蕉吐司卷</h3>

							</div>
						</div>
					</a>
				</div>

			</div>
		</div>
	</div>
</section>
<!--//gallery-->
<!--reviews_sec-->

<!--footer-->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 footer-grid text-left" data-aos="fade-right">
				<h3>关于我们</h3>
				<p>请你晚上吃饭的人太多，能给你买早餐的人太少</p>
				<div class="read">
					<a href="404.jsp" class="btn btn-primary read-m">更多</a>
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

<!-- simpleLightbox -->
<script src="js/simpleLightbox.js"></script>
<script>
    $('.proj_gallery_grid a').simpleLightbox();
</script>
<!-- //simpleLightbox -->
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