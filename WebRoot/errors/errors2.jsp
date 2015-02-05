<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>出错页面</title>
<link href="css/error.css" rel="stylesheet" type="text/css">
</head>

<body>
<img src="images/error1.jpg"  width="400px" height="127px" style="
float:left;margin-left:400px;margin-top:60px;">
<div id="content">
<p>当前为游客身份，或者系统尚未识别</p>
</div>
<a href="shouye.jsp"><img src="images/fanhui.jpg"  width="200px" height="56px" style="border:none;
float:left;margin-left:550px;margin-top:30px;"></a>


</body>
</html>