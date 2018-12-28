<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新成员注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="CSS/RegisterStyle.css" type="text/css"></link>
<link rel="stylesheet" href="CSS/Admin_web.css" type="text/css"></link>
  </head>
    <script>
 	function checkEmail(str){
     var re1 = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/; 
    var show1 = document.getElementById("emailerror");
    if (!re1.test(str)) {
       show1.innerHTML=("邮箱格式有误，请输入**@**.**格式。");
    }else{
    	show1.innerHTML=("");
    }
  }
    function checkstuid(str){
    var re2 = /[1-9]\d{10}/; 
     var show2 = document.getElementById("stuiderror");
     if (!re2.test(str)) {
       show2.innerHTML=("请输入11位学号。");
    }else{
    	show2.innerHTML=("");
    }
  }
   function checkname(str){
    var re3 =  /^[\u4E00-\u9FA5\uf900-\ufa2d·s]{2,7}$/; 
     var show3 = document.getElementById("nameerror");
     if (!re3.test(str)) {
       show3.innerHTML=("请输入2到7位汉字。");
    }else{
    	show3.innerHTML=("");
    }
  }
   function checkage(str){
    var re4 = /^(?:[1-9]?\d|100)$/; 
     var show4 = document.getElementById("ageerror");
     if (!re4.test(str)) {
       show4.innerHTML=("年龄输入有误。");
    }else{
    	show4.innerHTML=("");
    }
  }
   function checktel(str){
    var re5 = /^1[34578]\d{9}$/; 
     var show5 = document.getElementById("telerror");
     if (!re5.test(str)) {
       show5.innerHTML=("电话格式有误。");
    }else{
    	show5.innerHTML=("");
    }
  }
   function checkbirth(str){
    var re6 = /^(19[0-9]{2}|200[0-9]).([0]?[0-9]|[1][0-2]).([0]?[0-9]|[12][0-9]|3[01])$/; 
     var show6 = document.getElementById("birtherror");
     if (!re6.test(str)) {
       show6.innerHTML=("生日格式有误请输入****.**.**格式");
    }else{
    	show6.innerHTML=("");
    }
  }
  </script>
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
						<li><a href="admin.jsp">学生信息管理</a></li>
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
					<li><a href="Admin_web.jsp"><span class="glyphicon glyphicon-home"
						aria-hidden="true"></span>&nbsp;首页</a></li>
					<li class="active">添加用户</li>
				</ol>
			</div>
    <form id="from" action="reg" method="post">
		<div class="mycenter">
			<div class="mysign">
				<div class="col-lg-11 text-center text-info">
					<h2>添加新用户</h2>
				</div>
				<div class="col-lg-10">
					学号： <input type="text" class="form-control" name="username" id="stuid"
						placeholder="请输入学号" required onblur="checkstuid(document.getElementById('stuid').value);"/>
				<div class="form-group has-error has-feedback" id="error"><label class="control-label"><span id="stuiderror" class="help-block"></span></label></div>
				</div>
				<div class="col-lg-10">
					密码： <input type="password" class="form-control" name="password"
						placeholder="请输入密码" required  />
				<div class="form-group has-error has-feedback" id="error"><label class="control-label"><span id="psderror" class="help-block"></span></label></div>		
				</div>
				<div class="col-lg-10">
					姓名： <input type="text" class="form-control" name="name" id="name"
						placeholder="请输入真实姓名" required  onblur="checkname(document.getElementById('name').value);"/>
				<div class="form-group has-error has-feedback" id="error"><label class="control-label"><span id="nameerror" class="help-block"></span></label></div>		
				</div>
				<div class="col-lg-10">
					性别： <input type="text" class="form-control" name="sex"
						placeholder="请输入男或女" required autofocus />
				<div class="form-group has-error has-feedback" id="error"><label class="control-label"><span id="sexeerror" class="help-block"></span></label></div>		
				</div>
				<div class="col-lg-10">
					年龄： <input type="text" class="form-control" name="age" id="age"
						placeholder="请输入年龄" required  onblur="checkage(document.getElementById('age').value);" /> 
				<div class="form-group has-error has-feedback" id="error"><label class="control-label"><span id="ageerror" class="help-block"></span></label></div>		
				</div>
				<div class="col-lg-10">
					班级： <input type="text" class="form-control" name="classId" id="classId"
						placeholder="请输入所属班级" required  onblur="checkclassId(document.getElementById('classId').value);" /> 
				<div class="form-group has-error has-feedback" id="error"><label class="control-label"><span id="classerror" class="help-block"></span></label></div>		
				</div>
				<div class="col-lg-10">
					宿舍号： <input type="text" class="form-control" name="dorm"
						placeholder="请输入宿舍号" required autofocus />
				<div class="form-group has-error has-feedback" id="error"><label class="control-label"><span id="dormnumbererror" class="help-block"></span></label></div>
				</div>
				</div>
				<div class="col-lg-10">
					联系电话： <input type="text" class="form-control" name="tel" id="tel"
					placeholder="请输入电话号码" required onblur="checktel(document.getElementById('tel').value);"/>
				<div class="form-group has-error has-feedback" id="error"><label class="control-label"><span id="telerror" class="help-block"></span></label></div>
				</div>
				<div class="col-lg-10">
					生日：<input type="text" class="form-control" name="birthday" id="birth"
					placeholder="请输入你的生日" required onblur="checkbirth(document.getElementById('birth').value);" />
				<div class="form-group has-error has-feedback" id="error"><label class="control-label"><span id="birtherror" class="help-block"></span></label></div>		
				</div>
				<div class="col-md-3 col-md-offset-4">
					<button type="submit" id="btn" class="btn btn-success col-lg-12" style="margin-bottom: 70px">
						确定</button>
				</div>
			</div>
	</form>
	</div>
	</div>
	
  </body>
</html>
