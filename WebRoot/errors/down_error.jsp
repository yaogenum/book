<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'down_error.jsp' starting page</title>
    
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
<img src="images/error1.jpg"  width="400px" height="127px" style="
float:left;margin-left:400px;margin-top:60px;">
<div id="content">
<p>出错原因：${info }</p>
</div>
<div id="fanhui" style="font-size:15px;font-weight:bold;color:#156445;float:left;margin-left:20px;margin-top:25px;">
		<a href="download/load.jsp"><img src="images/fanhui.jpg"  width="50px" height="50px" style="border:none;
float:left;margin-left:550px;margin-top:30px;">回到搜索界面</a></div>
  </body>
</html>
