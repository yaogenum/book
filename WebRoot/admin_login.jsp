<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin_login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/admin_login.css" rel="stylesheet" type="text/css">
  </head>
  
       <script type="text/javascript">

function changeimg()
{
var myimg = document.getElementById("code"); 
now = new Date(); 
myimg.src="makeCertPic.jsp?code="+now.getTime();
} 
</script>

<script type="text/javascript">
	function validate(f){
		if(!(/^\w{5,10}$/.test(f.admin_name.value))){
			alert("用户名必须是5-10位");
			f.admin_name.focus()
			return false;
		}
		if(!(/^\w{5,10}$/.test(f.admin_password.value))){
			alert("密码必须是5-10位");
			f.admin_password.focus()
			return false;
		}
		return true;
	}
</script>


  <body>
  <div id="kuang">
  <div id="kuang_form">
 <form name="Admin_indicate" action="servlet/Admin_indicate"  method="post" onSubmit="return validate(this)"> 
 	<p>姓名:<input type="text" name="admin_name"></p>
    
 	
 	<p>密码:<input type="password" name="admin_password"></p>
    
 	
 	<p>验证:<input type="text" name="yanzhen" maxlength="4"style="width:70px;">
 	<img src="image.jsp" width="80" height="20"></p>
 	
 	<input type="reset" values="重置"style="float:left;margin-left:20px;background:#690;color:#FFF;font-weight:bold;height:25px;line-height:25px;" >
 	
    <input type="submit" values="提交"style="float:left;margin-left:20px;background:#690;color:#FFF;font-weight:bold;height:25px;line-height:25px;" >
    <br>
 </form>
 </div>
 
 </div>
<img src="images/touxing.jpg"  style="border:none;
float:left;margin-left:350px;width:499px;height:132px;">
  </body>
  <style>
  body{
	
	background:url(images/login.jpg);
	}
#kuang{/*border:#000 1px solid;*/
	width:499px;
	height:260px;
	float:left;
	margin-top:150px;
	margin-left:350px;
	background:url(images/login1.jpg);
	}
	#kuang_form{
	float:left;
	width:232px;
	height:170px;
	margin-top:70px;
	margin-left:240px;

	}
	#kuang_form form{
	font-size:16px;
	font-weight:bold;
	color:#360;
	}
	
  </style>
</html>
