<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<base href="<%=basePath%>" />
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>无标题文档</title>
		<link href="css/fatie.css" rel="stylesheet" type="text/css">
	</head>

	<body>

		<div id="container">
			<div id="header">
				<div id="header_denglu">
				</div>
				<!--header_denglu-->
				<div id="header_logo">

				
				</div>
				<!--header_logo-->
				<div id="navi">
					<span class="l"><a href="shouye.jsp">首页</a> > 佳书有约论坛：</span>
				</div>

				<div id="header_navi">
					<!--导航-->
					
				</div>
			</div>
			<!--header头部结束-->


			<div id="left">
				<div id="left_title">
					个人资料
				</div>
				<img src="images/nan.jpg" width="18px" height="16px"
					style="border: none; float: left; margin-top: 20px; margin-left: 50px;">
					<h1 style="float: left; margin-top: 20px; font-size: 14px;">
						用户名：${param.users_name}
					</h1>
					<img src="images/touxiang.jpg" width="117px" height="120px"
						style="border: none; float: left; margin-top: 30px; margin-left: 50px;">
						</br>

						<div id="kuang_left_manger"
							style="border: none; float: left; margin-top: 20px; margin-left: 60px;">
							<ul>
							
							</ul>
						</div>
			</div>
			<!--left结束-->
			<div id="right">
				<div id="right_title">
					发帖
				</div>
				
				<form action="AddPost?users_name=${param.users_name}" method="post">
				<p
					style="font-size: 19px; float: left; margin-left: 20px; margin-top: 30px;">
					标题
				</p>
				<textarea name="title" cols="76" rows="2"
					style="float: left; margin-left: 17px; margin-top: 20px; border: 3px solid #669900">

</textarea><br />
				
				<textarea name="post" cols="75" rows="28"
					style="float: left; margin-top: 15px; margin-left: 76px; border: 5px solid #669900">
这里是帖子的内容。。。
</textarea>
				<input type="submit" value="发帖" class="replay"
					title="Ctrl+Enter快捷发表">
				</form>
			</div>
			<!--right结束--><img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;">
		</div>
		
	</body>
</html>