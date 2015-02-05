<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.net.*"%>  
<%@ page import="java.io.*"%>  

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'music_play.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">

</script>
  </head>
  
  <body>
 
 <p><b>music_play</p>
<!--<object height="50px" width="300px" data="music/ok.mp3"></object> -->
<p><a href="music/ok.mp3">download  music</a> </p>
<p><a href="music/ok2.mp3">download  music</a> </p>
<p> <a href="${add}"><h4><font color="red">download  music</font></h4></a> </p>
<script type="text/javascript" src="http://mediaplayer.yahoo.com/js"></script>
  </body>
</html>
