<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'getString.jsp' starting page</title>
    
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
    <script type="text/javascript">

function changeimg()

{


var myimg = document.getElementById("code"); 
now = new Date(); 
myimg.src="makeCertPic.jsp?code="+now.getTime();
} 
</script>
</head>
<body>
<center>
 <form action="loginCheck.jsp" method="post" />
 用户名：<input type="text" name="username" /><br>
 密&nbsp;&nbsp;码：<input type="password" name="password"/><br>
 &nbsp;验证码：<input type="text" name="certCode"/>
 <img id="code" src="book/src/library/Javabean_indicate.java"><a href="javascript:changeimg()">看不清，换一张 </a><br>
 <input type="submit" value="登录"/>
 </form>
 </center>
  </body>
</html>
