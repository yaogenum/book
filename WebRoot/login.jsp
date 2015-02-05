<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登陆页面</title>
<link href="css/denglu.css" rel="stylesheet" type="text/css">
<link href="css/top.css" rel="stylesheet" type="text/css" />
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
		if(f.users_name.value.length>10||f.users_name.value.length<2){
			alert("用户名必须是2-10位");
			return false;
		}
		
		if(f.users_password.value.length>10||f.users_password.value.length<2){
			alert("密码必须是2-10位");
			return false;
		}
		
		return true;
	}
</script>
<body>
<div id="container">
 <div id="header">
          <div id="header_denglu">
          </div><!--header_denglu--> 
          <div id="header_logo">
          
          </div><!--header_logo-->
         <div id="header_navi"><!--导航-->
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
						<!--	<a
								href="servlet/Yanzhen?xuhao=2&users_name=${sessionScope.users_name}&vip=${sessionScope.vip}"
								onclick="indicate(${sessionScope.users_name})">
								分享资料</a>-->
								<a
								href="download/shangchuan.jsp"
								onclick="indicate(${sessionScope.users_name})">分享资料</a>
						</li>
						<li>
							<a
								href="servlet/Tuijian"
								onclick="indicate(${sessionScope.users_name})">佳书推荐</a>
						</li>
						<li>
							<a  href="jsp/forum-list.jsp?flag=0"
								onclick="indicate(${sessionScope.users_name})">论坛小区</a>
						</li>
						<li>
							<a
								href="personal/users_succeed.jsp"
								onclick="indicate(${sessionScope.users_name})">个人中心</a>
						</li>

					
     
      </ul>
      
      </div>
    </div><!--header头部结束-->
    
     <div id="navi">
     <span class="l"><a href="shouye.jsp">首页</a> > 登陆：</span>
     <span class="r">还没有账号，立即<a href="register.jsp">注册</a>;
	  <a href="lost_password.jsp">忘记密码请点击这里</a>
	 </span>
     </div>
       <div id="kuang">
          <form name="Users_indicate" action="servlet/LoginForm"  method="post" onSubmit="return validate(this)">
			 <p>用户名:  <input id="search" style="width:186px;height:23px; color:#000;" 
            type="text" name="users_name" size="14px"></p> <br /> 
            
			  <p>密码: &nbsp;  <input id="search" style="width:186px;height:23px; color:#000;" 
            type="password" name="users_password" size="14px"></p><br /> 
            
            <input id="search" 
            type="text" name="vip"  style="display: none">
            
             <p>验证:  &nbsp;  <input id="search" style="width:100px;height:23px; color:#000;" 
            type="text" name="yanzhen" maxlength="4"><img src="image.jsp" width="100px" height="20px"  />
            <!--验证码--></p>
       <br />   <input  style="color:#FFF;background:#4F8900;width:70px;height:25px;float:left;margin-left:30px;margin-top:20px;;" 
          type="reset" value="重置"size="13px" >
      <input style="float:left;margin-left:50px;color:#FFF;background:#4F8900;width:70px;height:25px;margin-top:20px;"type="submit" value="登录"size="13px"> 
           </form> 
           <hr> <img src="images/book.gif"  width="78px" height="67px" style="border:none;
float:left;margin-left:380px;margin-top:10px;">

       </div>
       <img src="images/rightcartoon.jpg"  width="162" height="108px" style="border:none;
float:left;margin-top:100px;margin-left:2px;">
      <img src="images/buttonpic.jpg"  width="100%" height="57px" style="border:none;
float:left;margin-top:140px;">
</div>
</body>
</html>