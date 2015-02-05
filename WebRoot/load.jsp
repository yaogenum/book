<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

		<title>My JSP 'load.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/top.css" rel="stylesheet" type="text/css">
    <link href="css/load.css" rel="stylesheet" type="text/css">
	<link href="css/personal-center.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="css/len.css" type="text/css" />
		<script type="text/javascript">
function validate(f) {
	if (!(/^\w{2,10}$/.test(f.books_name.value))) {
		alert("书名必须是2-10位");
		f.books_name.focus()
		return false;
	}
	if (!(/^\w{2,10}$/.test(f.books_tag.value))) {
		alert("书签必须是2-10位");
		f.books_tag.focus()
		return false;
	}
	var file = f.file.value;
	if (file == "") {
		alert("请选择文件");
		f.file.focus();
		return false;
	}
	var regex = /\.txt$/gi;
	var regex1 = /\.doc$/gi;
	var regex2 = /\.html$/gi;
	var regex3 = /\.java$/gi;

	if ((regex.test(f.file.value) == false)
			&& (regex1.test(f.file.value) == false)
			&& (regex2.test(f.file.value) == false)
			&& (regex3.test(f.file.value) == false)) {
		alert("文件格式不对");
		f.file.focus();
		return false;
	}
	
	var regex4=/\.jpg$/gi;
	if(regex4.test(f.books_pic.value)==false){
		alert("图片格式需要为jpg");
		f.books_pic.focus();
		return false;
	}
	
	return true;
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

					<div id="header_logo_sou">
						<!--搜索-->

						<div id="header_logo_sou_w">
							<form>
								<input id="search" style="width: 230px; height: 26px;"
									type="text" size="11px">
							</form>
						</div>
						<div id="header_logo_sou_m">
							<form>
								<select name="interest"
									style="float: left; margin-top: 1px; width: 47px; height: 26px; background: #F2F2F2">

									<option value="it">
										It
									</option>
									<option value="math">
										Math
									</option>
									<option value="literature">
										literature
									</option>
									<option value="economy">
										Economy
									</option>
									<option value="fiction">
										fiction
									</option>
									<option value="scientist">
										scientist
									</option>
									<option value="tool">
										tool
									</option>
								</select>
							</form>
						</div>

						<div id="header_logo_sou_s">
							<a href="#"></a>
						</div>

					</div>
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
								href="servlet/Tuijian?xuhao=1&users_name=${param.users_name}&vip=${param.vip}"
								onclick="indicate(${param.users_name})">资料分类</a>
						</li>
						<li>
							<a
								href="servlet/Yanzhen?xuhao=2&users_name=${param.users_name}&vip=${param.vip}"
								onclick="indicate(${param.users_name})"> 分享资料</a>
						</li>
						<li>
							<a
								href="servlet/Tuijian?users_name=${param.users_name}&vip=${vip}"
								target="_blank">随便看看</a>
						</li>
						<li>
							<a href="">论坛</a>
						</li>
						<li>
							<a
								href="servlet/Yanzhen?xuhao=4&users_name=${param.users_name}&vip=${param.vip}"
								onclick="indicate(${param.users_name})">个人中心</a>
						</li>

					</ul>

				</div>
			</div>
			<!--header头部结束-->

			<div id="navi">
				<span class="l"><a href="shouye.jsp">首页</a>>个人中心 > 搜索：</span>

			</div>


			<div id="kuang">
				<div id="kuang_left">
					<img src="images/nan.jpg" width="18px" height="16px"
						style="border: none; float: left; margin-top: 20px; margin-left: 50px;">
					<h1>
						用户名：${param.users_name}
					</h1>
					<img src="images/touxiang.jpg" width="117px" height="120px"
						style="border: none; float: left; margin-top: 20px; margin-left: 50px;">
					</br>
					<p class="score">
						会员状态:${vip}
					</p>
					<div id="kuang_left_manger">
						<ul>
							<li>
								<a
									href="personal/set_personal.jsp?users_name=${param.users_name}"
									onclick="ziliao()" >重置资料</a>
							</li>
							<li>
								<a
									href="download/load.jsp?users_name=${param.users_name}&vip=${vip}"
									>搜索</a>
							</li>
							<li>
								<a
									href="download/shangchuan.jsp?users_name=${param.users_name}&vip=${vip}"
									target="_blank">上传</a>
							</li>
							<li>
								<a
									href="servlet/Add_tag?users_name=${param.users_name}&vip=${vip}&flag=no"
									target="_blank">书签管理</a>
							</li>
							<li>
								<a
									href="personal/vip_arrange.jsp?users_name=${param.users_name}"
									target="_blank">积分管理</a>
							</li>
							<li>
								<a
									href="servlet/Tuijian?users_name=${param.users_name}&vip=${vip}"
									target="_blank">佳书推荐</a>
							</li>
							<li>
								<a
									href="servlet/Arrange_music?users_name=${param.users_name}&vip=${vip}"
									target="_blank">管理音乐</a>
							</li>
							<li>
								<a href="">进入论坛</a>
							</li>

						</ul>
					</div>
				</div>
                <img src="images/jiashu.png" width="147px" height="44px"
						style="border: none; float: left; margin-top: 20px; margin-left: 120px;">
                        <img src="images/7.png" width="177px" height="54px"
						style="border: none; float: left; margin-top: 20px; margin-left: 0px;">
                        <br/>
				<div id="kuang_right">
					
                    <p id="nv">
<a href="">It</a>
<a href="">Math</a>
<a href="">literature</a>
<a href="">Economy</a>
<a href="">fiction</a>
<a href="">scientist</a>
</p>
					<!--搜索--><div id="kuang_right_sou">

						<div id="kuang_right_sou_w">
							<form>
								<input id="search" style="width: 232px; height: 27px;float:left;"
									type="text" size="11px">
							</form>
						</div>
						

						<div id="kuang_right_sou_s">
							<input type="submit" value="搜索"></input>
						</div>

					</div>
					<!--搜索-->
						<!--<form action="servlet/Download?users_name=${param.users_name}&vip=${param.vip} " method="post">
			书名：
			<input type="text" name="books_name">
			<br>
		
			类型:<select name="interest">
 	<option value="it">It</option>
	<option value="math" >Math</option>
	<option value="literature">literature</option>
	<option value="economy">Economy</option>
	<option value="fiction">fiction</option>
	<option value="scientist">scientist</option>
	<option value="tool" selected="selected">tool</option>
 	</select>
			<br>
			<input type="submit" values="确定">
		</form>-->

				



				</div>



				<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;">
			</div>
	</body>
</html>
