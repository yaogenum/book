<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html"%>
<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c"%>
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

		<title>My JSP 'book_main.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/personal-centers.css" rel="stylesheet" type="text/css">
		<link href="css/top.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/len.css" type="text/css" />
		<script type="text/javascript" src="js/jquery.js">
</script>
		<script type="text/javascript" src="js/set_music.js" >
</script>
		<script type="text/javascript" src="wojs/personal-center.js">
</script>
<style type="text/css">

#panel {position: relative; width: 100px; height:100px;
left:100px;border: 1px solid #0050D0;background: #96E555; cursor: pointer;}
</style>
<script src="js/jquery.js" type="text/javascript"></script>

<script type="text/javascript" src="js/books.js" >

</script>


	</head>

	
	<body onload="save_records()">
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
				<span class="l"><a href="shouye.jsp">首页</a> > 个人中心>书籍主页:</span>

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
				<div id="kuang_right">


					<div class="box">

		<p>
			书名：
			<c:out value="${infor[0]}"></c:out>
		</p>
		<p>
			简易评价：
			<c:out value="${infor[1]}"></c:out>
			作者：
			<c:out value="${infor[2]}"></c:out>
		</p>
		<p>
			类别：${leibie}
			阅读人数：
			<c:out value="${infor[3]}"></c:out>
			下载人数：
			<c:out value="${infor[8]}"></c:out>
		</p><p>
			上传时间：
			<c:out value="${infor[4]}"></c:out>
		</p>

		<p>
			<c:out value="${infor[6]}"></c:out>
		</p>
			 <a
				href="book/read.jsp"
				onclick="add_amount()" target="_blank" >进入章节阅读</a>
		<br />
		 我的评价：
		<input type="text" name="pingjia" id="pingjia" onblur="p1(this.value)" />
		

		<input type="submit" name="tijiao" value="确定" id="queding"
			onclick="p3()" style="background: #690; color: #FFF;" />
		<br>


		<input type="button" name="chakan" value="查看所有评价" id="chakan"
			onclick="alls()"  style="background: #690; color: #FFF;"/>
	<!--<span id="all_kan"></span>-->
<div id="panel">

  <a
				href="book/read.jsp"
				onclick="add_amount()" target="_blank" >
			<img alt="main" src="${infor[7]}" height="150px" width="200px" />
			</a>
			
			</div>
			
		
		
					</div>

					<p>

					</p>




				</div>



				<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;">
			</div>
		

	</body>
</html>
