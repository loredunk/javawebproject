﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>管理成员</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="bootstrap/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"
	type="text/css"></link>
<link rel="stylesheet" href="CSS/Admin_web.css" type="text/css"></link>

</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
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
		<!-- /.container-fluid --> </nav>
		<div id="content">
			<div>
				<ol class="breadcrumb">
					<li><a href="Admin_web.jsp"><span
							class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;首页</a></li>
					<li class="active">宿舍信息查询</li>
				</ol>
			</div>
			
				<div class="mycenter">
					<div class="mysign">
						<div id="table_wrap">
							<table class="table table-hover" width="100%" cellspacing="0"
								cellpadding="0" border="2px">
								<thead class="table_head">
									<tr>
										<th colspan="2"></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<form action="dorm" method="post">
										<td>请输入宿舍号：<input type="text" name="dorm" ></td>
										<td>
										<input type="submit" id="btn" class="btn btn-inverse" value="查询">
											</td>
											
											</form>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			
		</div>
	</div>

</body>
</html>
