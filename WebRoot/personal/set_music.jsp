<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=gb2312" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c"%>
<!DOCTYPE html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
	
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="css/personal-center.css" rel="stylesheet" type="text/css">
		<link href="css/top.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="css/len.css" type="text/css" />
		<title>My JSP 'set_music.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/set_music.js" charset="gb2312">
</script>
		<script type="text/javascript" src="wojs/personal-center.js">
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
					<!--����-->
				<ul>
						<li>
							<a href="shouye.jsp">��ҳ</a>
						</li>
						<li>
							<a
								href="servlet/Get_fenlei?un=no"
								onclick="indicate(${sessionScope.users_name})">���Ϸ���</a>
						</li>
						<li>
							<a
								href="download/shangchuan.jsp"
								onclick="indicate(${sessionScope.users_name})"> ��������</a>
						</li>
						<li>
							<a
								href="servlet/Tuijian" onclick="indicate(${sessionScope.users_name})"
								>�����Ƽ�</a>
						</li>
						<li>
							<a href="jsp/forum-list.jsp?flag=0" target="_balnk">��̳С��</a>
						</li>
						<li>
							<a
								href="personal/users_succeed.jsp"
								onclick="indicate(${sessionScope.users_name})">��������</a>
						</li>

					</ul>

				</div>
			</div>
			<!--headerͷ������-->

			<div id="navi">
				<span class="l"><a href="shouye.jsp">��ҳ</a> > ��������>�������֣�</span>

			</div>


			<div id="kuang">
				<div id="kuang_left">
					<img src="images/nan.jpg" width="18px" height="16px"
						style="border: none; float: left; margin-top: 20px; margin-left: 50px;">
						<h1>
							�û�����${sessionScope.users_name}
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
											onclick="ziliao()" >��������</a>
									</li>
									<li>
										<a
											href="download/load.jsp"
											>����</a>
									</li>
									<li>
										<a
											href="download/shangchuan.jsp"
											target="_blank">�ϴ�</a>
									</li>
									<li>
										<a
											href="servlet/Add_tag?flag=no"
											>��ǩ����</a>
									</li>
									<li>
										<a
											href="personal/vip_arrange.jsp"
											>���ֹ���</a>
									</li>
									<li>
										<a
											href="servlet/Tuijian"
											>�����Ƽ�</a>
									</li>
									<li>
										<a
											href="servlet/Arrange_music"
											>��������</a>
									</li>
									<li>
<a href="jsp/forum-list.jsp?flag=0" target="_balnk">������̳</a>
									</li>

								</ul>
							</div>
				</div>
				<div id="kuang_right">
					
					
							
		<c:set var="i" value="0">
		</c:set>
		<c:set var="col" value="1">
		</c:set>
		<c:forEach var="lists" items="${list}" step="5" >
		<div class="box" >
		
		<ul class="menu">
								<p>��ţ�${col}
								������:${list[i]} <input type="button"  value="��ϸ��Ϣ" onclick="slide(${col})" style="background: #690; color: #FFF;" />
								<input type="button" value="���ñ�������" onclick="music_set('${list[i]}')"    id="set" style="background: #690; color: #FFF;" />
								<input type="button" value="����" onclick="listen('${list[i+4]}')"    id="sets" style="background: #690; color: #FFF;" />
								</p>
								<div id="${col}" style="display:none">
									������:${list[i+1]}<br/>
									����ʱ��:${list[i+2]}
									�Ƿ�Ϊ��������:${list[i+3]}
								
								</div>
								
						</ul>
		
			<c:set var="i" value="${i+5}" />
			<c:set var="col" value="${col+1}" />
		
   	
		</div>
		</c:forEach>
				
		&nbsp	&nbsp	 &nbsp &nbsp
<audio controls="controls" id="c">
  <source src="/i/song.ogg" type="audio/ogg">
  <source src="/i/song.mp3" type="audio/mpeg">
	<embed height="3" width="50" src="/i/song.mp3" />
</audio>
				</div>



				<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;">
			</div><script type="text/javascript" src="http://mediaplayer.yahoo.com/js"></script>
	</body>
</html>
