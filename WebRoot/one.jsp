<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="one.css" rel="stylesheet" type="text/css">
</head>

<body>
<div id="container">
  <div id="header">
      <div id="header_denglu"></div>
      <div id="header_logo">
       <img style="float:left; margin-left:20px;" src="images/1.jpg"  width="162px" height="88px">
       <img style="float:left; margin-left:35px;margin-top:11px;" src="images/14.jpg"  width="262px" height="64px">
       <img style="float:left;margin-left:5px; margin-top:58px;" src="images/3.jpg"  width="105px" height="16px">
      <div id="header_logo_sou">
           
          <div id="header_logo_sou_w"> 
          <form>
			<input id="search" style="width:200px;height:27px; color:#000;" 
            type="text" size="12px">
         </form> 
          </div>
          <div id="header_logo_sou_s"><a href="#">搜索</a> </div>
      
       </div>
      </div>
      <div id="header_navi">
      <ul>
      <li><a href="">首页</a></li>
      <li><a href="">资料分类</a></li>
      <li><a href="">分享资料</a></li> 
      <li><a href="">随便看看</a></li>
      <li><a href="">留言板</a></li>
      <li ><a href="">个人中心</a></li>
     
      </ul>
      
      </div>
  </div><!--header-->
     <div id="navi">
     <span class="l">登陆：</span>
     <span class="r">还没有账号，立即<a href="register.jsp">注册</a></span>
     </div>
       <div id="kuang">
           <form>
			 用户名:  <input id="search" style="width:186px;height:23px; color:#000;" 
            type="text" name="users_name" size="14px">
         </form> 
        
           <form>
			 密码: &nbsp;  <input id="search" style="width:186px;height:23px; color:#000;" 
            type="password" name="users_password" size="14px">
         </form>
         <form>
         验证:  &nbsp;  <input id="search" style="width:186px;height:23px; color:#000;" 
            type="text" name="yanzhen" maxlength="4">
 	<img src="image.jsp" width="100" height="20"  />
         </form> 
         
        
          <input style="width:40px;height:23px;float:left;margin-left:130px;margin-top:20px;color:#000;" 
          type="reset" values="重置"size="14px" >
 	 
     <br>
    <input style="float:left;margin-left:80px;margin-top:20px;"type="submit" values="提交"size="14px"> 
           
           <hr>
       </div>
</div>
</body>
</html>