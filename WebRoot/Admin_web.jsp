<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员端口</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="CSS/Admin_web.css" type="text/css"></link>
  </head>
  
  <body>
   <div id="top" class="container-fluid">
		<h1>
			宿舍管理系统 <small>by admin</small>
		</h1>
	</div>
	<div id="main">
		<!-- 导航 -->
		<nav class="navbar navbar-default" id="nav1">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="Admin_web.jsp">首页</a></li>
						<li><a href="admin">学生信息管理</a></li>
						<li><a href="FindDorm.jsp">宿舍信息查询</a></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<p class="navbar-text">你好,管理员</p>
						<li><a href="login.jsp">退出</a></li>

					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<div id="content">
			<div>
				<ol class="breadcrumb">
					<li class="active"><span class="glyphicon glyphicon-home"
						aria-hidden="true"></span>&nbsp;首页</li>
				</ol>
			</div>

			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<div class="row">
							<div class="col-md-6 col-md-offset-3">
								<div class="jumbotron">
									<div class="container" id="notice">
										<h3>
											<span class="glyphicon glyphicon-info-sign"
												aria-hidden="true"></span>&nbsp;公告栏:
										</h3>
										<p>1、请勿在寝室内存放电脑、数码产品、手机等贵重物品。出门一定要检查寝室门窗是否关好。</p>
										<p>2、寒假宿舍门禁不设常开时段，由学生刷卡进出，23点后仍不能刷卡出大门。</p>
										<p>3、同寝室最后一名离校的同学，请检查寝室插头全部拔离后找生活辅导员切断寝室电源、贴封条。</p>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-6 col-md-offset-3">
								<div class="jumbotron">
									<div class="container" id="notice">
										<h3>
											<span class="glyphicon glyphicon-info-sign"
												aria-hidden="true"></span>&nbsp;公告栏:
										</h3>
										<p>1、请勿在寝室内存放电脑、数码产品、手机等贵重物品。出门一定要检查寝室门窗是否关好。</p>
										<p>2、寒假宿舍门禁不设常开时段，由学生刷卡进出，23点后仍不能刷卡出大门。</p>
										<p>3、同寝室最后一名离校的同学，请检查寝室插头全部拔离后找生活辅导员切断寝室电源、贴封条。</p>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-md-6 col-md-offset-3">
								<div class="jumbotron">
									<div class="container" id="notice">
										<h3>
											<span class="glyphicon glyphicon-info-sign"
												aria-hidden="true"></span>&nbsp;公告栏:
										</h3>
										<p>1、请勿在寝室内存放电脑、数码产品、手机等贵重物品。出门一定要检查寝室门窗是否关好。</p>
										<p>2、寒假宿舍门禁不设常开时段，由学生刷卡进出，23点后仍不能刷卡出大门。</p>
										<p>3、同寝室最后一名离校的同学，请检查寝室插头全部拔离后找生活辅导员切断寝室电源、贴封条。</p>
									</div>
								</div>

							</div>
						</div>
					</div>

				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
<!--  -->

 
  </body>
</html>
