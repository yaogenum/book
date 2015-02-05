<%@ page language="java" import="java.util.*,java.text.*,java.sql.*,java.io.* " pageEncoding="UTF-8"%>
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
	topmargin="0" leftmargin="0" rightmargin="0"
	-->

  </head>
  
  <body  background="image/header.jpg">
  <%! 
  	String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
  	int count=0;
	synchronized int add(){
		count++;
		return count; 
	}
   %>
  <form action="">
   <table width="100%" height="79" border="0" cellpadding="0" cellspacing="0" align="center">
   <tr>
   <td bgcolor="F9A859" valign="top">
   		<table width="100%" height="50" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="FBEAD0"> 
   			<tr>
   				<td align="center" style="font-size:32px;">
   					欢迎来到佳书有约
   				</td>
   			</tr>
   		</table>
   </td>
   </tr>
   <tr>
   		<td bgcolor="F9A859" valign="top">
   			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
   				<tr>
   				<td align="center" style="font-size:13px" valign="middle">
   					今天是<%=datetime%><br>
   					当前访问量为：<%=add()%>人次
   				</td>
   				</tr>
   			</table>
   		</td>
   </tr>
   </table>
  </form>
   
  </body>
</html>
