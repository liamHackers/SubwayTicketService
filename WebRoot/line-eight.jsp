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

<title>八号线</title>
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
									<li><a href="findLineSix.do">六号线</a></li>
									<li><a href="line-seven.jsp">七号线</a></li>
									<li class="active"><a href="findLineEight.do">八号线</a></li>
									<li><a href="findLineGF.do">广佛线</a></li>
								</ul></li>
							<li><a href="#"><i class="fa fa-list-alt"></i><span>订单管理</span></a>
								<ul class="sub-menu">
									<li><a href="order-buyticket.jsp">购买车票</a></li>
									<!-- <li><a href="#form-wizard.jsp">差票补退</a></li> -->
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
							<!--  <li><a href="#"><i class="fa fa-map-marker nav-icon"></i><span>地图</span></a>
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
						<li class="active">八号线</li>
					</ol>
				</div>

				<ul class="cbp_tmtimeline">

					<c:forEach var="lineeight" items="${lineeight}">
						<li><time class="cbp_tmtime" datetime="enName 站点">
								<span>${lineeight.enName}</span> <span>${lineeight.stationName}</span>
							</time>
							<div class="cbp_tmicon cbp_tmicon-phone"></div>
							<div class="cbp_tmlabel">
								<h2>${lineeight.stationName}</h2>
								<p>
									首末班车时间<br>${lineeight.time}<br>
								<h4 class="panel-title">
									<i class="fa fa-angle-right"></i> 站点资讯
								</h4>
								出口：${lineeight.exitinfo}<br> 公交站：${lineeight.businfo}<br>
								</p>
							</div></li>
					</c:forEach>

				</ul>

			</div>

		</div>

	</div>
	<!-- Right Chat-->
	<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right side-chat">
		<div class="header">
			<h3>Chat</h3>
		</div>
		<div class="sub-header">
			<div class="icon">
				<i class="fa fa-user"></i>
			</div>
			<p>Online (4)</p>
		</div>
		<div class="content">
			<p class="title">Family</p>
			<ul class="nav nav-pills nav-stacked contacts">
				<li class="online"><a href="#"><i class="fa fa-circle-o"></i>
						Michael Smith</a></li>
				<li class="online"><a href="#"><i class="fa fa-circle-o"></i>
						John Doe</a></li>
				<li class="online"><a href="#"><i class="fa fa-circle-o"></i>
						Richard Avedon</a></li>
				<li class="busy"><a href="#"><i class="fa fa-circle-o"></i>
						Allen Collins</a></li>
			</ul>

			<p class="title">Friends</p>
			<ul class="nav nav-pills nav-stacked contacts">
				<li class="online"><a href="#"><i class="fa fa-circle-o"></i>
						Jaime Garzon</a></li>
				<li class="outside"><a href="#"><i class="fa fa-circle-o"></i>
						Dave Grohl</a></li>
				<li><a href="#"><i class="fa fa-circle-o"></i> Victor Jara</a></li>
			</ul>

			<p class="title">Work</p>
			<ul class="nav nav-pills nav-stacked contacts">
				<li><a href="#"><i class="fa fa-circle-o"></i> Ansel Adams</a></li>
				<li><a href="#"><i class="fa fa-circle-o"></i> Gustavo
						Cerati</a></li>
			</ul>

		</div>
		<div id="chat-box">
			<div class="header">
				<span>Richard Avedon</span> <a class="close"><i
					class="fa fa-times"></i></a>
			</div>
			<div class="messages nano nscroller">
				<div class="content">
					<ul class="conversation">
						<li class="odd">
							<p>Hi Jane, how are you?</p>
						</li>
						<li class="text-right">
							<p>Hello I was looking for you</p>
						</li>
						<li class="odd">
							<p>Tell me what you need?</p>
						</li>
						<li class="text-right">
							<p>Sorry, I'm late... see you</p>
						</li>
						<li class="odd unread">
							<p>OK, call me later...</p>
						</li>
					</ul>
				</div>
			</div>
			<div class="chat-input">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Enter a message..."> <span
						class="input-group-btn">
						<button type="button" class="btn btn-primary">Send</button>
					</span>
				</div>
			</div>
		</div>
	</nav>

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
	<script src="js/jquery.timeline/js/modernizr.custom.js"></script>


	<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
	<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
	<script type="text/javascript"
		src="js/jquery.flot/jquery.flot.resize.js"></script>
	<script type="text/javascript"
		src="js/jquery.flot/jquery.flot.labels.js"></script>
</body>
</html>
