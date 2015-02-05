<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 <base href="<%=basePath%>">
    
    <title>My JSP 'navigator.jsp' starting page</title>
   <!-- <link href="../tomcat/css/navigator.css" rel="stylesheet" type="text/css">-->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body >
  <div id="words" >
   
    <ul>
    <li><a href="servlet/All_users" target="content">用户管理</a></li>
    <li><a href="servlet/All_books" target="content">图书管理</a></li>
	<li><a href="servlet/All_music" target="content">音乐信息</a></li>
	<li><a href="admin/infor/main.jsp" target="content">图书分析</a></li>
 <li><a href="admin/infor/users_infor.jsp" target="content">用户分析</a></li>
 <li><a href="servlet/Need_for" target="content">需求分析</a></li>
 </ul>
 <div id="hua"><img src="images/0.png"  style="border:none;
float:left;width:180px;height:124px;"></div>
 </div>
  </body>
  <style>
  #words{
	  float:left;
	  background:#7FA828;
      border:#CCC 3px solid;
	  height:480px;
	 margin-left:0px;
	  }
  #words ul{
	  float:left;
	/*border:#000 1px solid;*/
	  height:210px;
	  margin-top:15px;
	  }
  #words ul li{
	  width:111px;
	  float:left;
	  height:35px;
	  }
  #words ul li a{
	  color:#FFF;
	  font-weight:bold;
	  font-size:19px;
	  text-decoration:none;display: block;
	  text-align:center;
	  height:35px;line-height:35px;
	  }
	  #words ul li a:hover{
	  background:url(images/onclick.gif);
	  height:35px;width:120px;
	  	display:block;
	  }


  </style>
</html>
