
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
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

		<title>My JSP 'users_infor.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<script type="text/javascript" src="js/jquery.js">
</script>
		<script type="text/javascript" src="js/table_chart.js">
</script>
		<script type="text/javascript" src="js/jquery-1.3.2.min.js">
</script>

		<script type="text/javascript" src="js/charts/FusionCharts.js">
</script>
		<script type="text/javascript"
			src="js/charts/FusionCharts.jqueryplugin.js">
</script>

	</head>

	<body background="background/right.jpg">
		1.最近几个星期的阅读记录折线图
		<input type="button" name="read" id="read" value="显示阅读记录折线图"
			onclick="read('one')" style="background: #690; color: white;" />
		<br />
		2.加入书签折线图
		<input type="button" name="tag" id="read" value="显示书签折线图"
			onclick="read('two')" style="background: #690; color: white;" />
		<br />
		3.阅读时图搜索音乐折线图
		<input type="button" name="read" id="read" value="显示音乐折线图"
			onclick="read('three')" style="background: #690; color: white;" />
		<br />
		4输入用户姓名，查询最近7天阅读情况(用户阅读比重，一个星期内各种书籍的增长比例)：
		<input type="text" name="select_users" id="users_name"
			onblur="get_name(this.value)" />
		<input type="button" name="chaxun" id="queding" value="确定"
			onclick="get_infor()" style="background: #690; color: white;" />
		<span id="i"></span>
		<div id="chartdiv" align="center">
			在这里显示详细图表
			<!-- js/funstionchart.js -->
		</div>

	</body>
</html>
