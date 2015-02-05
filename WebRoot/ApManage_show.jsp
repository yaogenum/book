<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

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
	background-color: #2E8B57;
}

a {
	text-decoration: none;
	color: #FFA500;
	font-size: 24px;
}
</style>
	</head>

	<body>
		<div align="top"><a href="" target="rightFrame">&nbsp; 新增申请书</a>
			<hr />
			<br />
		</div>
		<div align="top">
			<table bgcolor="#000000" cellspacing="3" cellpadding="1" border="1" width="100%" valign="top">
				<tr bgcolor="#CCCCCC">
					<td width="100" align="center">
						序列号
					</td>
					<td width="180" align="center">
						标题
					</td>
					<td width="128" align="center">
						状态
					</td>
					<td width="167" align="center">
						
					</td>
					<td width="141" align="center">
						
					</td>
					<td width="164" align="center">
						
					</td>
					<td width="164" align="center">
					    提交
					</td>
					<td width="105" align="center">
					    更新
					</td>
					<td width="101" align="center">
					    删除
					</td>
				
			</tr>
		
				<tr bgcolor="#CCCCCC" align="center" font="12px 宋体">
					
					<td></td>
					<td></td>
					<td></td>
					
			
				
				
	
				
			</table>
		</div>
	</body>
</html>
