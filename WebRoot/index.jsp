<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="shortcut icon" href="images/icon.png">

	<title>中国中车</title>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,400italic,700,800' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway:300,200,100' rel='stylesheet' type='text/css'>

	<!-- Bootstrap core CSS -->
	<link href="js/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="js/jquery.gritter/css/jquery.gritter.css" />
	<link rel="stylesheet" href="fonts/font-awesome-4/css/font-awesome.min.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	  <script src="../../assets/js/html5shiv.js"></script>
	  <script src="../../assets/js/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="js/jquery.nanoscroller/nanoscroller.css" />

    <link rel="stylesheet" type="text/css" href="js/jquery.codemirror/lib/codemirror.css">
  <link rel="stylesheet" type="text/css" href="js/jquery.codemirror/theme/ambiance.css">
  <link rel="stylesheet" type="text/css" href="js/jquery.vectormaps/jquery-jvectormap-1.2.2.css"  media="screen"/>
  
	<link href="css/style.css" rel="stylesheet" />	
	
	<link href="css/slider.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]><script src="js/html5.js"></script><![endif]-->
    <script type='text/javascript' src='js/jquery-1.7.2.min.js'></script>
    <script type='text/javascript' src='js/common.js'></script>
    <script type='text/javascript' src='js/slider.js'></script>
	
	




	
	 <style>
/* @import url(http://fonts.googleapis.com/css?family=Anaheim); */

*{
  margin: 0;
  padding: 0;
  outline: none;
  border: none;
	box-sizing: border-box;
}
*:before,
*:after{
	box-sizing: border-box;
}
html,
body{
	min-height: 100%;
}
body{
	background-image: radial-gradient(mintcream 0%, lightgray 100%);
}
h1{
	display: table;
	margin: 5% auto 0;
	text-transform: uppercase;
	font-family: 'Anaheim', sans-serif;
	font-size: 4em;
	font-weight: 400;
	text-shadow: 0 1px white, 0 2px black;
}
.container{
	margin: 4% auto;
	width: 210px;
	height: 140px;
	position: relative;
	perspective: 1000;
}
#carousel{
	width: 100%;
	height: 100%;
	position: absolute;
	transform-style: preserve-3d;
	animation: rotation 20s infinite linear;
}
#carousel:hover{
	animation-play-state: paused;
}
#carousel figure{
	display: block;
	position: absolute;
	width: 186px;
	height: 116px;
	left: 10px;
	top: 10px;
	background: black;
	overflow: hidden;
	border: solid 5px black;
}
#carousel figure:nth-child(1){transform: rotateY(0deg) translateZ(288px);}
#carousel figure:nth-child(2) { transform: rotateY(40deg) translateZ(288px);}
#carousel figure:nth-child(3) { transform: rotateY(80deg) translateZ(288px);}
#carousel figure:nth-child(4) { transform: rotateY(120deg) translateZ(288px);}
#carousel figure:nth-child(5) { transform: rotateY(160deg) translateZ(288px);}
#carousel figure:nth-child(6) { transform: rotateY(200deg) translateZ(288px);}
#carousel figure:nth-child(7) { transform: rotateY(240deg) translateZ(288px);}
#carousel figure:nth-child(8) { transform: rotateY(280deg) translateZ(288px);}
#carousel figure:nth-child(9) { transform: rotateY(320deg) translateZ(288px);}

img{
	-webkit-filter: grayscale(1);
	cursor: pointer;
	transition: all .5s ease;
}
img:hover{
	-webkit-filter: grayscale(0);
  transform: scale(1.2,1.2);
}

@keyframes rotation{
	from{
		transform: rotateY(0deg);
	}
	to{
		transform: rotateY(360deg);
	}
}
</style>

<script src="js/prefixfree.min.js"></script>
    
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
									<li class="active"><a href="notice_query.do">主界面</a></li>
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
									<!-- <li><a href="#http://qr.topscan.com/api.php?text=？">客服热线</a></li> -->
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
								class="dropdown-toggle" data-toggle="dropdown">
								 <img alt="Avatar" src="${user.photoPath }" height="40" width="40"> 
								
								<span>${user.name }</span> <b class="caret"></b></a>
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
				<div class="row">

					<c:forEach var="u" items="${notice}">

						<div class="col-md-3 col-sm-6">
							<div class="fd-tile detail clean tile-purple">
								<div class="content">
									<h1 class="text-left">${u.title }</h1>
									<p>${u.time }</p>
								</div>
								<div class="icon">
									<i class="fa fa-flag"></i>
								</div>
								<a class="details" href="getNotice.do?noticeID=${u.noticeID }">详情
									<span><i class="fa fa-arrow-circle-right pull-right"></i></span>
								</a>
							</div>
						</div>

					</c:forEach>


				</div>
				<div class="row">
					<div class="col-md-7">
						<div class="block-flat">
							<div class="header"></div>
							<div class="content full-width">
								<div id="chart3-legend" class="legend-container"></div>

								<div class="container">
									<div id="carousel">
										<figure>
											<img src="images/lunbo/1.jpg" alt="">
										</figure>
										<figure>
											<img src="images/lunbo/2.jpg" alt="">
										</figure>
										<figure>
											<img src="images/lunbo/3.jpg" alt="">
										</figure>

										<figure>
											<img src="images/lunbo/4.jpg" alt="">
										</figure>
										<figure>
											<img src="images/lunbo/5.jpg" alt="">
										</figure>
										<figure>
											<img src="images/lunbo/6.jpg" alt="">
										</figure>

										<figure>
											<img src="images/lunbo/7.jpg" alt="">
										</figure>
										<figure>
											<img src="images/lunbo/8.png" alt="">
										</figure>
										<figure>
											<img src="images/lunbo/9.jpg" alt="">
										</figure> 
									</div>
								</div>

								<script src='js/none.js'></script>

								<script src="js/index.js"></script>
								<div style="text-align:center;clear:both">
									<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
									<script src="/follow.js" type="text/javascript"></script>
								</div>

								<div class="counter-detail">
									<h5 align="center">努力把中国中车建设成为以轨道交通装备为核心，跨国经营、全球领先的一流企业集团。</h5>
								</div>
							</div>
						</div>
						<div class="block-flat">
							<div class="header">
								<h3>地铁新闻</h3>
							</div>
							<div class="content">
								<div class="table-responsive">
									<table class="no-border hover list">
										<tbody class="no-border-y">

											<c:forEach var="n" items="${news}">
												<tr class="items">
													<td style="width: 10%;"><span
														class="label label-warning">${n.point }</span></td>
													<td><p>
															<strong>${n.title }</strong>
														</p></td>
													<td class="text-right" style="width: 15%;"><a
														class="label label-default"
														href="getNew.do?newID=${n.newID }"><i
															class="fa fa-hand-o-up"></i></a></td>
												</tr>
											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
						</div>

					</div>
					<div class="col-md-5">
						<div class="block-flat">
							<div class="header">
								<h3>地铁安全须知</h3>
							</div>
							<div class="content">
								${safeNotice.content1}
							</div>

						</div>
						<div class="block-flat dark-box visitors">
							<div align="center">
								<!-- src="videos/AD.mp4" --><video  style="height: 240px;"
									controls="controls" poster="images/lunbo/10.jpg" src="videos/AD.mp4"></video>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-7">
						<div class="block ">
							<div class="content  no-padding" id="world-map"
								style="height: 320px;">
								<h2>公司简介</h2>
								<br>
								<hr>
								${conpanyIntroduction.content1}
							</div>
							<div class="content">
								<table class="no-border">
									<thead class="no-border">
										<tr>
											<th style="width:50%;"></th>
											<th></th>
											<th></th>
											<th class="text-right"></th>
										</tr>
									</thead>
									<tbody class="no-border-x no-border-y">
										<tr>
											<td style="width:30%;"></td>
											<td></td>
											<td></td>
											<td class="text-right"></td>
										</tr>
										<tr>
											<td style="width:30%;"></td>
											<td></td>
											<td></td>
											<td class="text-right"></td>
										</tr>
										<tr>
											<td style="width:30%;"></td>
											<td></td>
											<td></td>
											<td class="text-right"></td>
										</tr>
										<tr>
											<td style="width:30%;"></td>
											<td></td>
											<td></td>
											<td class="text-right"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="block widget-notes">
							<div class="header dark">
								<h4>中车网站群</h4>
							</div>
							<div class="content">
								<div class="paper">
									<a href="http://www.crrcgc.cc/" target="_black">中车总站</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/ts" target="_black">唐山公司</a>&nbsp;&nbsp;&nbsp;<a
										http://www.crrcgc.cc/sy/" target="_black">沈阳公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/dl" target="_black">大连公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.qrrs.chinacnr.com/" target="_black">齐齐哈尔公司</a><br>
									<a href="http://www.crrcgc.cc/gd" target="_black">广东公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crc.chinacnr.com/" target="_black">长客公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/dt" target="_black">大同公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/ty" target="_black">太原公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/sjz" target="_black">石家庄公司</a><br>
									<a href="http://www.crrcgc.cc/cj" target="_black">长江公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.yonge.chinacnr.com/yonge/Index.asp"
										target="_black">永济公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/sd" target="_black">山东公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/ly" target="_black">洛阳公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/xa" target="_black">西安公司</a><br>
									<a href="http://www.crrcgc.cc/gz" target="_black">广州公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/lz" target="_black">兰州公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/zy" target="_black">资阳公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/ms" target="_black">眉山公司</a>&nbsp;&nbsp;&nbsp;<a
										href="http://www.crrcgc.cc/cd" target="_black">成都公司</a>
								</div>
								<div class="header dark">
									<h3>&nbsp;</h3>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>

	</div>
<img src="${basePath}${imagesPath}">
	<script src="js/jquery.js"></script>
	<script src="js/jquery.cookie/jquery.cookie.js"></script>
  <script src="js/jquery.pushmenu/js/jPushMenu.js"></script>
	<script type="text/javascript" src="js/jquery.nanoscroller/jquery.nanoscroller.js"></script>
	<script type="text/javascript" src="js/jquery.sparkline/jquery.sparkline.min.js"></script>
  <script type="text/javascript" src="js/jquery.ui/jquery-ui.js" ></script>
	<script type="text/javascript" src="js/jquery.gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="js/behaviour/core.js"></script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
  <script src="js/bootstrap/dist/js/bootstrap.min.js"></script>
      <style type="text/css">
    #color-switcher{
      position:fixed;
      background:#272930;
      padding:10px;
      top:50%;
      right:0;
      margin-right:-109px;
    }
    
    #color-switcher .toggle{
      cursor:pointer;
      font-size:15px;
      color: #FFF;
      display:block;
      position:absolute;
      padding:4px 10px;
      background:#272930;
      width:25px;
      height:30px;
      left:-24px;
      top:22px;
    }
    
    #color-switcher p{color: rgba(255, 255, 255, 0.6);font-size:12px;margin-bottom:3px;}
    #color-switcher .palette{padding:1px;}
    #color-switcher .color{width:15px;height:15px;display:inline-block;cursor:pointer;}
    #color-switcher .color.purple{background:#7761A7;}
    #color-switcher .color.green{background:#19B698;}
    #color-switcher .color.red{background:#EA6153;}
    #color-switcher .color.blue{background:#54ADE9;}
    #color-switcher .color.orange{background:#FB7849;}
    #color-switcher .color.prusia{background:#476077;}
    #color-switcher .color.yellow{background:#fec35d;}
    #color-switcher .color.pink{background:#ea6c9c;}
    #color-switcher .color.brown{background:#9d6835;}
    #color-switcher .color.gray{background:#afb5b8;}
	#pic{
        margin:0 auto;
        width:800px;
        padding:0;
        border:1px solid #333;
    }
    #pic img{
        max-width:780px;
        width:expression(document.body.clientWidth>document.getElementById("pic").scrollWidth*9/10? "780px": "auto" );
        border:1px dashed #000;
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
    <div class="toggle"><i class="fa fa-angle-left"></i></div>
  </div>

  <script type="text/javascript">
  
 

  
  
    var link = $('link[href="css/style.css"]');
    
    if($.cookie("css")) {
      link.attr("href",'css/style-' + $.cookie("css") + '.css');
    }
    
    $(function(){
      $("#color-switcher .toggle").click(function(){
        var s = $(this).parent();
        if(s.hasClass("open")){
          s.animate({'margin-right':'-109px'},400).toggleClass("open");
        }else{
          s.animate({'margin-right':'0'},400).toggleClass("open");
        }
      });
      
      $("#color-switcher .color").click(function(){
        var color = $(this).data("color");
        $("body").fadeOut(function(){
          //link.attr('href','css/style-' + color + '.css');
          $.cookie("css", color, {expires: 365, path: '/'});
          window.location.href = "";
          $(this).fadeIn("slow");
        });
      });
    });
	
  </script>   <script src="js/jquery.codemirror/lib/codemirror.js"></script>
  <script src="js/jquery.codemirror/mode/xml/xml.js"></script>
  <script src="js/jquery.codemirror/mode/css/css.js"></script>
  <script src="js/jquery.codemirror/mode/htmlmixed/htmlmixed.js"></script>
  <script src="js/jquery.codemirror/addon/edit/matchbrackets.js"></script>
  <script src="js/jquery.vectormaps/jquery-jvectormap-1.2.2.min.js"></script>
  <script src="js/jquery.vectormaps/maps/jquery-jvectormap-world-mill-en.js"></script>
  <script src="js/behaviour/dashboard.js"></script>
  
  
<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.resize.js"></script>
<script type="text/javascript" src="js/jquery.flot/jquery.flot.labels.js"></script>
</body>
</html>
