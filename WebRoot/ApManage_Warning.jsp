<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*,com.scholarshipsystem.student.model.*"%>
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

		<title>My JSP 'ApManage_show.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<style type="text/css">
body {
	font-size: 14px;
	background-color: #000000;
}

a {
	text-decoration: none;
	color: #3399FF;
	font-size: 24px;
}
</style>
	</head>

	<body>
		<div align="top" >&nbsp;<span color=#9966CC><h1><font color="#6633ff">申请书</font></h1><span color=#9966CC>
			<hr />
			<br />
		</div>
		<div align="top">
		<%ApManage apManage=(ApManage)request.getAttribute("ApManage");
		  String action=(String)request.getAttribute("action");%>
		<%if(apManage!=null){%>
		<font color="#ffffff">学生帐号&nbsp;&nbsp;:<%=apManage.getStu_account()%></font><br />
		<font color="#ffffff">申请书标题:<%=apManage.getApTitle()%></font>	<br />
		<font color="#ffffff">奖学金类别:<%=apManage.getTypeName()%></font>	<br />
		<font color="#ffffff">申请书状态:<%=apManage.getStateName()%></font>	<br />
			                                    <br />
	    <a href="./servlet/ApManageServlet?action=<%=action%>&SID=<%=apManage.getApM_id()%>">确定</a>
	    <a href="./servlet/ApManageShowServlet">返回</a>
		<%} %>	                         
	     
		</div>
	</body>
</html>
