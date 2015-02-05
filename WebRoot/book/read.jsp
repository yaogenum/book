<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>My JSP 'read.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
			<meta http-equiv="cache-control" content="no-cache">
				<meta http-equiv="expires" content="0">
					<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
						<meta http-equiv="description" content="This is my page">
							<link href="css/read.css" rel="stylesheet" type="text/css">
							<link href="css/top.css" rel="stylesheet" type="text/css" />
								<script type="text/javascript" src="js/jquery.js">
</script>
								
								<script type="text/javascript" src="js/read_book.js"
									>
</script>

								<script type="text/javascript" src="js/read_set.js"
									>
</script>
								<script type="text/javascript" src="js/temp.js" >
</script>




	</head>

	<body id="bod" onLoad="play_musics('${sessionScope.nowcount}')">
		<div id="container">
			<div id="header">
				<div id="header_denglu">
				</div>
				<!--header_denglu-->
				<div id="header_logo">

				
					<!--搜索-->

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
			<div id="YOUDAO_SELECTOR_WRAPPER" style="display:none; margin:0; border:0; padding:0; width:320px; height:240px;"></div>
<script type="text/javascript" src="http://fanyi.youdao.com/openapi.do?keyfrom=jiashuyouyue&key=1586598840&type=selector&version=1.0&translate=on" charset="utf-8"></script>
			
				<span class="l"><a href="shouye.jsp">首页</a>>  阅读页面：
				
				</span>

			</div>


			<div id="kuang">
				<p align="center" class="up">
					<a id="dingbu"> 
					
					<br />
					</a>
					
					
					<input type="button" name="shangyiye"
						style="background: #690; color: #FFF;" value="上一页"
						onclick="read_before()" />

					当前是第
					<span id="nowcount_shang">1</span>页

					<input type="button" name="shangyiye"
						style="background: #690; color: #FFF;" value="下一页"
						onclick="read_next()" />

					跳到第
					<input type="text" name="yeshu" id="yeshu"
						style="width: 40px; height: 22px;" onblur="tiaozhuan1(this.value)">
						页 <input type="submit" name="ok"
							style="border: none; background: #690; color: #FFF;" value="确定"
							onClick="tiaozhuan2()">
							<a href="javascript:void(0)"
								onclick="document.getElementById('dibu').scrollIntoView();"
								style="color: #690; border: none;">快速跳到底部</a>

				</p>





				<p align="left">
					<div id="content">
						欢迎来到佳书有约(公共首页)
					</div>
					<br />

					<div style="clear: both"></div>
<br>
							颜色： <select style="width: 50px; height: 22px; font-size: 13px;"
								name="selector" id="selector" onChange="changeColor()">
								<option value="red">
									红色
								</option>
								<option value="green">
									绿色
								</option>
								<option value="blue">
									蓝色
								</option>
								<option value="yellow">
									黄色
								</option>
								<option value="black">
									黑色
								</option>
							</select>
							字体： <select style="width: 50px; height: 22px; font-size: 13px;"
								name="selector2" id="selector2" onChange="changeStyle()">
								<option value="one">
									隶书
								</option>
								<option value="two">
									楷体
								</option>
								<option value="three">
									宋体
								</option>

							</select>
							大小： <select style="width: 50px; height: 22px; font-size: 13px;"
								name="selector3" id="selector3" onChange="changeSize()">
								<option value="one">
									小
								</option>
								<option value="two">
									中
								</option>
								<option value="three">
									大
								</option>
							</select>
							阅读背景： <select name="beijing" id="beijing"
								onChange="changeBeijing()">
								<option value="heise">
									卡通
								</option>
								<option value="lanse">
									书架
								</option>
								<option value="qingse">
									气泡
								</option>
								<option value="chengse">
									橙色
								</option>
								<option value="hong">
									浅蓝
								</option>
								<option value="mohua">
									墨画
								</option>
							</select>



							加入书签，下次继续阅读 <input style="background: #690; color: #FFF;"
								type="button" name="continue" id="continue" value="确定"
								onclick="continue_read('${sessionScope.users_name}')">
				</p>
				</br>
					<p align="center"class="up">
						
					
					<input type="button" name="shangyiye"
						style="background: #690; color: #FFF;" value="上一页"
						onclick="read_before()" />

					当前是第
					<span id="nowcount_xia">1</span>页

					<input type="button" name="shangyiye"
						style="background: #690; color: #FFF;" value="下一页"
						onclick="read_next()" />

					跳到第
					<input type="text" name="yeshu" id="yeshu"
						style="width: 40px; height: 22px;" onblur="tiaozhuan1(this.value)">
						页 <input type="submit" name="ok"
							style="border: none; background: #690; color: #FFF;" value="确定"
							onClick="tiaozhuan2()">
								<a href="javascript:void(0)"
									onclick="document.getElementById('dingbu').scrollIntoView();"
									style="color: #690;">快速跳到顶部</a>
									<a id="dibu"> <br />
									
									<script type="text/javascript" src="js/QQ.js" charset="utf-8">
</script>

								<script src="http://connect.qq.com/widget/loader/loader.js"
									widget="shareqq" charset="utf-8">
</script>
					</a>
					</p>
					
						
												

				<br>
					<!--  <div id="kuang_content"></div><!--这里是读的内容-->

					

						<!-- 音乐播放器 -->

						<div>
						<h3>

							<font color="green">输入歌手和歌曲名找歌曲</font>
						</h3>
						<form style="width:440px;float:left;"
							action="servlet/MusicServlet"
							method="post">
							
							歌手名：

							<input type="text" name="person_name"
								style="width: 90px; height: 23px;" />
							<!--onBlur="get_name(this.value)" onBlur="get_songer(this.value)"-->

							歌曲名：

							<input type="text" style="width: 130px; height: 23px;"
								name="music_name" />


							<input type="submit" style="background: #690; color: #FFF;"
								value="搜索" />
						</form>
						</div>
						<div style="float:left;width:340px;">
						<object height="80px" width="330px" data="${sessionScope.add}"></object>
						
						</div>
						<br/>
						<p>
							<a href="${sessionScope.add}"><h4>
                      
									<font color="red">${sessionScope.errors}</font>
								</h4> </a>
			<!--	?&nowcount=${nowcount+1}&books_name=${param.books_name}&users_name=${param.users_name}&leibie=${param.leibie}			<c:if test="${add==null}">
			你的输入可能有误，找不到歌曲信息，请重新输入或者更换关键词
			</c:if>
							<c:if test="${param.add!=null}">
		已搜索到歌曲信息
			</c:if>-->
							<span id="errors"></span>

						</p>
						
						
			</div>

<img src="images/hua.jpg"  width="100%" height="57px" style="border:none;
float:left;margin-top:0px;">

		</div>

	</body>
</html>