<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

		<title>My JSP 'tuijian.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		
		<link href="css/top.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/len.css" type="text/css" />
		
		<script type="text/javascript" src="js/jquery.js">
</script>
		<script type="text/javascript" src="js/set_music.js" >
</script>
		
<script type="text/javascript" src="wojs/t.js">
</script><script type="text/javascript" src="wojs/get.js">
</script><script type="text/javascript" src="wojs/zoominfo.js">
</script>
	<script type="text/javascript" src="js/tuijian.js">

</script>
<link rel='stylesheet' type='text/css' href='css/styles.css' />
	
    
  
	</head>

	<body onLoad="get_images('${info[7]}','${info[17]}','${info[27]}','${info[37]}','${info[47]}')">
		<div id="container"style="background:url(images/g.jpg);">
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
				<span class="l"><a href="shouye.jsp">首页</a> > 个人中心>推荐书籍：</span>

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
							<p style="width:540px; height:60px;float:left;">
							<c:if test="${flag=='no'}">
					尊敬的用户，你暂无书签，您可以尝试阅读下列图书
				</c:if>

						</p>
		
	
		<c:set var="i" value="0">
						</c:set>
						<c:set var="col" value="0">
						</c:set>
		<c:forEach items="${info}" var="infos" step="10">
				<c:set var="col" value="${col+1}" />
				
        	
        <div class="galleryContainer">

<!--galleryEntry 第1张图片开始-->    
  <div class="galleryImage">
      <img src="" width="220" height="220" style="width: 220px; display: inline; margin-top: 0px; margin-left: 0px; " id="${col}">
      <div class="info">  
          <h2>书名:${info[0+i]}</h2></br>
          <div id="word">
序号:${col}&nbsp 
作者:${info[2+i]}&nbsp 
阅读次数:${info[3+i]}&nbsp 
下载次数:${info[8+i]}&nbsp 
上传时间:${info[4+i]}&nbsp 
下载所需积分${info[i+9]}&nbsp

<a	href="servlet/Href_download?files_name=${info[1+i]}" target="_blank" style="color: #900;text-decoration:underline;font-size:13px;" onclick="down_ready('${info[0+i]}','${info[i+5]}','${info[i+9]}')">下载</a>
									
									<!--	<a href="servlet/Book_content?books_name=${info[0+i]}&books_path=${info[i+5]}" style="width:80px;height:25px;font-size:13px; color: #900;text-decoration:underline;" target="_blank">进入阅读</a>-->
										
										<a
								href="book/read.jsp" target="_blank" onclick="read_read('${info[0+i]}','${info[i+5]}')" style="width:80px;height:25px;font-size:13px; color: #900;text-decoration:underline;" target="_blank">进入阅读</a>
								
								
				
				<input type="button" name="cha" value="查询所剩积分"
										onclick="xiazai('${info[i+9]}','sessionScope.vip')"  style="background:#B8860B; color: #FFF;width:100px;height:20px;font-size:13px;"/>
          </div>
      </div>
    </div>
<!--end galleryEntry 第1张图片结束-->  

   
</div>
	<c:set var="i" value="${i+10}" />
        	     </c:forEach>
        	
	



				
			
			</div>
			
<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;"></div>
					<div style="clear:both"></div>
		</div>
		
	</body>
</html>
				<!--	<p>
							<c:if test="${flag=='no'}">
					尊敬的用户，你暂无书签，您可以尝试阅读下列图书
				</c:if>

						</p>
						<c:set var="i" value="0">
						</c:set>
						<c:set var="col" value="0">
						</c:set>


						<c:forEach items="${info}" var="infos" step="10">
							<c:set var="col" value="${col+1}" />
			
				序号:${col}
		书名:${info[0+i]} 
		封面:<img alt="main" src=${info[7+i] } height="20px" width="30px" />
								<a
									href="servlet/Book_content?users_name=${param.users_name}&interest=${interests}
				&books_name=${info[0+i]}&books_path=${info[i+5]}" style="background: #690; color: #FFF;" target="_blank">进入阅读</a>
								<a
									href="servlet/Href_download?users_name=${param.users_name}
				&interest=${interests}&books_name=${info[0+i]}&files_name=${info[i+5]}&books_limit=${info[i+9]}&vip=${param.vip}"
									target="_blank" style="background: #690; color: #FFF;">下载</a>
								<input type="button" value="详细信息更多操作" onclick="slide(${col})"
									style="background: #690; color: #FFF;" />
							</p>
							<div id="${col}" style="display: none">
								作者:${info[2+i]}&nbsp
									阅读次数:${info[3+i]}&nbsp 下载次数:${info[8+i]}&nbsp
									上传时间:${info[4+i]}&nbsp 下载所需积分:${info[i+9]}&nbsp&nbsp
									<input type="button" name="cha" value="查询所剩积分"
										onclick="xiazai(${info[i+9]})"  style="background: #690; color: #FFF;"/>
							</div>
							<c:set var="i" value="${i+10}" />
						</c:forEach>
						<span id="con"></span>
-->