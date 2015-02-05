<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>" />
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>个人中心页面</title>
		<link href="css/personal-center.css" rel="stylesheet" type="text/css">
		<link href="css/top.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/len.css" type="text/css" />

		<!-- 引入 jQuery -->
		<script src="wojs/jquery.js" type="text/javascript">
</script>
		<script type="text/javascript" src="wojs/personal-center.js">
</script>
		<script type="text/javascript" src="js/personal_succeed.js">
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
				<span class="l"><a href="shouye.jsp">首页</a> > 个人中心：</span>

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
						<ul class="menu">
							<li class="level1">
								<a href="#none">最新上传</a>

								<ul class="level2">
									<c:set var="i" value="0">
								</c:set>
								<c:set var="col" value="0">
								</c:set>
								<c:forEach items="${infor}" var="infos" step="10">
								<c:set var="col" value="${col+1}" />
									<li>
			<a href="book/read.jsp"
				onclick="read_read('${infor[0+i]}','${infor[5+i]}','${col}')" target="_blank" >${infor[0+i]}</a>
									</li>
								<c:set var="i" value="${i+10}" />
								</c:forEach>
									
								</ul>
							</li>
							<li class="level1">
								<a href="#none">最近浏览</a>

								<ul class="level2">
								<c:set var="i" value="0">
								</c:set>
								<c:set var="col" value="0">
								</c:set>
								<c:forEach items="${infor_his}" var="infos" step="5">
								<c:set var="col" value="${col+1}" />
									<li>
			<a href="book/read.jsp"
				onclick="read_read('${infor_his[1+i]}','${infor_his[4+i]}','${col}')" target="_blank" >${infor_his[1+i]}</a>
									</li>
								<c:set var="i" value="${i+5}" />
								</c:forEach>
									
								</ul>
							</li>
							<li class="level1">
								<a href="#none">论坛最新动态</a>
								<ul class="level2">
									
										
										<!--<a href="book/read.jsp?books_path=${infor_his[4+i]}&nowcount=1&books_name=${infor_his[1+i]}&users_name=${users_name}"
				onclick="add_amount()" target="_blank" >${infor_his[1+i]}</a>-->
				<li>
				<a href="" target="_blank" id="100"></a>
									</li>
										<li>
				<a href="" target="_blank" id="101"></a>
									</li>
										<li>
				<a href="" target="_blank" id="102"></a>
									</li>
									
								</ul>
							</li>
							<li class="level1">
								<a href="#none">每天一部名著</a>
								<ul class="level2">
									<li>
																	<c:set var="i" value="0">
								</c:set>
										<a href="book/read.jsp"
				onclick="read_read('${list_today[i]}','${list_today[i+5]}','sessionScope.interest')" target="_blank" >书名:${list_today[i]}
				，作者：${list_today[i+2]}，上传时间：${list_today[i+4]}
				
				</a>
				<br />
				<img src="${list_today[i+7]}" width="60px" height="40px"/>
									</li>
								</ul>
							</li>
							
							<li class="level1">
								<a href="#none">每天一句名言</a>
								<ul class="level2">
									<li>
									读书也像开矿一样，“沙里淘金”。——赵树理
									<a href="http://wenku.baidu.com/view/65a3b019964bcf84b9d57bea.html" target="_blank">
									查看更多
									</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>



				</div>



				<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;">
			</div>
	</body>
</html>