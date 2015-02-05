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

		<title>My JSP 'lost_password.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/top.css" rel="stylesheet" type="text/css" />
		<link href="css/denglu.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
function infor(name){
	$.ajax({
		type:"GET",
		data:"name="+name,
		url:"servlet/Send_mail",
		dataType : "text",
		success:function(data,status){
			document.getElementById("content").innerHTML=data;
		},
		error: function(XMLHttpRequest, textStatus, errorThrown){
					alert(XMLHttpRequest.status);
					alert(XMLHttpRequest.readyState);
                    alert(textStatus);
		}
		});
}

</script>

	</head>

	<body>
		<div id="container">
			<div id="header">
				<div id="header_denglu">
				</div>
				<!--header_denglu-->
				<div id="header_logo">

					
						<!--搜索-->

						
					<!--搜索-->

				</div>
				<!--header_logo-->
				    <div id="header_navi"><!--导航-->
      <ul>
      
						<li>
							<a href="shouye.jsp">首页</a>
						</li>
						<li>
							<a
								href="servlet/Get_fenlei?un=no"
								onclick="indicate(${sessionScope.users_name})">资料分类</a>
						</li>
						<li>
						<!--	<a
								href="servlet/Yanzhen?xuhao=2&users_name=${sessionScope.users_name}&vip=${sessionScope.vip}"
								onclick="indicate(${sessionScope.users_name})">
								分享资料</a>-->
								<a
								href="download/shangchuan.jsp"
								onclick="indicate(${sessionScope.users_name})">分享资料</a>
						</li>
						<li>
							<a
								href="servlet/Tuijian"
								onclick="indicate(${sessionScope.users_name})">佳书推荐</a>
						</li>
						<li>
							<a  href="jsp/forum-list.jsp?flag=0"
								onclick="indicate(${sessionScope.users_name})">论坛小区</a>
						</li>
						<li>
							<a
								href="personal/users_succeed.jsp"
								onclick="indicate(${sessionScope.users_name})">个人中心</a>
						</li>

					
     
      </ul>
      
      </div>
			</div>
			<!--header头部结束-->

			<div id="navi">
				<span class="l"><a href="shouye.jsp">首页</a> > 登陆：</span>
				<span class="r">还没有账号，立即<a href="register.jsp">注册</a>; </span>
			</div>
			<div id="kuang">
				<p>
					请输入注册邮箱(注册邮箱需要开启POP3/IMAP/SMTP/Exchange服务)，我们将提供密码服务！
				</p>
				<form action="servlet/Send_mail" method="post">
					名字：
					<input type="text" name="name" id="search"
						style="width: 186px; height: 23px; color: #000;" onblur="infor(this.value)"
						 /><span id="content"></span>
					<br />
					
					<br>

					<input type="submit" value="提交"
						style="border: none; float: left; margin-left: 100px; color: #FFF; background: #4F8900; width: 80px; height: 25px; margin-top: 20px;"
						size="13px">
				</form>

				<hr>
				<img src="images/book.gif" width="78px" height="67px"
					style="border: none; float: left; margin-left: 380px; margin-top: 10px;">

			</div>
			<img src="images/1.jpg" width="162" height="108px"
				style="border: none; float: left; margin-top: 100px; margin-left: 2px;">
			<img src="images/hua.jpg" width="100%" height="57px"
				style="border: none; float: left; margin-top: 140px;">
		</div>

	</body>
</html>
