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

		<title>My JSP 'load.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/top.css" rel="stylesheet" type="text/css">
    <link href="css/load.css" rel="stylesheet" type="text/css">
	<link href="css/personal-center.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="css/len.css" type="text/css" />
<script type="text/javascript" src="js/load.js">
</script>

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
				<span class="l"><a href="shouye.jsp">首页</a>>个人中心 > 搜索：</span>

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
                <img src="images/jiashu.png" width="147px" height="44px"
						style="border: none; float: left; margin-top: 20px; margin-left: 120px;">
                        <img src="images/7.png" width="177px" height="54px"
						style="border: none; float: left; margin-top: 20px; margin-left: 0px;">
                        <br/>
				<div id="kuang_right">
					
                    <p id="nv">
<a onclick="get_leibie(this.innerHTML)">It</a>
<a onclick="get_leibie(this.innerHTML)">Math</a>
<a onclick="get_leibie(this.innerHTML)">literature</a>
<a onclick="get_leibie(this.innerHTML)">Economy</a>
<a onclick="get_leibie(this.innerHTML)">fiction</a>
<a onclick="get_leibie(this.innerHTML)">scientist</a>
<a onclick="get_leibie(this.innerHTML)">tool</a>
</p>
					<!--搜索--><div id="kuang_right_sou">
<form action="servlet/Download" method="post" onclick="return (bool_leibie(this))">
						<div id="kuang_right_sou_w">
							
								<input id="search" style="width: 232px; height: 27px;float:left;"
									type="text" size="11px" name="books_name">
								<input id="interest" name="interest" type="text"  style="display:none"/>
						</div>
						

						<div id="kuang_right_sou_s">
				
							<input type="submit" value="搜索"></input>
						</div>
</form>
					</div>
					<!--搜索-->
						<!--<form action="servlet/Download?users_name=${param.users_name}&vip=${param.vip} " method="post">
			书名：
			<input type="text" name="books_name">
			<br>
		
			类型:<select name="interest">
 	<option value="it">It</option>
	<option value="math" >Math</option>
	<option value="literature">literature</option>
	<option value="economy">Economy</option>
	<option value="fiction">fiction</option>
	<option value="scientist">scientist</option>
	<option value="tool" selected="selected">tool</option>
 	</select>
			<br>
			<input type="submit" values="确定">
		</form>-->

				



				</div>



				<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;">
			</div>
	</body>
</html>
