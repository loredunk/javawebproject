<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="CSS/LoginStyle.css" type="text/css"></link>
  </head>
  
   <body>
    <div class="col-lg-3"></div>
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
    <form id="from" action="login" method="post">
	
		<div class="mycenter">
			<div class="mysign">
				<div class="col-lg-11 text-center text-primary">
					<h3>宿舍成员管理系统</h3>
				</div>
				<div class="col-lg-9">
					<input type="text" class="form-control" name="username"
						placeholder="请输入用户名" required autofocus />
				</div>
				<div class="col-lg-9"></div>
				<div class="col-lg-9">
					<input type="password" class="form-control" name="password"
						placeholder="请输入密码" required autofocus />
				</div>
				<div class="col-lg-12">
					<div class="col-lg-1"></div>
					<div class="col-lg-4">
					<input type="radio"name="type"checked value="1"/>管理员
					</div>
					<div class="col-lg-4">	
					<input type="radio"name="type"checked value="0"/>普通用户
					</div>
				</div>
				<div class="col-lg-12">
				<div class="col-lg-1"></div>
				<div class="col-lg-4">
					<button type="submit" id="btn" class="btn btn-info col-lg-12">
						登录</button>
				</div>
				<div class="col-lg-4">
					<button type="button" id="btn2" class="btn btn-info col-lg-12">
						重置</button>
				</div>
				</div>
			</div>
		</div>
	</form>
	</div>
	<div class="col-lg-3"></div>
	 </body>
  <script type="text/javascript">
  	
  	document.getElementById("btn2").addEventListener("click", function(e) {
  		window.location.href = "login.jsp" ;	
  	})
  	</script>

</html>
