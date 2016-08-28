<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>中国中车</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="css/preview.css" rel="stylesheet" />
<script src="js/login.js/modernizr.js"></script>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300'
	rel='stylesheet' type='text/css'>
</head>
<body class="eternity-form">
	<nav class="main-nav">
		<ul>
			<li><a href="#demo1" class="active" data-title="Login Form"
				data-panel="first"></a></li>
			<li><a href="#demo2" data-title="Registration Form"
				data-panel="second"></a></li>
			<li><a href="#demo3" data-title="Forgot Password Form"
				data-panel="third"></a></li>
		</ul>
	</nav>

	<section class="colorBg1 colorBg" id="demo1" data-panel="first">

		<div class=" container">

			<div class="login-form-section">
				<div class="login-content " data-animation="bounceIn">
					<form action="login.do" method="post">
						<div class="section-title">
							<h3>地铁网络自助取票系统</h3>
						</div>
						<div class="textbox-wrap">
							<div class="input-group">
								<span class="input-group-addon "><i
									class="icon-user icon-color"></i></span> <input type="text"
									required="required" name="userName" class="form-control"
									placeholder="用户名" />
							</div>
						</div>
						<div class="textbox-wrap">
							<div class="input-group">
								<span class="input-group-addon "><i
									class="icon-key icon-color"></i></span> <input type="password"
									required="required" name="password" class="form-control "
									placeholder="密码" />
							</div>
						</div>
						<div class="login-form-action clearfix">
							<div class="checkbox pull-left">
								<div class="custom-checkbox">
									<input type="checkbox" checked name="iCheck">
								</div>
								<span class="checkbox-text pull-left">&nbsp;记住密码</span>
							</div>
							<!-- <button type="submit" class="btn btn-success pull-right green-btn" >登录 &nbsp; <i class="icon-chevron-right"></i></button> -->
							<input type="submit" class="btn btn-success pull-right green-btn"
								value="登录" />
						</div>
					</form>
				</div>
				<div class="login-form-links link1 " data-animation="fadeInLeftBig"
					data-animation-delay=".2s">
					<h4 class="blue">没有账号?</h4>
					<span>不用担心</span> <a href="#demo2" class="blue">点这里</a> <span>去注册</span>
				</div>
				<div class="login-form-links link2 " data-animation="fadeInRightBig"
					data-animation-delay=".4s">
					<h4 class="green">忘记你的密码?</h4>
					<span>不用担心</span> <a href="#demo3" class="green">点这里</a> <span>去找回密码</span>
				</div>
			</div>



		</div>
	</section>
	<section class="colorBg form-seprator i1">

		<i class="icon-group" data-animation="bounceInUp"></i>
		<h1 data-animation="bounceInUp" data-animation-delay=".2s">中国中车</h1>
		<br />

	</section>
	<section class="colorBg2 colorBg" id="demo2" data-panel="second">
		<div class=" container">
			<br /> <br />
			<!-- #region Registration Form -->
			<div class="registration-form-section">
				<form action="register.do" name="register" method="post">
					<div class="section-title reg-header " data-animation="fadeInDown">
						<h3>注册账号</h3>

					</div>
					<div class="clearfix">
						<div class="col-sm-6 registration-left-section  "
							data-animation="fadeInUp">
							<div class="reg-content">
								<div class="textbox-wrap">
									<div class="input-group">
										<span class="input-group-addon "><i
											class="icon-user icon-color"></i></span> <input type="text"
											class="form-control " name="name" placeholder="姓名"
											required="required" />
									</div>
								</div>
								<div class="textbox-wrap">
									<div class="input-group">
										<span class="input-group-addon "><i
											class="icon-credit-card icon-color"></i></span> <input type="text"
											class="form-control " name="identity" placeholder="身份证号"
											required="required" />
									</div>
								</div>
								<div class="textbox-wrap">
									<div class="input-group">
										<span class="input-group-addon "><i
											class="icon-envelope icon-color"></i></span> <input type="email"
											class="form-control " name="email" placeholder="邮箱"
											required="required" />
									</div>
								</div>


							</div>
						</div>
						<div class="col-sm-6 registration-right-section "
							data-animation="fadeInUp">
							<div class="reg-content">
								<div class="textbox-wrap">
									<div class="input-group">
										<span class="input-group-addon "><i
											class="icon-user icon-color"></i></span> <input type="text"
											class="form-control " name="userName" placeholder="用户名"
											required="required" />
									</div>
								</div>
								<div class="textbox-wrap">
									<div class="input-group">
										<span class="input-group-addon "><i
											class="icon-key icon-color"></i></span> <input type="password"
											class="form-control " name="password" placeholder="密码"
											required="required" />
									</div>
								</div>
								<div class="textbox-wrap">
									<div class="input-group">
										<span class="input-group-addon "><i
											class="icon-key icon-color"></i></span> <input type="password"
											class="form-control " placeholder="确认密码" required="required"
											name="password2" />
									</div>
								</div>
								<div id="test"></div>

							</div>
						</div>
					</div>
					<div class="registration-form-action clearfix "
						data-animation="fadeInUp" data-animation-delay=".15s">
						<a href="#demo1" class="btn btn-success pull-left blue-btn ">
							<i class="icon-chevron-left"></i>&nbsp; &nbsp;返回登录
						</a>
						<button type="submit"
							class="btn btn-success pull-right green-btn ">
							注册 &nbsp; <i class="icon-chevron-right"></i>
						</button>

					</div>
				</form>
			</div>



		</div>
	</section>
	<section class="colorBg form-seprator i2">

		<i class="icon-group" data-animation="bounceInUp"></i> <br /> <br />
		<h1 data-animation="bounceInUp" data-animation-delay=".2s">中国中车</h1>


	</section>
	<section class="colorBg3 colorBg" id="demo3" data-panel="third">
		<div class=" container">
			<br /> <br /> <br />

			<div class="forgot-password-section" data-animation="bounceInLeft">
				<div class="section-title">
					<h3>忘记密码</h3>
				</div>
				<div class="forgot-content">
					<form action="#findpassword" name="findpassword">
						<div class="textbox-wrap">
							<div class="input-group">
								<span class="input-group-addon "><i
									class="icon-user icon-color"></i></span> <input type="text"
									class="form-control " placeholder="用户名" required="required"
									name="username" />
							</div>
						</div>
						<div class="textbox-wrap">
							<div class="input-group">
								<span class="input-group-addon "><i
									class="icon-envelope icon-color"></i></span> <input type="email"
									class="form-control " placeholder="邮箱" required="required"
									name="email" />
							</div>
						</div>
						<div class="forget-form-action clearfix">
							<a class="btn btn-success pull-left blue-btn" href="#demo1"><i
								class="icon-chevron-left"></i>&nbsp;&nbsp;返回 </a>
							<button type="button" onclick="ajaxTest()"
								class="btn btn-success pull-right green-btn">
								提交 &nbsp;&nbsp; <i class="icon-chevron-right"></i>
							</button>
						</div>
					</form>
				</div>
			</div>


		</div>
	</section>
	<c:if test="${!empty msg}">
		<script>
			alert('账号或密码错误，请重新输入！');
		</script>
	</c:if>
	<!-- <script>

		function test() {
			var p1 = document.register.password.value;
			var p2 = document.register.password2.value;
			if (p1 != p2)
				$("#test").html(result1);
			else
				document.register.submit();

		}
	</script> -->
	<script src="js/login.js/jquery-1.9.1.js"></script>
	<script src="js/login.js/bootstrap.js"></script>
	<script src="js/login.js/respond.src.js"></script>
	<script src="js/login.js/jquery.icheck.js"></script>
	<script src="js/login.js/placeholders.min.js"></script>
	<script src="js/login.js/waypoints.min.js"></script>
	<script src="js/login.js/jquery.panelSnap.js"></script>

	<script type="text/javascript">
		$(function() {
			$("input").iCheck({
				checkboxClass : 'icheckbox_square-blue',
				increaseArea : '20%' // optional
			});
			$(".dark input").iCheck({
				checkboxClass : 'icheckbox_polaris',
				increaseArea : '20%' // optional
			});
			$(".form-control").focus(function() {
				$(this).closest(".textbox-wrap").addClass("focused");
			}).blur(function() {
				$(this).closest(".textbox-wrap").removeClass("focused");
			});

			//On Scroll Animations

			if ($(window).width() >= 968 && !Modernizr.touch
					&& Modernizr.cssanimations) {

				$("body").addClass("scroll-animations-activated");
				$('[data-animation-delay]').each(function() {
					var animationDelay = $(this).data("animation-delay");
					$(this).css({
						"-webkit-animation-delay" : animationDelay,
						"-moz-animation-delay" : animationDelay,
						"-o-animation-delay" : animationDelay,
						"-ms-animation-delay" : animationDelay,
						"animation-delay" : animationDelay
					});

				});
				$('[data-animation]').waypoint(
						function(direction) {
							if (direction == "down") {
								$(this)
										.addClass(
												"animated "
														+ $(this).data(
																"animation"));

							}
						}, {
							offset : '90%'
						}).waypoint(
						function(direction) {
							if (direction == "up") {
								$(this)
										.removeClass(
												"animated "
														+ $(this).data(
																"animation"));

							}
						}, {
							offset : $(window).height() + 1
						});
			}

			//End On Scroll Animations

			$(".main-nav a[href]").click(function() {
				var scrollElm = $(this).attr("href");

				$("html,body").animate({
					scrollTop : $(scrollElm).offset().top
				}, 500);

				$(".main-nav a[href]").removeClass("active");
				$(this).addClass("active");
			});

			if ($(window).width() > 1000 && !Modernizr.touch) {
				var options = {
					$menu : ".main-nav",
					menuSelector : 'a',
					panelSelector : 'section',
					namespace : '.panelSnap',
					onSnapStart : function() {
					},
					onSnapFinish : function($target) {
						$target.find('input:first').focus();
					},
					directionThreshold : 50,
					slideSpeed : 200
				};
				$('body').panelSnap(options);

			}

			$(".colorBg a[href]").click(function() {
				var scrollElm = $(this).attr("href");

				$("html,body").animate({
					scrollTop : $(scrollElm).offset().top
				}, 500);

				return false;
			});
		});

		function ajaxTest() {
			userName = document.findpassword.username.value;
			email = document.findpassword.email.value;
			$.ajax({
				data : {
					'userName' : userName,
					'email' : email
				},
				type : "POST",
				dataType : 'json',
				url : "findPassword.do",
				error : function(data) {
					alert("邮箱或密码错误!");
					/* location.href = "login.jsp"; */
				},
				success : function(data) {
					alert(data.msg);
					location.href = "login.jsp";
				}
			});
		}
	</script>

</body>
</html>
