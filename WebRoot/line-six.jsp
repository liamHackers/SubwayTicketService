<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="images/icon.png">

<title>六号线</title>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,400italic,700,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:300,200,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap core CSS -->
<link href="js/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="js/jquery.gritter/css/jquery.gritter.css" />
<link rel="stylesheet"
	href="fonts/font-awesome-4/css/font-awesome.min.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	  <script src="../../assets/js/html5shiv.js"></script>
	  <script src="../../assets/js/respond.min.js"></script>
	<![endif]-->
<link rel="stylesheet" type="text/css"
	href="js/jquery.nanoscroller/nanoscroller.css" />


<link href="css/style.css" rel="stylesheet" />

</head>
<body class="animated">

	<div id="cl-wrapper">

		<div class="cl-sidebar">
			<div class="cl-toggle">
				<i class="fa fa-bars"></i>
			</div>
			<div class="cl-navblock">
				<div class="menu-space">
					<div class="content">
						<div class="sidebar-logo">
							<div class="logo">
								<a href="index2.jsp"></a>
							</div>
						</div>
						<div class="side-user">
							<div class="avatar"></div>
						</div>

						<ul class="cl-vnavigation">
							<li><a href="#"><i class="fa fa-home"></i><span>首页</span></a>
								<ul class="sub-menu">
									<li><a href="notice_query.do">主界面</a></li>
									<li><a href="getNewNotice.do"><span
											class="label label-primary pull-right">New</span>公告信息</a></li>
								</ul></li>
							<li><a href="#"><i class="fa fa-desktop"></i><span>个人中心</span></a>
								<ul class="sub-menu">
									<li><a href="personal-information.jsp">个人信息</a></li>
									<li><a href="personal-updatepassword.jsp">修改密码</a></li>
									<!-- <li><a href="#layout-topbar.jsp">我的积分</a></li> -->
									<li><a href="personal-balance.jsp">余额查询</a></li>
									<li><a href="ticketRecord.do">购票记录</a></li>
									<!-- <li><a href="#layout-topbar.jsp">在线充值</a></li> -->
									<!-- <li><a href="#layout-topbar.jsp">到站提醒</a></li> -->
									<li><a href="login.jsp">注销账户</a></li>
								</ul></li>
							<li><a href="#"><i class="fa fa-smile-o"></i><span>线路信息</span></a>
								<ul class="sub-menu">
									<li><a href="findLineOne.do">一号线</a></li>
									<li><a href="findLineTwo.do">二号线</a></li>
									<li><a href="findLineThree.do">三号线</a></li>
									<li><a href="findLineFour.do">四号线</a></li>
									<li><a href="findLineFive.do">五号线</a></li>
									<li class="active"><a href="findLineSix.do">六号线</a></li>
									<li><a href="line-seven.jsp">七号线</a></li>
									<li><a href="findLineEight.do">八号线</a></li>
									<li><a href="findLineGF.do">广佛线</a></li>
								</ul></li>
							<li><a href="#"><i class="fa fa-list-alt"></i><span>订单管理</span></a>
								<ul class="sub-menu">
									<li><a href="order-buyticket.jsp">购买车票</a></li>
									<!-- 	<li><a href="#form-wizard.jsp">差票补退</a></li> -->
									<li><a href="returnTicket.do">退票</a></li>
								</ul></li>
							<li><a href="#"><i class="fa fa-table"></i><span>客服中心</span></a>
								<ul class="sub-menu">
									<li><a target="_blank"
										href="http://wpa.qq.com/msgrd?v=3&uin=${cService[0].cserviceQQ }&site=qq&menu=yes">客服一</a></li>
									<li><a target="_blank"
										href="http://wpa.qq.com/msgrd?v=3&uin=${cService[1].cserviceQQ }&site=qq&menu=yes">客服二</a></li>
									<!-- <li><a href="#tables-xeditable.jsp">客服热线</a></li> -->
									<li><a href="messageBoad_query.do">留言板</a></li>
								</ul></li>
							<!-- <li><a href="#"><i class="fa fa-map-marker nav-icon"></i><span>地图</span></a>
              <ul class="sub-menu">
                <li  ><a href="#maps.jsp">地图信息</a></li>
                <li  ><a href="#vector-maps.jsp">个人定位</a></li>
              </ul>
            </li> -->

							<li><a href="check-line.jsp"><i
									class="fa fa-text-height"></i><span>查询路线</span></a></li>
							<!-- <li  ><a href="#charts.jsp"><i class="fa fa-bar-chart-o"></i><span>客服投诉</span></a></li> -->
							<li><a href="#"><i class="fa fa-file"></i><span>更多功能</span></a>
								<ul class="sub-menu">
									<li><a href="more-wechat.jsp">官方微信</a></li>
									<li><a
										href="http://weibo.com/p/1006065618105325/home?from=page_100606&mod=TAB"
										target="_black">官方微博</a></li>
									<li><a href="more-friendsline.jsp">友情链接</a></li>
									<li><a href="more-app.jsp">APP下载</a></li>
								</ul></li>
							<li class=""><a href="javascript:;"><i
									class="fa fa-folder-open"></i><span class="title">系统帮助</span><span
									class="arrow "></span></a>
								<ul class="sub-menu">
									<li><a href="ticketintroduction.do">中国中车票务简介</a></li>
									<li><a href="operation.do">操作指南</a></li>
									<li><a href="buyingNotice.do">购票须知</a></li>
									<li><a href="system.do">关于系统</a></li>
								</ul></li>


						</ul>
					</div>
				</div>
				<div class="text-right collapse-button" style="padding:7px 9px;">
					<input type="text" class="form-control search"
						placeholder="Search..." />
					<button id="sidebar-collapse" class="btn btn-default" style="">
						<i style="color:#fff;" class="fa fa-angle-left"></i>
					</button>
				</div>
			</div>
		</div>
		<div class="container-fluid" id="pcont">
			<!-- TOP NAVBAR -->
			<div id="head-nav" class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-collapse">
						<ul class="nav navbar-nav navbar-right user-nav">
							<li class="dropdown profile_menu"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"><img
									alt="Avatar" src="${user.photoPath }" height="40" width="40" /><span>${user.name }</span>
									<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="personal-information.jsp">个人信息</a></li>
									<li><a href="ticketRecord.do">购票信息</a></li>
									<li class="divider"></li>
									<li><a href="login.jsp">退出登录</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse animate-collapse -->
				</div>
			</div>


			<div class="cl-mcont">
				<div class="page-head">
					<ol class="breadcrumb">
						<li><a href="#">首页</a></li>
						<li><a href="#">线路信息</a></li>
						<li class="active">六号线</li>
					</ol>
				</div>

				<ul class="cbp_tmtimeline">

					<c:forEach var="linesix" items="${linesix}">
						<li><time class="cbp_tmtime" datetime="enName 站点">
								<span>${linesix.enName}</span> <span>${linesix.stationName}</span>
							</time>
							<div class="cbp_tmicon cbp_tmicon-phone"></div>
							<div class="cbp_tmlabel">
								<h2>${linesix.stationName}</h2>
								<p>
									首末班车时间<br>${linesix.time}<br>
								<h4 class="panel-title">
									<i class="fa fa-angle-right"></i> 站点资讯
								</h4>
								出口：${linesix.exitinfo}<br> 公交站：${linesix.businfo}<br>
								</p>
							</div></li>
					</c:forEach>

				</ul>

			</div>
		</div>
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/jquery.cookie/jquery.cookie.js"></script>
	<script src="js/jquery.pushmenu/js/jPushMenu.js"></script>
	<script type="text/javascript"
		src="js/jquery.nanoscroller/jquery.nanoscroller.js"></script>
	<script type="text/javascript"
		src="js/jquery.sparkline/jquery.sparkline.min.js"></script>
	<script type="text/javascript" src="js/jquery.ui/jquery-ui.js"></script>
	<script type="text/javascript"
		src="js/jquery.gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="js/behaviour/core.js"></script>

	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap/dist/js/bootstrap.min.js"></script>
	<style type="text/css">
#color-switcher {
	position: fixed;
	background: #272930;
	padding: 10px;
	top: 50%;
	right: 0;
	margin-right: -109px;
}

#color-switcher .toggle {
	cursor: pointer;
	font-size: 15px;
	color: #FFF;
	display: block;
	position: absolute;
	padding: 4px 10px;
	background: #272930;
	width: 25px;
	height: 30px;
	left: -24px;
	top: 22px;
}

#color-switcher p {
	color: rgba(255, 255, 255, 0.6);
	font-size: 12px;
	margin-bottom: 3px;
}

#color-switcher .palette {
	padding: 1px;
}

#color-switcher .color {
	width: 15px;
	height: 15px;
	display: inline-block;
	cursor: pointer;
}

#color-switcher .color.purple {
	background: #7761A7;
}

#color-switcher .color.green {
	background: #19B698;
}

#color-switcher .color.red {
	background: #EA6153;
}

#color-switcher .color.blue {
	background: #54ADE9;
}

#color-switcher .color.orange {
	background: #FB7849;
}

#color-switcher .color.prusia {
	background: #476077;
}

#color-switcher .color.yellow {
	background: #fec35d;
}

#color-switcher .color.pink {
	background: #ea6c9c;
}

#color-switcher .color.brown {
	background: #9d6835;
}

#color-switcher .color.gray {
	background: #afb5b8;
}
</style>
	<div id="color-switcher">
		<p>Select Color</p>
		<div class="palette">
			<div class="color purple" data-color="purple"></div>
			<div class="color green" data-color="green"></div>
			<div class="color red" data-color="red"></div>
			<div class="color blue" data-color="blue"></div>
			<div class="color orange" data-color="orange"></div>
		</div>
		<div class="palette">
			<div class="color prusia" data-color="prusia"></div>
			<div class="color yellow" data-color="yellow"></div>
			<div class="color pink" data-color="pink"></div>
			<div class="color brown" data-color="brown"></div>
			<div class="color gray" data-color="gray"></div>
		</div>
		<div class="toggle">
			<i class="fa fa-angle-left"></i>
		</div>
	</div>

	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');

		if ($.cookie("css")) {
			link.attr("href", 'css/style-' + $.cookie("css") + '.css');
		}

		$(function() {
			$("#color-switcher .toggle").click(function() {
				var s = $(this).parent();
				if (s.hasClass("open")) {
					s.animate({
						'margin-right' : '-109px'
					}, 400).toggleClass("open");
				} else {
					s.animate({
						'margin-right' : '0'
					}, 400).toggleClass("open");
				}
			});

			$("#color-switcher .color").click(function() {
				var color = $(this).data("color");
				$("body").fadeOut(function() {
					//link.attr('href','css/style-' + color + '.css');
					$.cookie("css", color, {
						expires : 365,
						path : '/'
					});
					window.location.href = "";
					$(this).fadeIn("slow");
				});
			});
		});
	</script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							/*Gritter Notifications*/
							$('#not-basic')
									.click(
											function() {
												$.gritter
														.add({
															title : 'Thomas new msg!',
															text : "You have a new Thomas message, let's checkout your inbox.",
															image : 'images/avatar1_50.jpg',
															time : ''
														});
												return false;
											});

							$('#not-theme')
									.click(
											function() {
												$.gritter
														.add({
															title : 'Welcome home!',
															text : 'You can start your day checking the new messages.',
															image : 'images/small-icons/svg/map2.svg',
															imageSize : 45,
															class_name : 'clean',
															time : ''
														});
												return false;
											});

							$('#not-sticky')
									.click(
											function() {
												$.gritter
														.add({
															title : 'Sticky Note',
															text : "Your daily goal is 130 new code lines, don't forget to update your work.",
															image : 'images/small-icons/svg/flag.svg',
															imageSize : 45,
															class_name : 'clean',
															sticky : true,
															time : ''
														});
												return false;
											});

							$('#not-text')
									.click(
											function() {
												$.gritter
														.add({
															title : 'Just Text',
															text : 'This is a simple Gritter Notification.',
															class_name : 'clean',
															time : ''
														});
												return false;
											});

							/*Positions*/
							$('#not-tr')
									.click(
											function() {
												$.gritter
														.removeAll({
															after_close : function() {
																$.gritter
																		.add({
																			position : 'top-right',
																			title : 'Top Right',
																			text : 'This is a simple Gritter Notification.',
																			class_name : 'clean'
																		});
															}
														});
												return false;
											});

							$('#not-tl')
									.click(
											function() {
												$.gritter
														.removeAll({
															after_close : function() {
																$.gritter
																		.add({
																			position : 'top-left',
																			title : 'Top Left',
																			text : 'This is a simple Gritter Notification.',
																			class_name : 'clean'
																		});
															}
														});
												return false;
											});

							$('#not-bl')
									.click(
											function() {
												$.gritter
														.removeAll({
															after_close : function() {
																$.gritter
																		.add({
																			position : 'bottom-left',
																			title : 'Bottom Left',
																			text : 'This is a simple Gritter Notification.',
																			class_name : 'clean'
																		});
															}
														});
												return false;
											});

							$('#not-br')
									.click(
											function() {
												$.gritter
														.removeAll({
															after_close : function() {
																$.gritter
																		.add({
																			position : 'bottom-right',
																			title : 'Bottom Right',
																			text : 'This is a simple Gritter Notification.',
																			class_name : 'clean'
																		});
															}
														});
												return false;
											});

							/*Social Gritters*/
							$('#not-facebook')
									.click(
											function() {
												$.gritter
														.add({
															title : 'You have comments!',
															text : 'You can start your day checking the new messages.',
															image : 'images/fb-icon.png',
															class_name : 'facebook'
														});
												return false;
											});

							$('#not-twitter')
									.click(
											function() {
												$.gritter
														.add({
															title : 'New followers!',
															text : 'You can start your day checking the new messages.',
															image : 'images/tw-icon.png',
															class_name : 'twitter'
														});
												return false;
											});

							$('#not-google-plus')
									.click(
											function() {
												$.gritter
														.add({
															title : 'You have new +1!',
															text : 'You can start your day checking the new messages.',
															image : 'images/gp-icon.png',
															class_name : 'google-plus'
														});
												return false;
											});

							$('#not-dribbble')
									.click(
											function() {
												$.gritter
														.add({
															title : 'New comments!',
															text : 'You can start your day checking the new comments.',
															image : 'images/db-icon.png',
															class_name : 'dribbble'
														});
												return false;
											});

							$('#not-flickr')
									.click(
											function() {
												$.gritter
														.add({
															title : 'New comments!',
															text : 'You can start your day checking the new comments.',
															image : 'images/fl-icon.png',
															class_name : 'flickr'
														});
												return false;
											});

							$('#not-linkedin')
									.click(
											function() {
												$.gritter
														.add({
															title : 'New comments!',
															text : 'You can start your day checking the new comments.',
															image : 'images/in-icon.png',
															class_name : 'linkedin'
														});
												return false;
											});

							$('#not-youtube')
									.click(
											function() {
												$.gritter
														.add({
															title : 'New comments!',
															text : 'You can start your day checking the new comments.',
															image : 'images/yt-icon.png',
															class_name : 'youtube'
														});
												return false;
											});

							$('#not-pinterest')
									.click(
											function() {
												$.gritter
														.add({
															title : 'New comments!',
															text : 'You can start your day checking the new comments.',
															image : 'images/pi-icon.png',
															class_name : 'pinterest'
														});
												return false;
											});

							$('#not-github')
									.click(
											function() {
												$.gritter
														.add({
															title : 'New forks!',
															text : 'You can start your day checking the new comments.',
															image : 'images/gh-icon.png',
															class_name : 'github'
														});
												return false;
											});

							$('#not-tumblr')
									.click(
											function() {
												$.gritter
														.add({
															title : 'New comments!',
															text : 'You can start your day checking the new comments.',
															image : 'images/tu-icon.png',
															class_name : 'tumblr'
														});
												return false;
											});

							/*Colors*/
							$('#not-primary')
									.click(
											function() {
												$.gritter
														.add({
															title : 'Primary',
															text : 'This is a simple Gritter Notification.',
															class_name : 'primary'
														});
											});

							$('#not-success')
									.click(
											function() {
												$.gritter
														.add({
															title : 'Success',
															text : 'This is a simple Gritter Notification.',
															class_name : 'success'
														});
											});

							$('#not-info')
									.click(
											function() {
												$.gritter
														.add({
															title : 'Info',
															text : 'This is a simple Gritter Notification.',
															class_name : 'info'
														});
											});

							$('#not-warning')
									.click(
											function() {
												$.gritter
														.add({
															title : 'Warning',
															text : 'This is a simple Gritter Notification.',
															class_name : 'warning'
														});
											});

							$('#not-danger')
									.click(
											function() {
												$.gritter
														.add({
															title : 'Danger',
															text : 'This is a simple Gritter Notification.',
															class_name : 'danger'
														});
											});

							$('#not-prusia')
									.click(
											function() {
												$.gritter
														.add({
															title : 'Prusia',
															text : 'This is a simple Gritter Notification.',
															class_name : 'prusia'
														});
											});

							$('#not-dark')
									.click(
											function() {
												$.gritter
														.add({
															title : 'Dark',
															text : 'This is a simple Gritter Notification.',
															class_name : 'dark'
														});
											});

						});
	</script>


	<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
	<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
	<script type="text/javascript"
		src="js/jquery.flot/jquery.flot.resize.js"></script>
	<script type="text/javascript"
		src="js/jquery.flot/jquery.flot.labels.js"></script>
</body>
</html>
