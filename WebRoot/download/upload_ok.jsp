<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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

		<title>My JSP 'upload_ok.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/top.css" rel="stylesheet" type="text/css" />
		<link href="css/denglu.css" rel="stylesheet" type="text/css">
		<script type="text/javascript">
			var flag=0;
			function uploads(){
			if(flag==0){
			alert("�����Ѿ��ϴ��ɹ�");
			flag=1;
			}
			else{
			flag=1;
			}
			}
		</script>
	</head>

	<body onload="uploads()">
		<br>

		<div id="container">
			<div id="header">
				<div id="header_denglu">
				</div>
				<!--header_denglu-->
				<div id="header_logo">

					<div id="header_logo_sou">
						<!--����-->

						<div id="header_logo_sou_w">
							
						</div>
						

						<div id="header_logo_sou_s">
							<a href="#"></a>
						</div>

					</div>
					<!--����-->

				</div>
				<!--header_logo-->
				<div id="header_navi">
					<!--����-->

				</div>
			</div>
			<!--headerͷ������-->

			<div id="navi">
				<span class="l"><a
					href="shouye.jsp">��ҳ</a>
					><a
					href="personal/users_succeed.jsp">��������</a>>
					<a
					href="download/shangchuan.jsp">�ϴ�����</a>>�ϴ��ɹ���</span>

				<span class="r">��û���˺ţ�����<a href="register.jsp">ע��</a>; <a
					href="lost_password.jsp">����������������</a> </span>
			</div>
			<div id="kuang">
				<hr>
				<img src="images/book.gif" width="78px" height="67px"
					style="border: none; float: left; margin-left: 380px; margin-top: 10px;">
				
				<br />
				<p> &nbsp  &nbsp  &nbsp &nbsp  &nbsp   �𾴵�${sessionScope.users_name}�û�,��л�����ϴ����ϣ����ǽ�������2����Ļ���,${param.vip}</p>
				<a
					href="shouye.jsp">�ص���ҳ</a>
				<br />
				<a
					href="personal/users_succeed.jsp">�ص���������</a>
				<br />
				<a
					href="download/shangchuan.jsp">�����ϴ�</a>
				<br />
			</div>
			<img src="images/1.jpg" width="162" height="108px"
				style="border: none; float: left; margin-top: 100px; margin-left: 2px;">
			<img src="images/hua.jpg" width="100%" height="57px"
				style="border: none; float: left; margin-top: 140px;">
		</div>
	</body>
</html>
