<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
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
		if(!(/^\w{5,10}$/.test(f.users_name.value))){
			alert("用户名必须是5-10位");
			f.users_name.focus()
			return false;
		}
		if(!(/^\w{5,10}$/.test(f.users_password.value))){
			alert("密码必须是5-10位");
			f.users_password.focus()
			return false;
		}
		
		if(!(/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/.test(f.email.value))){
			alert('提示\n\n请输入有效的E_mail！');
			f.email.focus();
			return false;
		}
		return true;
	}
	
	
	var xmlHttp;
	function createXMLHttp(){
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}
	function name_indicate(users_name){
		createXMLHttp();
		var users=users_name;
		xmlHttp.open("POST", "servlet/Firstname_indicate?users_name="+users);
		xmlHttp.onreadystatechange = name_indicateCallback;
		xmlHttp.send(null);
	}
	function name_indicateCallback(){
		
		if (xmlHttp.readyState == 4) {
		// 调用完成
			if (xmlHttp.status == 200){
				var text = xmlHttp.responseText;
				document.getElementById("tishi").innerHTML = text;
				
			}
		}
	}
	
	
</script>




  <body bgcolor="F9A859">
     <form name="register" action="servlet/Register"  method="Post" onSubmit="return validate(this)" align="left">  
 	姓名:<input type="text" name="users_name" id="users_name" onblur="name_indicate(this.value)"  /><span id="tishi"></span><br>
 	密码:<input type="password" name="users_password" /><br>
 	性别: <input type="radio" name="sex" value="man" /> 男
 	<input type="radio" name="sex"  value="women" />女
 	<br>
 	兴趣:<select name="interest">
 	<option value="it">It</option>
	<option value="math">Math</option>
	<option value="literature">literature</option>
	<option value="economy">Economy</option>
	<option value="fiction">fiction</option>
	<option value="scientist">scientist</option>
	<option value="tool" selected="selected">tool</option>
 	</select>
 	<br>
 	邮箱:<input type="text" name="email"/>
 	<br>
 	验证:<input type="text" name="yanzhen" maxlength="4" />
 	<img src="image.jsp" width="100" height="20">
 	<br>
 	<input type="reset" values="重置" >
 	
    <input type="submit" values="提交">
    <br>
 </form>
  </body>
</html>
