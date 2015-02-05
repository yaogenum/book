<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'vip_arrange.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--><link rel="stylesheet" href="css/vip_arrange.css" type="text/css" />
	<link href="css/top.css" rel="stylesheet" type="text/css">
	<link href="css/personal-center.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="css/len.css" type="text/css" />
    	<script type="text/javascript" src="wojs/jquery.js">
</script>
								<script
									src="wojs/vip_arrange.js">
</script>
<script type="text/javascript">
var xmlHttp;
function createXMLHttp() {
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}





function kaitong(a){
	var b=a;
	createXMLHttp();
	xmlHttp.open("GET", "servlet/Vip_arrange?canshu="+b);
	xmlHttp.onreadystatechange = kaitongCallback;
	xmlHttp.send(null);
}
function kaitongCallback(){
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			var text=xmlHttp.responseText;
			alert(text);
		}
	}
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
				<span class="l"><a href="shouye.jsp">首页</a>>个人中心 > 积分管理：</span>

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
					
             
<iframe src="http://m.weather.com.cn/m/pn4/weather.htm "  height="30" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" style="width:100%;margin-left:390px;_margin-left:20px; float:left; display:inline;"></iframe>
       

						 <p style="float:left;margin-top:12px;margin-left:40px;border:none; color: #FFF;background:#690;width:560px;height:40px;display:block;line-height:40px;">积分原则：可以上传资料获取积分，可以开通vip</p>
                         <br>
                       
   <div id="shangchuan">
   <div id="shangchuan1">
   <a href="download/shangchuan.jsp" target="_blank" />去上传</a><div>
  
   <input type="button"  value="开通会员" onClick="kaitong(1)"  style="padding:0px;float:left;margin-top:82px;margin-left:-121px;border:none; color: #FFF;"  />
 <input type="button"  value="查询积分" onClick="kaitong(2)" style="padding:0px;float:left;margin-top:144px;margin-left:-121px;border:none; color: #FFF;" />
</div>
					</div>



				</div>



				<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;">
			</div>
  </body>
</html>
