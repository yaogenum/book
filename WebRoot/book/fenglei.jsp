<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fenglei.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/personal-center.css" rel="stylesheet" type="text/css">
		<link href="css/top.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/len.css" type="text/css" />
		<script type="text/javascript" src="js/jquery.js">
</script>
		<script type="text/javascript" src="js/set_music.js" >
</script>
		<script type="text/javascript" src="js/jianxiao.js">
</script>
<script type="text/javascript">


</script>
	<script type="text/javascript" src="js/books.js" charset="utf-8">

</script>
  </head>
  
  <body onload="getbooks()">
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
			<!--header头部结束-->

			<div id="navi">
				<span class="l"><a href="shouye.jsp">首页</a> > 个人中心>书籍主页：</span>

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
					
						<ul class="menu">
	
		
   		<c:set var="i" value="0">
		</c:set>
		<c:set var="col" value="0">
		</c:set>
			<c:forEach items="${info}" var="infos" step="50">
			<c:set var="col" value="${col+1}" />
		 <li class="level1">
			<a href="#none">
				<c:if test="${col==1}" scope="page" var="te">
				it
					<c:set var="in" value="it">
		</c:set>
				</c:if>
				<c:if test="${col==2}" scope="page" var="te">
				math
				<c:set var="in" value="math">
		</c:set>
				</c:if>
				<c:if test="${col==3}" scope="page" var="te">
				economy
				<c:set var="in" value="economy">
		</c:set>
				</c:if>
				<c:if test="${col==4}" scope="page" var="te">
				fiction
				<c:set var="in" value="fiction">
		</c:set>
				</c:if>
				<c:if test="${col==5}" scope="page" var="te">
				literature
				<c:set var="in" value="literature">
		</c:set>
				</c:if>
				<c:if test="${col==6}" scope="page" var="te">
				scientist
				<c:set var="in" value="scientist">
		</c:set>
				</c:if>
				<c:if test="${col==7}" scope="page" var="te">
				tool
				<c:set var="in" value="tool">
		</c:set>
				</c:if>
			</a>

				<ul class="level2" style="text-indent:none;">
				<!--这里修改 -->
				<marquee style="WIDTH: 100%; HEIGHT: 100%" scrollamount="4" direction="up" >
				<c:forEach items="${info}" var="infos" step="10" end="${i+50}">
				
				
				<li>
				
				书名:${info[0+i]}，作者:${info[2+i]}，
				<br />
				&nbsp;&nbsp;&nbsp; 阅读次数:${info[3+i]}，下载次数:${info[8+i]}，
				<br />
				日期:${info[4+i]}
			
				<a	href="book/read.jsp" target="_blank" onclick="read_read('${info[0+i]}','${info[i+5]}','${in}')" style="width:100px;height:27px;font-size:16px; color: #900;text-decoration:underline;" target="_blank">进入阅读</a>
				</li>
			<!--	<li><a
				href="book/read.jsp?users_name=${param.users_name}&interest=${interests}
				&books_name=${info[0+i]}&books_path=${info[i+5]}&nowcount=1" target="_blank"
				>进入阅读</a></li>
				-->
				
								
				
				<c:set var="i" value="${i+10}" />
				
				<!--这里修改 -->
				
				
				</c:forEach>
				</marquee >
			</ul>
			
			
		</li>			
		
				</c:forEach>
		
	</ul>
					
					
	


	
		
								
					</div>

				
			</div>
			<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;"></div>
  </body>
</html>
