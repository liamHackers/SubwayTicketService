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

<title>我的余额</title>
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
									<li class="active"><a href="findBalance.do">余额查询</a></li>
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
							<li><a href="#"><i class="fa fa-table"></i><span>客户中心</span></a>
								<ul class="sub-menu">
									<li><a target="_blank"
										href="http://wpa.qq.com/msgrd?v=3&uin=418637578&site=qq&menu=yes">客服一</a></li>
									<li><a target="_blank"
										href="http://wpa.qq.com/msgrd?v=3&uin=754798989&site=qq&menu=yes">客服二</a></li>
									<!-- <li><a href="#tables-xeditable.jsp">客服热线</a></li> -->
									<li><a href="messageBoad_query.do">留言板</a></li>
								</ul></li>
							<!--   <li><a href="#"><i class="fa fa-map-marker nav-icon"></i><span>地图</span></a>
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
						<li><a href="#">主界面</a></li>
						<li><a>个人中心</a></li>
						<li class="active">余额查询</li>
					</ol>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="block-flat">
							<div class="header">
								<h3>我的余额</h3>
							</div>
							<div class="content">
								<div class="table-responsive">
									<table style="clear: both"
										class="table table-bordered table-striped" id="user">
										<tbody>

											<tr>
												<td width="35%">用户名</td>
												<td><a>${user.userName}</a></td>
											</tr>
											<tr>
												<td>账户余额</td>
												<td><a>${user.balance}元</a>

													<button data-toggle="modal" data-target="#md-custom"
														type="button" class="btn btn-primary btn-flat">
														充值</button> <!-- Modal -->
													<form action="recharge.do" method="post"
														name="rechargeform">
														<div class="modal fade" id="md-custom" tabindex="-1"
															role="dialog">
															<div class="modal-dialog custom-width">
																<div class="modal-content">
																	<div class="modal-header">
																		<h3 align="center">请输入充值数额</h3>
																	</div>
																	<div class="modal-body">
																		<div class="text-center">
																			<input type="text" class="form-control"
																				name="recharge">
																		</div>
																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-default btn-flat"
																			data-dismiss="modal">取消</button>
																		<a onclick="recharge()"><button type="submit"
																				class="btn btn-primary btn-flat"
																				data-dismiss="modal">确认充值</button></a>
																	</div>
																</div>
																<!-- /.modal-content -->
															</div>
															<!-- /.modal-dialog -->
														</div>
														<!-- /.modal -->
													</form></td>
											</tr>
											<tr>
												<td>我的积分</td>
												<td><a>${user.point }</a></td>
											</tr>

											<tr>
												<td>银行卡</td>
												<td><a>${user.bankCard}</a></td>
											</tr>



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

		function recharge() {
			var recharge = document.rechargeform.recharge.value;
			$.ajax({
				data : {
					'recharge' : recharge
				},
				type : "POST",
				dataType : 'json',
				url : "recharge.do",
				error : function(data) {

				},
				success : function(data) {
					alert("充值成功！");
					location.href = "personal-balance.jsp";

				}
			});
		}
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


	<script type="text/javascript">
		$(document).ready(
				function() {
					//toggle `popup` / `inline` mode
					$.fn.editable.defaults.mode = 'popup';

					//make username editable
					$('#username').editable();

					//make username editable
					$('#firstname').editable({
						validate : function(value) {
							if ($.trim(value) == '') {
								return 'This field is required';
							}
						}
					});

					//make username editable
					$('#sex').editable(
							{
								prepend : "not selected",
								source : [ {
									value : 1,
									text : 'Male'
								}, {
									value : 2,
									text : 'Female'
								} ],
								display : function(value, sourceData) {
									var colors = {
										"" : "gray",
										1 : "green",
										2 : "blue"
									}, elem = $.grep(sourceData, function(o) {
										return o.value == value;
									});
									if (elem.length) {
										$(this).text(elem[0].text).css("color",
												colors[value]);
									} else {
										$(this).empty();
									}
								}
							});
					//make group editable
					$('#group').editable({
						showbuttons : false,
						source : [ {
							value : 1,
							text : '成人'
						}, {
							value : 2,
							text : '儿童'
						}, {
							value : 3,
							text : '老人'
						}, {
							value : 4,
							text : '军人'
						}, {
							value : 5,
							text : '残疾人'
						} ]
					});

					//make status editable
					$('#status').editable({
						type : 'select',
						title : 'Select status',
						placement : 'right',
						value : 2,
						source : [ {
							value : 1,
							text : 'status 1'
						}, {
							value : 2,
							text : 'status 2'
						}, {
							value : 3,
							text : 'status 3'
						} ]
					});
					//make dob editable
					$('#dob').editable({
						format : 'dd-mm-yyyy',
						viewformat : 'dd/mm/yyyy',
						datepicker : {
							weekStart : 1
						}
					});
					//make event editable
					$('#event').editable({
						placement : 'right',
						combodate : {
							firstItem : 'name'
						}
					});
					//make comments editable
					$('#comments').editable({
						showbuttons : 'bottom'
					});

					//make state2 editable
					$('#state2').editable(
							{
								value : 'California',
								typeahead : {
									name : 'state',
									local : [ "Alabama", "Alaska", "Arizona",
											"Arkansas", "California",
											"Colorado", "Connecticut",
											"Delaware", "Florida", "Georgia",
											"Hawaii", "Idaho", "Illinois",
											"Indiana", "Iowa", "Kansas",
											"Kentucky", "Louisiana", "Maine",
											"Maryland", "Massachusetts",
											"Michigan", "Minnesota",
											"Mississippi", "Missouri",
											"Montana", "Nebraska", "Nevada",
											"New Hampshire", "New Jersey",
											"New Mexico", "New York",
											"North Dakota", "North Carolina",
											"Ohio", "Oklahoma", "Oregon",
											"Pennsylvania", "Rhode Island",
											"South Carolina", "South Dakota",
											"Tennessee", "Texas", "Utah",
											"Vermont", "Virginia",
											"Washington", "West Virginia",
											"Wisconsin", "Wyoming" ]
								}
							});
					//make fruits editable
					$('#fruits').editable({
						pk : 1,
						limit : 3,
						source : [ {
							value : 1,
							text : 'banana'
						}, {
							value : 2,
							text : 'peach'
						}, {
							value : 3,
							text : 'apple'
						}, {
							value : 4,
							text : 'watermelon'
						}, {
							value : 5,
							text : 'orange'
						} ]
					});
					//make tags editable
					$('#tags').editable({
						inputclass : 'input-large',
						select2 : {
							tags : [ 'html', 'javascript', 'css', 'ajax' ],
							tokenSeparators : [ ",", " " ]
						}
					});

					var countries = [];
					$.each({
						"BD" : "Bangladesh",
						"BE" : "Belgium",
						"BF" : "Burkina Faso",
						"BG" : "Bulgaria",
						"BA" : "Bosnia and Herzegovina",
						"BB" : "Barbados",
						"WF" : "Wallis and Futuna",
						"BL" : "Saint Bartelemey",
						"BM" : "Bermuda",
						"BN" : "Brunei Darussalam",
						"BO" : "Bolivia",
						"BH" : "Bahrain",
						"BI" : "Burundi",
						"BJ" : "Benin",
						"BT" : "Bhutan",
						"JM" : "Jamaica",
						"BV" : "Bouvet Island",
						"BW" : "Botswana",
						"WS" : "Samoa",
						"BR" : "Brazil",
						"BS" : "Bahamas",
						"JE" : "Jersey",
						"BY" : "Belarus",
						"O1" : "Other Country",
						"LV" : "Latvia",
						"RW" : "Rwanda",
						"RS" : "Serbia",
						"TL" : "Timor-Leste",
						"RE" : "Reunion",
						"LU" : "Luxembourg",
						"TJ" : "Tajikistan",
						"RO" : "Romania",
						"PG" : "Papua New Guinea",
						"GW" : "Guinea-Bissau",
						"GU" : "Guam",
						"GT" : "Guatemala",
						"GS" : "South Georgia and the South Sandwich Islands",
						"GR" : "Greece",
						"GQ" : "Equatorial Guinea",
						"GP" : "Guadeloupe",
						"JP" : "Japan",
						"GY" : "Guyana",
						"GG" : "Guernsey",
						"GF" : "French Guiana",
						"GE" : "Georgia",
						"GD" : "Grenada",
						"GB" : "United Kingdom",
						"GA" : "Gabon",
						"SV" : "El Salvador",
						"GN" : "Guinea",
						"GM" : "Gambia",
						"GL" : "Greenland",
						"GI" : "Gibraltar",
						"GH" : "Ghana",
						"OM" : "Oman",
						"TN" : "Tunisia",
						"JO" : "Jordan",
						"HR" : "Croatia",
						"HT" : "Haiti",
						"HU" : "Hungary",
						"HK" : "Hong Kong",
						"HN" : "Honduras",
						"HM" : "Heard Island and McDonald Islands",
						"VE" : "Venezuela",
						"PR" : "Puerto Rico",
						"PS" : "Palestinian Territory",
						"PW" : "Palau",
						"PT" : "Portugal",
						"SJ" : "Svalbard and Jan Mayen",
						"PY" : "Paraguay",
						"IQ" : "Iraq",
						"PA" : "Panama",
						"PF" : "French Polynesia",
						"BZ" : "Belize",
						"PE" : "Peru",
						"PK" : "Pakistan",
						"PH" : "Philippines",
						"PN" : "Pitcairn",
						"TM" : "Turkmenistan",
						"PL" : "Poland",
						"PM" : "Saint Pierre and Miquelon",
						"ZM" : "Zambia",
						"EH" : "Western Sahara",
						"RU" : "Russian Federation",
						"EE" : "Estonia",
						"EG" : "Egypt",
						"TK" : "Tokelau",
						"ZA" : "South Africa",
						"EC" : "Ecuador",
						"IT" : "Italy",
						"VN" : "Vietnam",
						"SB" : "Solomon Islands",
						"EU" : "Europe",
						"ET" : "Ethiopia",
						"SO" : "Somalia",
						"ZW" : "Zimbabwe",
						"SA" : "Saudi Arabia",
						"ES" : "Spain",
						"ER" : "Eritrea",
						"ME" : "Montenegro",
						"MD" : "Moldova, Republic of",
						"MG" : "Madagascar",
						"MF" : "Saint Martin",
						"MA" : "Morocco",
						"MC" : "Monaco",
						"UZ" : "Uzbekistan",
						"MM" : "Myanmar",
						"ML" : "Mali",
						"MO" : "Macao",
						"MN" : "Mongolia",
						"MH" : "Marshall Islands",
						"MK" : "Macedonia",
						"MU" : "Mauritius",
						"MT" : "Malta",
						"MW" : "Malawi",
						"MV" : "Maldives",
						"MQ" : "Martinique",
						"MP" : "Northern Mariana Islands",
						"MS" : "Montserrat",
						"MR" : "Mauritania",
						"IM" : "Isle of Man",
						"UG" : "Uganda",
						"TZ" : "Tanzania, United Republic of",
						"MY" : "Malaysia",
						"MX" : "Mexico",
						"IL" : "Israel",
						"FR" : "France",
						"IO" : "British Indian Ocean Territory",
						"FX" : "France, Metropolitan",
						"SH" : "Saint Helena",
						"FI" : "Finland",
						"FJ" : "Fiji",
						"FK" : "Falkland Islands (Malvinas)",
						"FM" : "Micronesia, Federated States of",
						"FO" : "Faroe Islands",
						"NI" : "Nicaragua",
						"NL" : "Netherlands",
						"NO" : "Norway",
						"NA" : "Namibia",
						"VU" : "Vanuatu",
						"NC" : "New Caledonia",
						"NE" : "Niger",
						"NF" : "Norfolk Island",
						"NG" : "Nigeria",
						"NZ" : "New Zealand",
						"NP" : "Nepal",
						"NR" : "Nauru",
						"NU" : "Niue",
						"CK" : "Cook Islands",
						"CI" : "Cote d'Ivoire",
						"CH" : "Switzerland",
						"CO" : "Colombia",
						"CN" : "China",
						"CM" : "Cameroon",
						"CL" : "Chile",
						"CC" : "Cocos (Keeling) Islands",
						"CA" : "Canada",
						"CG" : "Congo",
						"CF" : "Central African Republic",
						"CD" : "Congo, The Democratic Republic of the",
						"CZ" : "Czech Republic",
						"CY" : "Cyprus",
						"CX" : "Christmas Island",
						"CR" : "Costa Rica",
						"CV" : "Cape Verde",
						"CU" : "Cuba",
						"SZ" : "Swaziland",
						"SY" : "Syrian Arab Republic",
						"KG" : "Kyrgyzstan",
						"KE" : "Kenya",
						"SR" : "Suriname",
						"KI" : "Kiribati",
						"KH" : "Cambodia",
						"KN" : "Saint Kitts and Nevis",
						"KM" : "Comoros",
						"ST" : "Sao Tome and Principe",
						"SK" : "Slovakia",
						"KR" : "Korea, Republic of",
						"SI" : "Slovenia",
						"KP" : "Korea, Democratic People's Republic of",
						"KW" : "Kuwait",
						"SN" : "Senegal",
						"SM" : "San Marino",
						"SL" : "Sierra Leone",
						"SC" : "Seychelles",
						"KZ" : "Kazakhstan",
						"KY" : "Cayman Islands",
						"SG" : "Singapore",
						"SE" : "Sweden",
						"SD" : "Sudan",
						"DO" : "Dominican Republic",
						"DM" : "Dominica",
						"DJ" : "Djibouti",
						"DK" : "Denmark",
						"VG" : "Virgin Islands, British",
						"DE" : "Germany",
						"YE" : "Yemen",
						"DZ" : "Algeria",
						"US" : "United States",
						"UY" : "Uruguay",
						"YT" : "Mayotte",
						"UM" : "United States Minor Outlying Islands",
						"LB" : "Lebanon",
						"LC" : "Saint Lucia",
						"LA" : "Lao People's Democratic Republic",
						"TV" : "Tuvalu",
						"TW" : "Taiwan",
						"TT" : "Trinidad and Tobago",
						"TR" : "Turkey",
						"LK" : "Sri Lanka",
						"LI" : "Liechtenstein",
						"A1" : "Anonymous Proxy",
						"TO" : "Tonga",
						"LT" : "Lithuania",
						"A2" : "Satellite Provider",
						"LR" : "Liberia",
						"LS" : "Lesotho",
						"TH" : "Thailand",
						"TF" : "French Southern Territories",
						"TG" : "Togo",
						"TD" : "Chad",
						"TC" : "Turks and Caicos Islands",
						"LY" : "Libyan Arab Jamahiriya",
						"VA" : "Holy See (Vatican City State)",
						"VC" : "Saint Vincent and the Grenadines",
						"AE" : "United Arab Emirates",
						"AD" : "Andorra",
						"AG" : "Antigua and Barbuda",
						"AF" : "Afghanistan",
						"AI" : "Anguilla",
						"VI" : "Virgin Islands, U.S.",
						"IS" : "Iceland",
						"IR" : "Iran, Islamic Republic of",
						"AM" : "Armenia",
						"AL" : "Albania",
						"AO" : "Angola",
						"AN" : "Netherlands Antilles",
						"AQ" : "Antarctica",
						"AP" : "Asia/Pacific Region",
						"AS" : "American Samoa",
						"AR" : "Argentina",
						"AU" : "Australia",
						"AT" : "Austria",
						"AW" : "Aruba",
						"IN" : "India",
						"AX" : "Aland Islands",
						"AZ" : "Azerbaijan",
						"IE" : "Ireland",
						"ID" : "Indonesia",
						"UA" : "Ukraine",
						"QA" : "Qatar",
						"MZ" : "Mozambique"
					}, function(k, v) {
						countries.push({
							id : k,
							text : v
						});
					});
					$('#country').editable({
						source : countries,
						select2 : {
							width : 200,
							placeholder : 'Select country',
							allowClear : true
						}
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
