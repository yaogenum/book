<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/pic.js"> </script>
  </head>
  
  <body background="background/right.jpg">
 <div style="float:left;margin-left:60px;">
   <p>各类图书总体分布图</p>
   <input  type="button" name="zongti1" value="重新获取" onclick="getpic1()"style="border：none;background:#690;color:white;"/>
   <img src="pic/pic1.jpg" width="350" height="350" id="img1" alt="这里显示图片"/>
   </div>
    <div style="float:left;margin-left:80px;">
   <p>各类书籍阅读量前3名分布图</p>
   <input type="button" name="zongti2" value="重新获取"  onclick="getpic2()"  
   style="border：none;background:#690;color:white;float:left；" />
   <img src="pic/pic2.jpg" width="400" height="400" id="img2" alt="这里显示图片" />
   </div>
   <div style="float:left;margin-left:80px;">
   <p>各类书籍下载量前3名分布图</p>
   <input type="button" name="zongti3" value="重新获取"  onclick="getpic3()"  style="border：none;background:#690;color:white;" />
   <img src="pic/pic3.jpg" width="400" height="400" id="img3"  alt="这里显示图片"/>
     </div>
   <div style="float:left">
    <p>各类书籍评价量前5名分布图</p>
    <input type="button" name="zongti4" value="重新获取"  onclick="getpic4()" style="border：none;background:#690;color:white;"  />
   <img src="pic/pic4.jpg" width="400" height="400" id="img4"  alt="这里显示图片"/>
     </div>
  </body>
</html>
<!-- 
 <div id="four" style="float:left;margin-left:170px;">
</div>
-->
