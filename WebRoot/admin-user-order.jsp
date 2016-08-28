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

<title>用户订单信息</title>
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

<link rel="stylesheet" type="text/css"
	href="js/jquery.x-editable/dist/bootstrap3-editable/css/bootstrap-editable.css" />
<link rel="stylesheet" type="text/css"
	href="js/jquery.x-editable/src/inputs-ext/typeaheadjs/lib/typeahead.js-bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="js/jquery.select2/select2.css" />
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
							<li><a href="#"><i class="fa fa-home"></i><span>用户管理</span></a>
								<ul class="sub-menu">
									<li><a href="findAll.do">查询用户</a></li>
									<li><a href="findDel.do">删除用户</a></li>
									<li class="active"><a href="findOrder.do">用户订单信息</a></li>
								</ul></li>
							<li><a href="#"><i class="fa fa-desktop"></i><span>新闻管理</span></a>
								<ul class="sub-menu">
									<li><a href="findPageAllNew.do">查看新闻</a></li>
									<li><a href="admin-news-publish.jsp">发布新闻</a></li>

								</ul></li>
							<li><a href="#"><i class="fa fa-smile-o"></i><span>公告管理</span></a>
								<ul class="sub-menu">
									<li><a href="findAllNotice.do">查看公告</a></li>
									<li><a href="admin-notice-publish.jsp">发布公告</a></li>
								</ul></li>
							<li><a href="#"><i class="fa fa-list-alt"></i><span>线路信息</span></a>
								<ul class="sub-menu">
									<li><a href="admin-line-update.jsp">修改线路信息</a></li>

								</ul></li>

							<li><a href="#"><i class="fa fa-smile-o"></i><span>其他</span></a>
								<ul class="sub-menu">
									<li><a href="findPageAllMessage.do">查看留言板</a></li>
									<li><a href="admin-order-ticketintroduction.jsp">修改票务简介</a></li>
									<!-- <li><a href="admin-order-service.jsp">修改客服</a></li> -->
									<li><a href="admin-order-conpanyintroduction.jsp">修改公司简介</a></li>
									<li><a href="adminSafeNotice.do">修改安全须知</a></li>
									<li><a href="admin-order-buyticket.jsp">修改购票须知</a></li>
									<li><a href="admin-order-operation.jsp">修改操作指南</a></li>
									<li><a href="admin-order-aboutsystem.jsp">修改关于系统信息</a></li>
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
									alt="Avatar" src="images/avatar6-2.jpg" /><span>${admin.aName }</span>
									<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<!-- <li><a href="personal-information.jsp">个人信息</a></li>
									<li><a href="#">购票信息</a></li> -->
									<li class="divider"></li>
									<li><a href="login_admin.jsp">退出登录</a></li>
								</ul></li>
						</ul>

					</div>
					<!--/.nav-collapse animate-collapse -->
				</div>
			</div>


			<div class="cl-mcont">
				<div class="page-head">
					<ol class="breadcrumb">
						<li><a href="#">主界面</a></li>
						<li><a>用户管理</a></li>
						<li class="active">用户订单信息</li>
					</ol>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="block-flat">
							<div class="header">
								<h3>用户订单信息</h3>
							</div>
							<div class="content">
								<div class="table-responsive">
									<table style="clear: both"
										class="table table-bordered table-striped" id="user">
										<tbody>
											<tr>
												<td width="35%">用户名</td>
												<td>订单号</td>
												<td>起点站</td>
												<td>终点站</td>
												<td>应付金额</td>

											</tr>
											<c:forEach var="orders" items="${orders }">
												<tr>
													<td>${orders.user.userName }</td>
													<td>${orders.orderID }</td>
													<td>${orders.start }</td>
													<td>${orders.terminal }</td>
													<td>${orders.price }</td>

												</tr>


											</c:forEach>

											<div class="compose">
												<c:choose>
													<c:when test="${page.pageNo!=1}">
														<a class="btn btn-flat btn-primary"
															href="findOrder.do?pageNo=${page.previousPageNo }">上一页</a>
													</c:when>
													<c:otherwise>
														<a class="btn btn-flat btn-primary" disabled="disabled">上一页</a>
													</c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${page.pageNo != page.totalPages}">
														<a class="btn btn-flat btn-primary"
															href="findOrder.do?pageNo=${page.nextPageNo }">下一页</a>
													</c:when>
													<c:otherwise>
														<a class="btn btn-flat btn-primary" disabled="disabled">下一页</a>
													</c:otherwise>
												</c:choose>
												
													<form  action="searchOrder.do" method="post">
														<input type="text" name="orderID" /> <input
															class="btn btn-flat btn-primary" type="submit" value="搜索" />

													</form>
												
											</div>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
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
	<script type="text/javascript"
		src="js/jquery.x-editable/dist/bootstrap3-editable/js/bootstrap-editable.js"></script>
	<script
		src="js/jquery.x-editable/src/inputs/combodate/lib/moment.min.js"></script>
	<script
		src="js/jquery.x-editable/src/inputs-ext/typeaheadjs/lib/typeahead.js"></script>
	<script
		src="js/jquery.x-editable/src/inputs-ext/typeaheadjs/typeaheadjs.js"></script>
	<script src="js/jquery.select2/select2.min.js"></script>


	<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
	<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
	<script type="text/javascript"
		src="js/jquery.flot/jquery.flot.resize.js"></script>
	<script type="text/javascript"
		src="js/jquery.flot/jquery.flot.labels.js"></script>
</body>
</html>
