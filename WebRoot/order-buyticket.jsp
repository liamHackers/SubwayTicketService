<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="images/icon.png">

<title>购买车票</title>
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
	href="js/bootstrap.switch/bootstrap-switch.min.css" />
<link rel="stylesheet" type="text/css"
	href="js/jquery.select2/select2.css" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap.slider/css/slider.css" />
<link rel="stylesheet" type="text/css" href="js/fuelux/css/fuelux.css">
<link rel="stylesheet" type="text/css"
	href="js/fuelux/css/fuelux-responsive.min.css">

<link href="css/style.css" rel="stylesheet" />
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=3yUjr220QNd7RS4IseHL2e4lu07eH1cB"></script>
</head>
<body class="animated">
	<div id="allmap" style="display: none"></div>
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
									<li><a href="findLineEight.do">八号线</a></li>
									<li><a href="findLineGF.do">广佛线</a></li>
								</ul></li>
							<li><a href="#"><i class="fa fa-list-alt"></i><span>订单管理</span></a>
								<ul class="sub-menu">
									<li class="active"><a href="order-buyticket.jsp">购买车票</a></li>
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
									alt="Avatar"  src="${user.photoPath }" height="40" width="40" /><span>${user.name }</span>
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
						<li><a href="notice_query.do">主界面</a></li>
						<li>个人中心</li>
						<li class="active">修改密码</li>
					</ol>
				</div>


				<div class="row wizard-row">
					<div class="col-md-12 fuelux">
						<div class="block-wizard">
							<div id="wizard1" class="wizard wizard-ux">
								<ul class="steps">
									<li data-target="#step1" class="active">第一步<span
										class="chevron"></span></li>
									<li data-target="#step2">第二步<span class="chevron"></span></li>
									<li data-target="#step3">第三步<span class="chevron"></span></li>

								</ul>
								<div class="actions">
									<button type="button" class="btn btn-xs btn-prev btn-primary">
										<i class="icon-arrow-left"></i>向前
									</button>
									<button type="button" class="btn btn-xs btn-next btn-primary"
										data-last="结束">
										向后<i class="icon-arrow-right"></i>
									</button>
								</div>
							</div>
							<div class="step-content">
								<form name="getID" class="form-horizontal group-border-dashed"
									data-parsley-namespace="data-parsley-" data-parsley-validate
									novalidate action="getZuoBiao.do">
									<div class="step-pane active" id="step1">
										<div class="form-group no-padding">
											<div class="col-sm-7">
												<h3 class="hthin">站点选择</h3>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">起始站</label>
											<div class="col-sm-6">
												<input type="text" name="stationName1" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label">终点站</label>
											<div class="col-sm-6">
												<input type="text" name="stationName2" />
											</div>
										</div>

										<div class="form-group">
											<div align="center" class="col-sm-offset-2 col-sm-10">

												<a onclick="ajaxTest()"><button type="submit"
														data-wizard="#wizard1" class="btn btn-primary wizard-next">
														下一步<i class="fa fa-caret-right"></i>
													</button></a>
											</div>
										</div>
									</div>
								</form>
								<form name="sureSubmint"
									class="form-horizontal group-border-dashed" action=""
									method="post" data-parsley-namespace="data-parsley-"
									data-parsley-validate novalidate>
									<div class="step-pane" id="step2">
										<div class="form-group no-padding">
											<div class="col-sm-7">
												<h3 class="hthin">车票确认</h3>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label">起始站</label>
											<div class="col-sm-6">
												<div id="fiststation"></div>
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label">终点站</label>
											<div class="col-sm-6">
												<div id="endstation"></div>
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label">票价</label>
											<div class="col-sm-6">
												<div id="luck"></div>
											</div>
										</div>

										<div align="center" class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button data-wizard="#wizard1"
													class="btn btn-default wizard-previous">
													<i class="fa fa-caret-left"></i> 上一步
												</button>
												<a onclick="ajaxSure()"><button data-wizard="#wizard1"
														class="btn btn-primary wizard-next">
														确认购买<i class="fa fa-caret-right"></i>
													</button></a>
											</div>
										</div>
									</div>

								</form>

								<form class="form-horizontal group-border-dashed"
									data-parsley-namespace="data-parsley-" data-parsley-validate
									novalidate>
									<div class="step-pane" id="step3">
										<div class="form-group no-padding">
											<div class="col-sm-6">
												<h3 class="hthin">成功提示</h3>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-12">
												<h2>车票购买成功</h2>

											</div>

										</div>
								</form>

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
	<script type="text/javascript"
		src="js/bootstrap.switch/bootstrap-switch.js"></script>
	<script type="text/javascript" src="js/jquery.select2/select2.min.js"></script>
	<script type="text/javascript"
		src="js/bootstrap.slider/js/bootstrap-slider.js"></script>
	<script type="text/javascript" src="js/fuelux/loader.min.js"></script>
	<script src="js/modernizr.js" type="text/javascript"></script>
	<script type="text/javascript">
		$("#credit_slider").slider().on("slide", function(e) {
			$("#credits").html("$" + e.value);
		});
		$("#rate_slider").slider().on("slide", function(e) {
			$("#rate").html(e.value + "%");
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			//initialize the javascript

			//Fuel UX
			$('.wizard-ux').wizard();

			$('.dropdown-toggle').dropdown();

			$('.wizard-ux').on('changed', function() {
				//delete $.fn.slider;
				$('.bslider').slider();
			});

			$(".wizard-next").click(function(e) {
				var id = $(this).data("wizard");
				$(id).wizard('next');
				e.preventDefault();
			});

			$(".wizard-previous").click(function(e) {
				var id = $(this).data("wizard");
				$(id).wizard('previous');
				e.preventDefault();
			});

			/*Switch*/
			$('.switch').bootstrapSwitch();
			/*Slider*/
			$('.bslider').slider();
			/*Select2*/
			$(".select2").select2({
				width : '100%'
			});
			/*Tags*/
			$(".tags").select2({
				tags : 0,
				width : '100%'
			});

		});
		function ajaxTest() {
			var stationName1 = document.getID.stationName1.value;
			var stationName2 = document.getID.stationName2.value;

			$
					.ajax({
						data : {
							'stationName1' : stationName1,
							'stationName2' : stationName2
						},
						type : "POST",
						dataType : 'json',
						url : "getZuoBiao.do",
						error : function(rtn) {

							alert("获取信息失败!");

						},
						success : function(rtn) {
							/* alert("修改密码失败！"+rtn.startY+":"+rtn.startN+"terminalY"+rtn.terminalY+"terminalN"+rtn.terminalN); */
							var a = rtn.startY;//起始站经度
							var b = rtn.startN;//起始站纬度
							var c = rtn.terminalY;//终点站经度
							var d = rtn.terminalN;//终点站纬度
							var map = new BMap.Map("allmap");
							var pointA = new BMap.Point(a, b); // 创建点坐标A--大渡口区
							var pointB = new BMap.Point(c, d); // 创建点坐标B--江北区
							var distance = (map.getDistance(pointA, pointB))
									.toFixed(2);
							/* alert((map.getDistance(pointA, pointB)).toFixed(2)
									+ ' 米。');
							 */
							$
									.ajax({
										data : {
											'distance' : distance
										},
										type : "POST",
										dataType : 'json',
										url : "getPrice.do",
										error : function(rtn) {

										},
										success : function(rtn) {
											var result1 = "";
											var result2 = "";
											var result3 = "";
											result1 += "<input type='text' class='form-control' readonly='readonly'	name='price' value='"+rtn.price+"'> ";
											result2 += "<input type='text' class='form-control' readonly='readonly'	name='stationName1' value='"+stationName1+"'> ";
											result3 += "<input type='text' class='form-control' readonly='readonly'	name='stationName2' value='"+stationName2+"'> ";
											$("#luck").html(result1);
											$("#fiststation").html(result2);
											$("#endstation").html(result3);

										}
									});

						}
					});
		}

		function ajaxSure() {
			var price = document.sureSubmint.price.value;
			$.ajax({
				data : {
					'price' : price
				},
				type : "POST",
				dataType : 'json',
				url : "buyticket.do",
				error : function(rtn) {
					alert("余额不足，请及时充值！");
					location.href = "order-buyticket.jsp";
				},
				success : function(rtn) {

				}
			});
		}
	</script>
	<script type="text/javascript">
		var map = new BMap.Map("container");
		var pt1 = new BMap.Point(116.404, 39.915);
		var pt2 = new BMap.Point(116.410, 39.920);
		var result = BMapLib.GeoUtils.getDistance(pt1, pt2);
		alert(result);
	</script>

	<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
	<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
	<script type="text/javascript"
		src="js/jquery.flot/jquery.flot.resize.js"></script>
	<script type="text/javascript"
		src="js/jquery.flot/jquery.flot.labels.js"></script>
</body>
</html>
