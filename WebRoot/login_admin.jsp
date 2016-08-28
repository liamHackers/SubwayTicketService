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
		</ul>
	</nav>

	<section class="colorBg1 colorBg" id="demo1" data-panel="first">

		<div class=" container">

			<div class="login-form-section">
				<div class="login-content " data-animation="bounceIn">
					<form action="adminlogin.do" method="post">
						<div class="section-title">
							<h3>管理员登录</h3>
						</div>
						<div class="textbox-wrap">
							<div class="input-group">
								<span class="input-group-addon "><i
									class="icon-user icon-color"></i></span> <input type="text"
									required="required" class="form-control" name="aName"
									placeholder="用户名" />
							</div>
						</div>
						<div class="textbox-wrap">
							<div class="input-group">
								<span class="input-group-addon "><i
									class="icon-key icon-color"></i></span> <input type="password"
									required="required" class="form-control " name="password"
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
							<!-- <button type="submit"
								class="btn btn-success pull-right green-btn" onclick="tz()">
								登录 &nbsp; <i class="icon-chevron-right"></i>
							</button> -->
							<input type="submit" class="btn btn-success pull-right green-btn"
								value="登录" />
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
	<script src="js/login.js/jquery-1.9.1.js"></script>
	<script src="js/login.js/bootstrap.js"></script>
	<script src="js/login.js/respond.src.js"></script>
	<script src="js/login.js/jquery.icheck.js"></script>
	<script src="js/login.js/placeholders.min.js"></script>
	<script src="js/login.js/waypoints.min.js"></script>
	<script src="js/login.js/jquery.panelSnap.js"></script>

	<script type="text/javascript">
		function tz() {
			window.location.href = 'admin-index.jsp';
		}

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
	</script>

</body>
</html>
