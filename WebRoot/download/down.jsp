<%@ page language="java" import="java.util.*"  contentType="text/html; charset=utf-8"%>
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

		<title>My JSP 'down.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	
	<link rel='stylesheet' type='text/css' href='css/styles.css' />
	<link href="css/top.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/len.css" type="text/css" />
<link href="css/personal-center.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/down.js" ></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="wojs/t.js">
</script><script type="text/javascript" src="wojs/get.js">
</script><script type="text/javascript" src="wojs/zoominfo.js">
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
				<span class="l"><a href="shouye.jsp">首页</a> > 个人中心>搜索结果：</span>
				
			</div>


			<div id="kuang">
			
							<p>
							<c:if test="${info==null}">
					这是搜索后的界面，若文档但不开，请使用office离线下载阅读
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
      <img src="image.gif" style="width: 220px; display: inline; margin-top: 0px; margin-left: 0px; " id="${i}" onerror="get_images('${i}','${info[i+7]}')" />
      <div class="info">  
          <h2>书名:${info[i]}</h2></br>
          <div id="word">


										
										
										
										下载次数：${info[i+8]}
			<a
				href="servlet/Href_download?files_name=${info[i+1]}" onclick="down_ready('${info[i]}','${info[i+5]}','${info[i+9]}')"
				target="_blank" style="color:red" >下载</a>
			<a
				href="servlet/Book_content" style="color:yellow"  onclick="read_read('${info[i]}','${info[i+5]}')"
				>详细阅读</a>
<input type="button" name="cha" value="查询积分"  onclick="xiazai('${info[i+9]}','${sessionScope.users_name}','${sessionScope.vip}')" style="background: #690; color: #FFF;">
          </div>
      </div>
    </div>
<!--end galleryEntry 第1张图片结束-->  

   
</div>
	<c:set var="i" value="${i+10}" />
			
						</c:forEach>


		
	
					</div>
   
             
					<p>

					</p>




				


				<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;">
			</div>
			
	</body>
</html>



