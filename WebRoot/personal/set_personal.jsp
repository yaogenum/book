<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
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

		<title>My JSP 'set_personal.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link href="css/personal-center.css" rel="stylesheet" type="text/css">
		<link href="css/top.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="css/len.css" type="text/css" />
		<script src="wojs/jquery.js" type="text/javascript">
</script>
	<!--	<script type="text/javascript" src="wojs/personal-center.js">
</script>-->
<!--
		<script type="text/javascript" scr="js/personal_succeed.js">
</script>-->
	</head>


	<script type="text/javascript">

function changeimg() {
	var myimg = document.getElementById("code");
	now = new Date();
	myimg.src = "makeCertPic.jsp?code=" + now.getTime();
}
</script>

	<script type="text/javascript" src="js/set_personal.js">
</script>
	<body>
		<div id="container">
			<div id="header">
				<div id="header_denglu">
				</div>
				<!--header_denglu-->
				<div id="header_logo">

				

				</div>
				<!--header_logo-->
				<div id="header_navi">
					<!--导航-->
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
							<a
								href="download/shangchuan.jsp"
								onclick="indicate(${sessionScope.users_name})"> 分享资料</a>
						</li>
						<li>
							<a
								href="servlet/Tuijian" onclick="indicate(${sessionScope.users_name})"
								>佳书推荐</a>
						</li>
						<li>
							<a href="jsp/forum-list.jsp?flag=0" target="_balnk">论坛小区</a>
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
				<span class="l"><a href="shouye.jsp">首页</a>>个人中心 > 重置资料：</span>

			</div>


			<div id="kuang">
				<div id="kuang_left">
					<img src="images/nan.jpg" width="18px" height="16px"
						style="border: none; float: left; margin-top: 20px; margin-left: 50px;">
					<h1>
						用户名：${sessionScope.users_name}
					</h1>
					<img src="images/touxiang.jpg" width="117px" height="120px"
						style="border: none; float: left; margin-top: 20px; margin-left: 50px;">
					</br>
					<p class="score">
						会员状态:${sessionScope.vip}
					</p>
					<div id="kuang_left_manger">
						<ul>
									<li>
										<a
											href="personal/set_personal.jsp"
											onclick="ziliao()" >重置资料</a>
									</li>
									<li>
										<a
											href="download/load.jsp"
											>搜索</a>
									</li>
									<li>
										<a
											href="download/shangchuan.jsp"
											target="_blank">上传</a>
									</li>
									<li>
										<a
											href="servlet/Add_tag?flag=no"
											>书签管理</a>
									</li>
									<li>
										<a
											href="personal/vip_arrange.jsp"
											>积分管理</a>
									</li>
									<li>
										<a
											href="servlet/Tuijian"
											>佳书推荐</a>
									</li>
									<li>
										<a
											href="servlet/Arrange_music"
											>管理音乐</a>
									</li>
									<li>
<a href="jsp/forum-list.jsp?flag=0" target="_balnk">进入论坛</a>
									</li>

								</ul>
								</div>
				</div>
				<div id="kuang_right">
					<div class="box">

						<form name="register" action="servlet/Update_users" method="Post"
							onSubmit="return validate(this)" align="left"><br />
						
							<input type="text" name="name_before" id="name_before"
								onblur="jiance(this.value)" value="${sessionScope.users_name}" style="display:none"/>
							
							原密码：&nbsp &nbsp
							<input type="password" name="users_password"
								onblur="check_password(this.value,'${sessionScope.users_name}')" />
							<span id="message"></span>
						
							
							<input type="text" name="users_name" id="users_name"
								onblur="name_indicate(this.value)" style="display:none" />
							<span id="tishi"></span>
							<br>
							修改密码：&nbsp
							<input type="password" name="user_password" />
							
							<br>
							性别:&nbsp &nbsp &nbsp
							<input type="radio" name="sex" value="man" />
							男
							<input type="radio" name="sex" value="women" />
							女<br />
							兴趣:&nbsp    &nbsp &nbsp 
							<select name="interest">
								<option value="it">
									It
								</option>
								<option value="math">
									Math
								</option>
								<option value="literature">
									literature
								</option>
								<option value="economy">
									Economy
								</option>
								<option value="fiction">
									fiction
								</option>
								<option value="scientist">
									scientist
								</option>
								<option value="tool" selected="selected">
									tool
								</option>
							</select>
							<br>
							邮箱:&nbsp  &nbsp  &nbsp 
							<input type="text" name="email" />
							<br>
							验证:&nbsp  &nbsp  &nbsp 
							<input type="text" name="yanzhen" maxlength="4" />
							<img src="image.jsp" width="100" height="20">
							<br>
							<input type="reset" values="重置" style="background: #690; color: #FFF;height:22px;width:50px">&nbsp  &nbsp  &nbsp
							<input type="submit" values="提交" style="background: #690; color: #FFF;height:22px;width:55px">
							<br>
						</form>

					</div>



				</div>



				<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;">
			</div>
	</body>
</html>