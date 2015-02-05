<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<div id="jiashu">  
<img src="images/111.jpg"  style="border:none;
float:left;height:112px;width:200px"><img src="images/1.png"  style="border:none;
float:left;margin-top:10px;margin-left:120px;">
<img src="images/3.png"  style="border:none;
float:left;margin-top:50px;">
<img src="images/zhuangshi.png"  style="border:none;
float:left;margin-top:20px;width:300px;height:60px;">
<img src="images/6.png"  style="border:none;
float:left;margin-top:20px;width:320px;height:80px;">
</div>
  </body>
   <style>
  #jiashu{background:#6F9327;
  border:#CCC 3px solid;
	  height:113px;
	  margin-left:0px;
	  }
 
  </style>
</html>
