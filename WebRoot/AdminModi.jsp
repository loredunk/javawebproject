<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>修改学生信息</title>

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
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"
	type="text/css"></link>
<link rel="stylesheet" href="CSS/Admin_web.css" type="text/css"></link>
<link rel="stylesheet" href="CSS/ShowStyle.css" type="text/css"></link>
</head>
<script>
	function checktel(str) {
		var re5 = /^1[34578]\d{9}$/;
		var show5 = document.getElementById("telerror");
		if (!re5.test(str)) {
			show5.innerHTML = ("电话格式有误。");
		} else {
			show5.innerHTML = ("");
		}
	}
	function checkemail(str) {
		var re1 = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
		var show1 = document.getElementById("emailerror");
		if (!re1.test(str)) {
			show1.innerHTML = ("邮箱格式有误，请输入**@**.**格式。");
		} else {
			show1.innerHTML = ("");
		}
	}
</script>

<body>
	<div id="top" class="container-fluid">
		<h1>
			宿舍管理系统 <small>by student</small>
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
					<li><a href="Student_web.jsp">首页</a></li>
					<li><a href="admin">学生信息管理</a></li>
					<li><a href="FindDorm.jsp">宿舍信息查询</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<p class="navbar-text">你好，管理员</p>
					<li><a href="login.jsp">退出</a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>
		<div id="content">
			<div>
				<ol class="breadcrumb">
					<li><a href="Student_web.jsp"><span
							class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;首页</a></li>
					<li class="active">修改学生信息</li>
				</ol>
			</div>
			<div id="table_wrap" class="col-md-4 col-md-offset-4"
				style="margin-top:30px">
				<form action="adminupdate" method="post">
					<table class="table table-hover" width="100%" cellspacing="0"
						cellpadding="0">
						<thead class="table_head">
							<tr>
								<th>请修改学生的个人信息</th>
							</tr>
						</thead>
						<tbody>
							<input type="hidden" name="id" value="${nm.id }">
							<tr>
								<td>姓名：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
									name="name" placeholder="输入姓名" required autofocus /></td>
							</tr>
							<tr>
								<td>年龄：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
									name="age" placeholder="输入年龄" required autofocus /></td>
							</tr>
							<tr>
								<td>出生日期：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
									name="birthday" placeholder="输入出生日期" required autofocus /></td>
							</tr>
							<tr>
								<td>班级：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
									name="classId" placeholder="输入班级" required autofocus /></td>
							</tr>
							<tr>
								<td>宿舍号：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
									name="dorm" placeholder="输入宿舍号" required autofocus /></td>
							</tr>
							<tr>
								<td>重置密码：&nbsp;&nbsp;&nbsp;&nbsp;<input type="password"
									name="password" placeholder="重置密码" required autofocus /></td>
							</tr>
							<tr>
								<td>联系电话：<input type="text" name="tel" id="tel" required
									onblur="checktel(document.getElementById('tel').value);" /></td>
								<label class="control-label" id="error"><span
									id="telerror" class="help-block"></span></label>
							</tr>
							<tr>
								<td>个人爱好：<input type="text" name="hobby" required /></td>
							</tr>
							<tr>
								<td>常用邮箱：<input type="text" name="email" id="email"
									placeholder="请输入**@**.**格式。" required
									onblur="checkemail(document.getElementById('email').value);" /></td>
								<label class="control-label" id="error"><span
									id="emailerror" class="help-block"></span></label>
							</tr>
						</tbody>
					</table>
			</div>
			<div class="row">
				<div class="col-md-2 col-md-offset-5">
					<button type="submit" id="btn" class="btn btn-primary col-lg-12">提交修改</button>
				</div>
			</div>
			</form>
		</div>
	</div>


</body>
</html>
