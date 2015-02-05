<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'tuijian.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		
	
		
		<link rel="stylesheet" href="css/marquee.css" type="text/css" />
	
		
	</head>
<body>  
		 <!--书灯箱开始-->
	<div id="marquee1">
		<ul>
			<li><a href=""><img  src="images/book1.jpg" width="130" height="182" /></a></li>
			<li><a href=""><img  src="images/book2.jpg" width="130" height="182"  /></a></li>
			<li><a href=""><img  src="images/book3.jpg" width="130" height="182"  /></a></li>
			<li><a href=""><img  src="images/book4.jpg" width="130" height="182"  /></a></li>
			<li><a href=""><img  src="images/book5.jpg" width="130" height="182"  /></a></li>
		</ul>
	</div><!--书灯箱结束-->
</body>  
</html>  