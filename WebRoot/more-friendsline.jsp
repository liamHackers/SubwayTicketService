<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="images/icon.png">

<title>二号线</title>
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
									<!-- <li><a href="#layout-topbar.jsp">在线充值</a></li>
									<li><a href="#layout-topbar.jsp">到站提醒</a></li> -->
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
									<!-- <li><a href="#tables-xeditable.jsp">客服热线</a></li> -->
									<li><a href="messageBoad_query.do">留言板</a></li>
								</ul></li>
							<li><a href="#"><i class="fa fa-map-marker nav-icon"></i><span>地图</span></a>
								<ul class="sub-menu">
									<li><a href="#maps.jsp">地图信息</a></li>
									<li><a href="#vector-maps.jsp">个人定位</a></li>
								</ul></li>

							<li><a href="#typography.jsp"><i
									class="fa fa-text-height"></i><span>查询路线</span></a></li>
							<li><a href="#charts.jsp"><i class="fa fa-bar-chart-o"></i><span>客服投诉</span></a></li>
							<li><a href="#"><i class="fa fa-file"></i><span>更多功能</span></a>
								<ul class="sub-menu">
									<li><a href="more-wechat.jsp">官方微信</a></li>
									<li><a
										href="http://weibo.com/p/1006065618105325/home?from=page_100606&mod=TAB"
										target="_black">官方微博</a></li>
									<li class="active"><a href="more-friendsline.jsp">友情链接</a></li>
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
						<li><a href="#">更多</a></li>
						<li class="active">友情链接</li>
					</ol>
				</div>



				<li id="data-static-friends-0" class="friend-item"><a
					href="http://crab.baidu.com/" target="_blank" data-skip="50"
					id="50-link">
						<div
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/38dbb6fd5266d016f48972be902bd40734fa3590.jpg?timestamp=1461035633)"></div>
						<span class="friend-name">Crab移动产品服务平台</span>
				</a></li>
				<li id="data-static-friends-1" class="friend-item"><a
					href="http://www.10086si.com/" target="_blank" data-skip="22"
					id="22-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/d31b0ef41bd5ad6ecda7900184cb39dbb7fd3cfa.jpg?timestamp=1435138438)"></div>
						<span class="friend-name">志晴短信</span>
				</a></li>
				<li id="data-static-friends-2" class="friend-item"><a
					href="http://www.bignox.com/" target="_blank" data-skip="23"
					id="23-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/a08b87d6277f9e2f77728ae31a30e924b999f392.jpg?timestamp=1461035551)"></div>
						<span class="friend-name">夜神模拟器</span>
				</a></li>
				<li id="data-static-friends-3" class="friend-item"><a
					href="http://yuyin.baidu.com/" target="_blank" data-skip="24"
					id="24-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/ac345982b2b7d0a2dd3fab47ceef76094a369a72.jpg?timestamp=1461035543)"></div>
						<span class="friend-name">百度语音开放平台</span>
				</a></li>
				<li id="data-static-friends-4" class="friend-item"><a
					href="http://www.appcan.cn/" target="_blank" data-skip="25"
					id="25-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/30adcbef76094b36432daf33a6cc7cd98c109db5.jpg?timestamp=1436164269)"></div>
						<span class="friend-name">AppCan</span>
				</a></li>
				<li id="data-static-friends-5" class="friend-item"><a
					href="http://www.god256.com/" target="_blank" data-skip="26"
					id="26-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/d4628535e5dde7113841aa28a2efce1b9c166159.jpg?timestamp=1435923893)"></div>
						<span class="friend-name">微信群发助手</span>
				</a></li>
				<li id="data-static-friends-6" class="friend-item"><a
					href="http://www.bmob.cn/" target="_blank" data-skip="27"
					id="27-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/e850352ac65c10382d31251cb7119313b17e89a5.jpg?timestamp=1435924125)"></div>
						<span class="friend-name">Bmob后端云</span>
				</a></li>
				<li id="data-static-friends-7" class="friend-item"><a
					href="http://www.windows.sc/" target="_blank" data-skip="28"
					id="28-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/dc54564e9258d109003b7176d458ccbf6d814d1e.jpg?timestamp=1436181550)"></div>
						<span class="friend-name">Windows开发者服务平台</span>
				</a></li>
				<li id="data-static-friends-8" class="friend-item"><a
					href="http://push.baidu.com/" target="_blank" data-skip="31"
					id="31-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/cdbf6c81800a19d8ae7f250935fa828ba61e46b9.jpg?timestamp=1461035520)"></div>
						<span class="friend-name">百度云推送</span>
				</a></li>
				<li id="data-static-friends-9" class="friend-item"><a
					href="http://wex5.com/" target="_blank" data-skip="33" id="33-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/738b4710b912c8fc313112adfa039245d7882194.jpg?timestamp=1440067340)"></div>
						<span class="friend-name">起步软件</span>
				</a></li>
				<li id="data-static-friends-10" class="friend-item"><a
					href="http://zs.91.com/" target="_blank" data-skip="41"
					id="41-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/622762d0f703918fcf06b166573d269758eec443.jpg?timestamp=1461035712)"></div>
						<span class="friend-name">91助手</span>
				</a></li>
				<li id="data-static-friends-11" class="friend-item"><a
					href="http://www.tenxcloud.com" target="_blank" data-skip="46"
					id="46-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/6a63f6246b600c33ee0a325e1d4c510fd9f9a131.jpg?timestamp=1461035486)"></div>
						<span class="friend-name">时速云</span>
				</a></li>
				<li id="data-static-friends-12" class="friend-item"><a
					href="http://www.finalshares.com/" target="_blank" data-skip="47"
					id="47-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/a686c9177f3e67091399acff3cc79f3df8dc5511.jpg?timestamp=1461035507)"></div>
						<span class="friend-name">极分享</span>
				</a></li>
				<li id="data-static-friends-13" class="friend-item"><a
					href="http://yaq.qq.com" target="_blank" data-skip="49"
					id="49-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/9e3df8dcd100baa1ae4f28004010b912c8fc2e2d.jpg?timestamp=1461035453)"></div>
						<span class="friend-name">腾讯御安全</span>
				</a></li>
				<li id="data-static-friends-14" class="friend-item"><a
					href="http://dev.analysys.cn" target="_blank" data-skip="51"
					id="51-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/c8ea15ce36d3d53959e35e353d87e950342ab06e.jpg?timestamp=1462530098)"></div>
						<span class="friend-name">易观智库</span>
				</a></li>
				<li id="data-static-friends-15" class="friend-item"><a
					href="http://www.datagrand.com/" target="_blank" data-skip="52"
					id="52-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/a08b87d6277f9e2f525593e21830e924b999f3fc.jpg?timestamp=1463454543)"></div>
						<span class="friend-name">达观数据</span>
				</a></li>
				<li id="data-static-friends-16" class="friend-item"><a
					href="http://developer.baidu.com/map/index.php" target="_blank"
					data-skip="3" id="3-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/f31fbe096b63f62414c4cfe88244ebf81b4ca344.jpg?timestamp=1435138704)"></div>
						<span class="friend-name">百度LBS开放平台</span>
				</a></li>
				<li id="data-static-friends-17" class="friend-item"><a
					href="http://www.easemob.com/" target="_blank" data-skip="19"
					id="19-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/b64543a98226cffc2d954259bc014a90f703ea9a.jpg?timestamp=1444297991)"></div>
						<span class="friend-name">环信即时通讯云</span>
				</a></li>
				<li id="data-static-friends-18" class="friend-item"><a
					href="http://www.udesk.cn/" target="_blank" data-skip="29"
					id="29-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/7af40ad162d9f2d3bd0327d2afec8a136327ccf9.jpg?timestamp=1436942242)"></div>
						<span class="friend-name">Udesk 智能客服平台</span>
				</a></li>
				<li id="data-static-friends-19" class="friend-item"><a
					href="http://www.heweather.com/" target="_blank" data-skip="39"
					id="39-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/42166d224f4a20a4c5d6b88f96529822730ed0aa.jpg?timestamp=1442485633)"></div>
						<span class="friend-name">和风天气</span>
				</a></li>
				<li id="data-static-friends-20" class="friend-item"><a
					href="http://gj.looip.cn/?id=15" target="_blank" data-skip="48"
					id="48-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/a8773912b31bb051c5fa4027317adab44bede0e7.jpg?timestamp=1453793399)"></div>
						<span class="friend-name">极客邦soho</span>
				</a></li>
				<li id="data-static-friends-21" class="friend-item"><a
					href="http://open.baidu.com/index.php" target="_blank"
					data-skip="5" id="5-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/060828381f30e924ebfb6ada49086e061c95f7fa.jpg?timestamp=1435138693)"></div>
						<span class="friend-name">百度数据开放平台</span>
				</a></li>
				<li id="data-static-friends-22" class="friend-item"><a
					href="http://www.proginn.com/" target="_blank" data-skip="34"
					id="34-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/908fa0ec08fa513d9b5437b93b6d55fbb3fbd9df.jpg?timestamp=1444298032)"></div>
						<span class="friend-name">程序员客栈</span>
				</a></li>
				<li id="data-static-friends-23" class="friend-item"><a
					href="http://www.iwapzone.com/" target="_blank" data-skip="6"
					id="6-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/86d6277f9e2f07087865dcebec24b899a801f2fd.jpg?timestamp=1435138679)"></div>
						<span class="friend-name">WAP地带</span>
				</a></li>
				<li id="data-static-friends-24" class="friend-item"><a
					href="https://www.upyun.com/index.html" target="_blank"
					data-skip="21" id="21-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/b21bb051f8198618706b1b6f4fed2e738bd4e629.jpg?timestamp=1435138451)"></div>
						<span class="friend-name">UPYUN</span>
				</a></li>
				<li id="data-static-friends-25" class="friend-item"><a
					href="http://www.safedog.cn" target="_blank" data-skip="32"
					id="32-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/242dd42a2834349b52f3a6fbcfea15ce37d3bed3.jpg?timestamp=1444298017)"></div>
						<span class="friend-name">安全狗</span>
				</a></li>
				<li id="data-static-friends-26" class="friend-item"><a
					href="http://www.voiceads.cn/index.php/intro/index" target="_blank"
					data-skip="45" id="45-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/96dda144ad34598261d845770af431adcaef8481.jpg?timestamp=1447393965)"></div>
						<span class="friend-name">讯飞移动广告平台</span>
				</a></li>
				<li id="data-static-friends-27" class="friend-item"><a
					href="http://www.rongcloud.cn/" target="_blank" data-skip="8"
					id="8-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/9825bc315c6034a88adc4e6ace1349540923761b.jpg?timestamp=1435138668)"></div>
						<span class="friend-name">融云即时通讯云</span>
				</a></li>
				<li id="data-static-friends-28" class="friend-item"><a
					href="http://www.juhe.cn/" target="_blank" data-skip="10"
					id="10-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/5366d0160924ab188fd016dc30fae6cd7a890b12.jpg?timestamp=1435138644)"></div>
						<span class="friend-name">聚合数据</span>
				</a></li>
				<li id="data-static-friends-29" class="friend-item"><a
					href="http://www.dingapp.com/" target="_blank" data-skip="11"
					id="11-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/4610b912c8fcc3cec0123ed89745d688d53f200e.jpg?timestamp=1435138631)"></div>
						<span class="friend-name">订APP</span>
				</a></li>
				<li id="data-static-friends-30" class="friend-item"><a
					href="https://pingplusplus.com/" target="_blank" data-skip="17"
					id="17-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/0b46f21fbe096b638907a9bb09338744ebf8ac3b.jpg?timestamp=1444297920)"></div>
						<span class="friend-name">Ping++</span>
				</a></li>
				<li id="data-static-friends-31" class="friend-item"><a
					href="http://www.polyv.net/" target="_blank" data-skip="20"
					id="20-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/55e736d12f2eb938264d8e19d0628535e5dd6f3d.jpg?timestamp=1435138476)"></div>
						<span class="friend-name">保利威视云视频</span>
				</a></li>
				<li id="data-static-friends-32" class="friend-item"><a
					href="http://www.yohola.cn" target="_blank" data-skip="30"
					id="30-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/4a36acaf2edda3cc9e411d3c07e93901213f9201.jpg?timestamp=1444297963)"></div>
						<span class="friend-name">有货啦</span>
				</a></li>
				<li id="data-static-friends-33" class="friend-item"><a
					href="http://www.rongkecloud.com" target="_blank" data-skip="40"
					id="40-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/34fae6cd7b899e51e64cf9a744a7d933c9950d47.jpg?timestamp=1443066453)"></div>
						<span class="friend-name">云视互动</span>
				</a></li>
				<li id="data-static-friends-34" class="friend-item"><a
					href="http://www.openwatch.cn/" target="_blank" data-skip="42"
					id="42-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/7c1ed21b0ef41bd50fcaf07257da81cb38db3d9e.jpg?timestamp=1445585409)"></div>
						<span class="friend-name">OpenWatch智能手表开发者服务平台</span>
				</a></li>
				<li id="data-static-friends-35" class="friend-item"><a
					href="http://mtc.baidu.com/" target="_blank" data-skip="44"
					id="44-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/8c1001e93901213f1951ad3c52e736d12e2e95f4.jpg?timestamp=1447040063)"></div>
						<span class="friend-name">百度移动云测试中心</span>
				</a></li>
				<li id="data-static-friends-36" class="friend-item"><a
					href="http://www.pgyer.com/" target="_blank" data-skip="12"
					id="12-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/024f78f0f736afc348dbc88eb619ebc4b6451201.jpg?timestamp=1435138617)"></div>
						<span class="friend-name">蒲公英</span>
				</a></li>
				<li id="data-static-friends-37" class="friend-item"><a
					href="http://www.apicloud.com/" target="_blank" data-skip="13"
					id="13-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/7acb0a46f21fbe0915f034ff6e600c338644adab.jpg?timestamp=1435138605)"></div>
						<span class="friend-name">APICloud</span>
				</a></li>
				<li id="data-static-friends-38" class="friend-item"><a
					href="https://meiqia.com/integrations" target="_blank"
					data-skip="18" id="18-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/a2cc7cd98d1001e98ce1e0e4bd0e7bec55e79778.jpg?timestamp=1444297930)"></div>
						<span class="friend-name">美洽</span>
				</a></li>
				<li id="data-static-friends-39" class="friend-item"><a
					href="http://www.deviceone.net/" target="_blank" data-skip="37"
					id="37-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/377adab44aed2e73e77a2d718101a18b86d6fad8.jpg?timestamp=1441883005)"></div>
						<span class="friend-name">DeviceOne</span>
				</a></li>
				<li id="data-static-friends-40" class="friend-item"><a
					href="http://store.cocos.com" target="_blank" data-skip="38"
					id="38-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/18d8bc3eb13533fa8b450673aed3fd1f40345bff.jpg?timestamp=1441883211)"></div>
						<span class="friend-name">Cocos商店</span>
				</a></li>
				<li id="data-static-friends-41" class="friend-item"><a
					href="http://www.yuntongxun.com/" target="_blank" data-skip="14"
					id="14-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/4b90f603738da977799571c0b551f8198718e3a7.jpg?timestamp=1435138581)"></div>
						<span class="friend-name">容联•云通讯</span>
				</a></li>
				<li id="data-static-friends-42" class="friend-item"><a
					href="http://tianmaying.com/" target="_blank" data-skip="36"
					id="36-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/9358d109b3de9c82d44850d26a81800a19d843b9.jpg?timestamp=1441882663)"></div>
						<span class="friend-name">天码营</span>
				</a></li>
				<li id="data-static-friends-43" class="friend-item"><a
					href="http://www.haoservice.com/" target="_blank" data-skip="15"
					id="15-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/6d81800a19d8bc3e57b4f121878ba61ea9d34599.jpg?timestamp=1435138567)"></div>
						<span class="friend-name">HaoService</span>
				</a></li>
				<li id="data-static-friends-44" class="friend-item"><a
					href="http://www.tuling123.com/openapi/" target="_blank"
					data-skip="16" id="16-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/ae51f3deb48f8c5458c632c43f292df5e1fe7fc0.jpg?timestamp=1435138555)"></div>
						<span class="friend-name">图灵机器人</span>
				</a></li>
				<li id="data-static-friends-45" class="friend-item"><a
					href="http://lehuo520.cn" target="_blank" data-skip="43"
					id="43-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/4ec2d5628535e5dd138b1e2f70c6a7efcf1b629f.jpg?timestamp=1446085972)"></div>
						<span class="friend-name">短信宝</span>
				</a></li>
				<li id="data-static-friends-46" class="friend-item"><a
					href="http://www.tngou.net" target="_blank" data-skip="35"
					id="35-link">
						<div class="friend-img"
							style="background-image: url(http://hiphotos.baidu.com/apistore/pic/item/5bafa40f4bfbfbed266d632d7ef0f736afc31faf.jpg?timestamp=1441596454)"></div>
						<span class="friend-name">天狗云</span>
				</a></li>




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

	<script type="text/javascript" src="js/jquery.flot/jquery.flot.js"></script>
	<script type="text/javascript" src="js/jquery.flot/jquery.flot.pie.js"></script>
	<script type="text/javascript"
		src="js/jquery.flot/jquery.flot.resize.js"></script>
	<script type="text/javascript"
		src="js/jquery.flot/jquery.flot.labels.js"></script>
</body>
</html>
