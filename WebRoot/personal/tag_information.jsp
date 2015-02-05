<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<title>My JSP 'set_music.jsp' starting page</title>

		<link href="css/personal-center.css" rel="stylesheet" type="text/css">
		<link href="css/top.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/len.css" type="text/css" />



		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript" src="js/jquery.js">
</script>
		<script type="text/javascript" src="js/set_music.js">
</script>
		<script type="text/javascript" src="wojs/personal-center.js">
</script>
<script type="text/javascript" src="js/tag_infor.js">
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
				<span class="l"><a href="shouye.jsp">首页</a> > 个人中心>书签管理：</span>

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
						<c:set var="i" value="0">
						</c:set>
						<c:set var="col" value="0">
						</c:set>


						<c:forEach items="${info}" var="infos" step="5">
							<c:set var="col" value="${col+1}" />
							<p>
			序号:
								<c:out value="${col}" />
							
			书名:
								${info[i]}
								<a
								href="book/read.jsp" target="_blank" onclick="read_read('${info[i]}','${info[i+2]}','${info[i+3]}')">继续阅读</a>
								<input type="button"  value="详细信息操作" onclick="slide(${col})" style="background: #690; color: #FFF;" />
							
								
							</p>
							<div id="${col}" style="display:none">
			加入标签时间:
								${info[i+1]}
							
			
			已阅读页数:
								${info[i+3]}<br />
							&nbsp; &nbsp
								书签个数:
								${info[i+4]}
							
							
							<!--	<a href="servlet/Delete_tag?users_name=${param.users_name}&books_name=${info[i]}" target="_blank">删除标签</a> -->
							<input type="button" name="delete"
								onclick="tag_information('${sessionScope.users_name}','${info[i]}')"
								value="删除书签" style="background: #690; color: #FFF;" />
							
							<p>
								
							</p>
							</div>
							<c:set var="i" value="${i+5}" />
						</c:forEach>
						<span id="con"></span>




					</div>

					<p>

					</p>




				</div>



				<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;">
			</div>
			
	</body>
</html>
