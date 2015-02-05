<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

		<title>My JSP 'errors.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link href="css/error.css" rel="stylesheet" type="text/css">
	</head>

	<body>



		<div id="content">
			<p align="center">
				修改失败
			</p>
		</div>
		<div id="fanhui"
			style="font-size: 15px; font-weight: bold; color: #156445; float: left; margin-left: 20px; margin-top: 25px;">
			<a href="login.jsp?users_name=${users_name}&vip=${vip}"><img src="images/fanhui.jpg" width="50px"
					height="50px"
					style="border: none; float: left; margin-left: 550px; margin-top: 30px;">重新修改</a>
		</div>
<div id="fanhui"
			style="font-size: 15px; font-weight: bold; color: #156445; float: left; margin-left: 20px; margin-top: 25px;">
			<a href="personal/users_succeed.jsp?users_name=${users_name}&vip=${vip}"><img src="images/fanhui.jpg" width="50px"
					height="50px"
					style="border: none; float: left; margin-left: 550px; margin-top: 30px;">返回个人中心</a>
		</div>
		<div id="fanhui"
			style="font-size: 15px; font-weight: bold; color: #156445; float: left; margin-left: 20px; margin-top: 25px;">
			<a href="shouye.jsp"><img src="images/fanhui.jpg" width="50px"
					height="50px"
					style="border: none; float: left; margin-left: 550px; margin-top: 30px;">回到首页</a>
		</div>

	</body>
</html>
