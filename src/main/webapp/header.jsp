<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.wenr.model.User" %>
<header>
	<div class="top-bar_sub container-fluid">
		<div class="row">
			<div class="col-md-4 top-forms text-left mt-4"  data-aos="fade-up">
				<span>欢迎来到美食网站!</span>

				<c:choose>
					<c:when test="${null ne sessionScope.user}">
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
				<a class="navbar-brand" href="index.jsp">
					<i class="fab fa-gitkraken"></i> Mayday</a>
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