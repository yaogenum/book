<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����ҳ��</title>
<link href="css/error.css" rel="stylesheet" type="text/css">
</head>

<body>
<img src="images/error1.jpg"  width="400px" height="127px" style="
float:left;margin-left:400px;margin-top:60px;">
<div id="content">
<p>����ԭ��${info }</p>
</div>

<div id="fanhui" style="font-size:15px;font-weight:bold;color:#156445;float:left;margin-left:20px;margin-top:25px;"><a href="login.jsp"><img src="images/fanhui.jpg"  width="50px" height="50px" style="border:none;
float:left;margin-left:550px;margin-top:30px;">���µ�¼</a></div>
<div id="fanhui" style="font-size:15px;font-weight:bold;color:#156445;float:left;margin-left:20px;margin-top:25px;">
<a href="register.jsp"><img src="images/fanhui.jpg"  width="50px" height="50px" style="border:none;
float:left;margin-left:550px;margin-top:30px;">����ע��</a></div>
<div id="fanhui" style="font-size:15px;font-weight:bold;color:#156445;float:left;margin-left:20px;margin-top:25px;">
<a href="lost_password.jsp"><img src="images/fanhui.jpg"  width="50px" height="50px" style="border:none;
float:left;margin-left:550px;margin-top:30px;">�����һ�����</a></div>
<div id="fanhui" style="font-size:15px;font-weight:bold;color:#156445;float:left;margin-left:20px;margin-top:25px;">
<a href="shouye.jsp"><img src="images/fanhui.jpg"  width="50px" height="50px" style="border:none;
float:left;margin-left:550px;margin-top:30px;">�ص���ҳ</a></div>

</body>
</html>