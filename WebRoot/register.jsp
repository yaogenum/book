<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>注册页面</title>
<link href="css/top.css" rel="stylesheet" type="text/css" />
<link href="css/zhuce.css" rel="stylesheet" type="text/css">
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
		/*if(!(/^\w{2,10}$/.test(f.users_name.value))){
		
			alert();
			f.users_name.focus()
			return false;
		}*/
		if(f.users_name.value.length>10||f.users_name.value.length<2){
			alert("用户名必须是2-10位");
			return false;
		}
		
		if(f.users_password.value.length>10||f.users_password.value.length<2){
			alert("密码必须是2-10位");
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
		if(users_name.length>10||users_name.length<2){
			alert("用户名必须是2-10位");
			
		}
		else{
		createXMLHttp();
		//var users=encodeURI(encodeURI(users_name));
		xmlHttp.open("POST", "servlet/Firstname_indicate?users_name="+users_name);
		xmlHttp.onreadystatechange = name_indicateCallback;
		xmlHttp.send(null);
		}
		
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
     <span class="l"><a href="shouye.jsp">首页</a> > 注册：</span>
     <span class="r">已有账号，立即<a href="login.jsp">登陆</a></span>
     </div>
       <div id="kuang">
          <form name="register" action="servlet/Register"  method="Post" onSubmit="return validate(this)">
			 <p>用户名:  <input id="search" style="width:144px;height:23px; color:#000;" 
            type="text" name="users_name" size="14px" id="users_name" onblur="name_indicate(this.value)"><span id="tishi"></span><br></p>
	
			<br /> 
			 <p>密码: &nbsp;  <input id="search" style="width:144px;height:23px; color:#000;"
            type="password" name="users_password" size="14px"></p><br /> 
			      <p> 性别: &nbsp;   <input type="radio" name="sex" value="man" /> 男
		<input type="radio" name="sex"  value="women" />女</p><br />
 
	 <p> 兴趣: &nbsp; <select name="interest">
 	<option value="it">It</option>
	<option value="math">Math</option>
	<option value="literature">literature</option>
	<option value="economy">Economy</option>
	<option value="fiction">fiction</option>
	<option value="scientist">scientist</option>
	<option value="tool" selected="selected">tool</option>
 	</select></p><br />
           <p> 邮箱: &nbsp;  <input style="width:144px;height:23px; color:#000;" type="text" name="email"/></p> <br />
 
			 
             <p>验证:  &nbsp;  <input id="search" style="width:90px;height:23px; color:#000;" 
            type="text" name="yanzhen" maxlength="4"><img src="image.jsp" width="100px" height="20px"  />
            <!--验证码--></p>
       <br />   <input  style="color:#FFF;background:#4F8900;width:70px;height:25px;float:left;margin-left:20px;margin-top:15px;;" 
          type="reset" values="重置"size="14px" >
      <input style="float:left;margin-left:100px;color:#FFF;background:#4F8900;border:none;width:80px;height:25px;margin-top:15px;"type="submit" values="提交"size="14px"> 
           </form> 
           <hr> <img src="images/book.gif"  width="78px" height="67px" style="border:none;
float:left;margin-left:380px;margin-top:20px;">

       </div>
       <img src="images/1.jpg"  width="162" height="108px" style="border:none;
float:left;margin-top:100px;margin-left:2px;">
      <img src="images/hua.jpg"  width="100%" height="57px" style="border:none;
float:left;margin-top:30px;">
</div>

  
  </body>
</html>