<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>404 NotFound</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="bootstrap/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"
	type="text/css"></link>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
  
    <body>
        <div class="error404">
            <div class="info" >
                <h1>404</h1>
                <h2>抱歉，您访问的页面不存在或已被删除！</h2>
               <button type="button" id="btn" class="btn btn-warning"> <a href="login.jsp">请点击返回首页</a>
               </button>
            </div>
            
        </div>
    </body>
</html>
  
