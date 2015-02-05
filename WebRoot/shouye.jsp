<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
 <link href="css/shouye.css" rel="stylesheet" type="text/css">
 <link href="css/top.css" rel="stylesheet" type="text/css">
 <link href="css/dengxiang.css" rel="stylesheet" type="text/css">
 <link href="css/marquee.css" type="text/css" rel="stylesheet">
 <link href="css/miaov_style.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="js/miaov.js">
</script>
 <script type="text/javascript" src="wojs/jquery.js"></script> 
 <script type="text/javascript" src="js/shouye.js"></script>
<script type="text/javascript" src="wojs/kxbdMarquee.js"></script>

<script type="text/javascript">
/*	function indicate(users_name) {
	if (users_name != null) {
	} else {
		alert("欢迎游客来访 ,请先登录或者注册,不然某些功能不能使用");
	}
}*/
	$(function(){
		$('#marquee1').kxbdMarquee({
			direction:'right',
			controlBtn:{left:'#goL',right:'#goR'},
			newAmount:5,
			eventA:'mouseenter',
			eventB:'mouseleave'
		});
		$('#marquee3').kxbdMarquee({
			direction:'up',
			controlBtn:{up:'#goU',down:'#goD'}
		});
		$('#marquee2').kxbdMarquee({isEqual:false});
		$('#marquee4').kxbdMarquee({isEqual:false,direction:'up'});
	});

</script>
 
 </head>

<body >
<div id="container" >
    <div id="header">
          <div id="header_denglu">
         欢迎来到佳书有约 
		 
		 <c:if test="${sessionScope.users_name==null}">
					
					<a href="login.jsp">登录 </a>或
					<a href="register.jsp">注册</a>
		</c:if>
						
	<c:if test="${sessionScope.users_name!=null}">
					,尊敬的<span style="color:yellow">${sessionScope.users_name}</span>
				<input type="button" onclick="tuichu('${sessionScope.users_name}')" value="退出" style="border:none;background:#508A00;color:red;"  />
	</c:if>
          </div><!--header_denglu--> 
          <div id="header_logo">
         <style> 
#kuang_right_sou {
    
    float: left;
    height: 43px;
    margin-left: 677px;
    
    width: 352px;
}
#header_logo a{
   font-size:12px;
    font-weight:bold;
	color:#cc6600;
	cursor:pointer;
}

#header_logo a:link{color:#900B09;}     /* 未访问的链接 */
#header_logo a:visited{none repeat scroll 0 0 transparent;}  /* 已访问的链接 */
#header_logo a:hover{color:red;}    /* 当有鼠标悬停在链接上 */
#header_logo a:active{text-decoration:underline;color:yellow;} 
#kuang_right_sou_w {
    float: left; 
    margin-left: 10px;
    margin-top: 5px;
}
#kuang_right_sou_s {
    float: left;
    margin-left: 7px;
    margin-top: 0px;
}
input, select {
    font-size: 12px;
    line-height: 16px;
}#kuang_right_sou_s input {
    background: none repeat scroll 0 0 #669900;
    color: #FFFFFF;
    display: block;
    float: left;
	margin-top:5px;
    font-size: 14px;
    font-weight: bold;
    height: 26px;
    line-height: 30px;
    width: 65px;
}</style><!--
      <p id="nv"style="flaot:left;margin-left:674px;margin-top:70px;">
<a onclick="get_leibie(this.innerHTML)">It</a>
<a onclick="get_leibie(this.innerHTML)">Math</a>
<a onclick="get_leibie(this.innerHTML)">literature</a>
<a onclick="get_leibie(this.innerHTML)">Economy</a>
<a onclick="get_leibie(this.innerHTML)">fiction</a>
<a onclick="get_leibie(this.innerHTML)">scientist</a>
<a onclick="get_leibie(this.innerHTML)">tool</a>
</p>-->
					<!--搜索<div id="kuang_right_sou">
<form action="servlet/Download?users_name=${sessionScope.users_name}&vip=${sessionScope.vip} " method="post" onclick="return (bool_leibie())">
						<div id="kuang_right_sou_w">
							
								<input id="search" style="width: 242px; height: 27px;float:left;"
									type="text" size="11px" name="books_name">
								<input id="interest" name="interest" type="text"  style="display:none"/>
						</div>
						

						<div id="kuang_right_sou_s">
				
							<input type="submit" value="搜索"></input>
						</div>
</form>
					</div>
     -->
          </div><!--header_logo-->
      <div id="header_navi"><!--导航-->
      <ul>
      
						<li>
							<a href="shouye.jsp">首页</a>
						</li>
						<li>
							<a
								href="servlet/Tuijian?un=no"
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
    
    <div id="left">
        <div id="left_zui">
             <div id="left_zui_navi">
             <div class="m"> 最新上传</div>
             <div class="n"> </div></div>
       <!-- <div id="box1" onMouseOver="pr_box('box1',150);" onMouseOut="pr_box('box1',100);">
	          <a href="" id="0" target="_blank"></a></div>
        <div id="box2" onMouseOver="pr_box('box2',150);" onMouseOut="pr_box('box2',100);">
	           <a href="" id="1" target="_blank"></a></div>
        <div id="box3" onMouseOver="pr_box('box3',150);" onMouseOut="pr_box('box3',100);">
	          <a href="" id="2" target="_blank"></div>
        <div id="box4" onMouseOver="pr_box('box4',150);" onMouseOut="pr_box('box4',100);">
	           <a href="" id="3" target="_blank"></a></div>
        <div id="box5" onMouseOver="pr_box('box5',150);" onMouseOut="pr_box('box5',100);">
	           <a href="" id="4" target="_blank"></a></div>
        <div id="box6" onMouseOver="pr_box('box6',150);" onMouseOut="pr_box('box6',100);">
	           <a href="" id="5" target="_blank"></a></div>
         <div id="box7" onMouseOver="pr_box('box7',150);" onMouseOut="pr_box('box7',100);">
	           <a href="" id="6" target="_blank"></a></div>-->
			   
			  <!--<ul>
			
			   <li id="box11">【书名】<a href="" id="0" target="_blank"></a><div id="author0"></div><div id="time0"></div></li>
			   <li id="box22" >【书名】<a href="" id="1" target="_blank"></a>【作者】<div id="author10"></div>【时间】<div id="time10"></div></li>
			   <li id="box33" >【书名】<a href="" id="2" target="_blank"></a>【作者】<div id="author20"></div>【时间】<div id="time20"></li>
			   <li id="box44" >【书名】<a href="" id="3" target="_blank"></a>【作者】<div id="author30"></div>【时间】<div id="time30"></li>
			   <li id="box55">【书名】<a href="" id="4" target="_blank"></a>【作者】<div id="author40"></div>【时间】<div id="time40"></li>
			   <li id="box66" >【书名】<a href="" id="5" target="_blank"></a>【作者】<div id="author50"></div>【时间】<div id="time50"></li>
			   <li id="box77" >【书名】<a href="" id="6" target="_blank"></a>【作者】<div id="author60"></div>【时间】<div id="time60"></li>
		--> 
		
		<table >
		<tr>
		<td><div style="width:220px;"><a href="" id="0" target="_blank" onclick="read_read(this,'it')"></a>
		</div></td>
		<td><div style="width:220px;"id="author0"></div></td>
		<td><div style="width:180px;" id="time0"></div></td>
		</tr>
		<tr>
		<td><div style="width:220px;"><a href="" id="1" target="_blank" onclick="read_read(this,'math')"></a></div></td>
		<td><div style="width:220px;"id="author10"></div></td>
		<td><div style="width:180px;" id="time10"></div></td>
		</tr>
		<tr>
		<td><div style="width:220px;"><a href="" id="2" target="_blank" onclick="read_read(this,'economy')"></a></div></td>
		<td><div style="width:220px;"id="author20"></div></td>
		<td><div style="width:180px;" id="time20"></div></td>
		</tr>
		<tr>
		<td><div style="width:220px;"><a href="" id="3" target="_blank" onclick="read_read(this,'fiction')"></a></div></td>
		<td><div style="width:220px;"id="author30"></div></td>
		<td><div style="width:180px;" id="time30"></div></td>
		</tr>
		<tr>
		<td><div style="width:220px;"><a href="" id="4" target="_blank" onclick="read_read(this,'literature')"></a></div></td>
		<td><div style="width:220px;"id="author40"></div></td>
		<td><div style="width:180px;" id="time40"></div></td>
		</tr>
		<tr>
		<td><div style="width:220px;"><a href="" id="5" target="_blank" onclick="read_read(this,'scientist')"></a></div></td>
		<td><div style="width:220px;"id="author50"></div></td>
		<td><div style="width:180px;" id="time50"></div></td>
		</tr>
		<tr>
		<td><div style="width:220px;"><a href="" id="6" target="_blank" onclick="read_read(this,'tool')"></a></div></td>
		<td><div style="width:220px;"id="author60"></div></td>
		<td><div style="width:180px;" id="time60"></div></td>
		</tr>
		</table>
		
	
		<!-- <li id="box11">
		【书名】<a href="" id="0" target="_blank"></a><div id="author0"></div><div id="time0"></div></li>
			  <li id="box22" >【书名】<a href="" id="1" target="_blank"></a><div id="author10"></div><div id="time10"></div></li>
			   <li id="box33" >【书名】<a href="" id="2" target="_blank"></a>【作者】<div id="author20"></div>【时间】<div id="time20"></li>
			   <li id="box44" >【书名】<a href="" id="3" target="_blank"></a>【作者】<div id="author30"></div>【时间】<div id="time30"></li>
			   <li id="box55">【书名】<a href="" id="4" target="_blank"></a>【作者】<div id="author40"></div>【时间】<div id="time40"></li>
			   <li id="box66" >【书名】<a href="" id="5" target="_blank"></a>【作者】<div id="author50"></div>【时间】<div id="time50"></li>
			   <li id="box77" >【书名】<a href="" id="6" target="_blank"></a>【作者】<div id="author60"></div>【时间】<div id="time60"></li>-->
			  <!-- </ul> 
			   <div id="box3" ><a href="" id="2" target="_blank"></a></div>
			   <div id="box4" ><a href="" id="3" target="_blank"></a></div>
			   <div id="box5" ><a href="" id="4" target="_blank"></a></div>
			   <div id="box6" ><a href="" id="5" target="_blank"></a></div> 
			   <div id="box7" ><a href="" id="6" target="_blank"></a></div>
             
             -->
        </div><!--left_zui-->
	  
			
         <div id="left_re">
             <div id="left_re_navi"><!--使用jquery获取 -->
             <div class="m"> 佳书推荐</div>
             <div class="n"> </div>
             </div>
    
    <!--书灯箱开始-->
	<div id="marquee1">
		<ul>
		
			
			<li><a href="" id="7" target="_blank"><img  src="images/math.jpg" width="130" height="182" id="700" onclick="read_reads('0','it')" /></a></li>
			<li><a href=""  id="8" target="_blank"><img  src="images/book1.jpg" width="130" height="182" id="800" onclick="read_reads('1','math')" /></a></li>
			<li><a href=""  id="9" target="_blank"><img  src="images/book3.jpg" width="130" height="182"  id="900"	onclick="read_reads('2','economy')"/></a></li>
			<li><a href=""  id="10" target="_blank"><img  src="images/book4.jpg" width="130" height="182" id="1000" onclick="read_reads('3','fiction')" /></a></li>
			<li><a href=""  id="11" target="_blank"><img  src="images/book5.jpg" width="130" height="182" id="1100"  onclick="read_reads('4','literature')"/></a></li>
			<li><a href=""  id="12" target="_blank"><img  src="images/book2.jpg" width="130" height="182" id="1200" onclick="read_reads('5','scientist')" /></a></li>
			<li><a href=""  id="13" target="_blank"><img  src="images/book3.jpg" width="130" height="182" id="1300" onclick="read_reads('6','tool')" /></a></li>
			
		</ul>
	</div><!--书灯箱结束-->
             
             
             
        </div><!--left_re-->
		
		 <div id="left_lei">
             <div id="left_lei_navi">
             <div class="m"> 资料分类</div>
             <div class="n"> </div>  </div>
             
			<div id="show1">
    <ul>
	 <li>
            <span class="bg6">IT</span>
             <div id="one">
			 <br />
			 <br />
             <p><a href="" id="100" target="_blank" onclick="read_read(this,'it')" ></a></p>
			 <p><a href="" id="101" target="_blank" onclick="read_read(this,'it')" ></a></p>
             <p><a href="" id="102" target="_blank" onclick="read_read(this,'it')" ></a></p>
             <p><a href="" id="103" target="_blank" onclick="read_read(this,'it')" ></a></p>
             <p><a href="" id="104" target="_blank" onclick="read_read(this,'it')" ></a></p>
             </div>
        </li>
        <li class="active">
            <span class="bg0">数学</span>
            <div id="one"> 
			 <br />
			 <br />
            <p><a href="" id="105" target="_blank" onclick="read_read(this,'math')" ></a></p>
            <p><a href="" id="106" target="_blank" onclick="read_read(this,'math')" ></a></p>
            <p><a href="" id="107" target="_blank" onclick="read_read(this,'math')" ></a></p>
            <p><a href="" id="108" target="_blank" onclick="read_read(this,'math')" ></a></p>
            <p><a href="" id="109" target="_blank" onclick="read_read(this,'math')" ></a></p>
            </div>
        </li>
        <li>
            <span class="bg1">经济</span>
            <div id="one"><div id="one"> 
			 <br />
			 <br />
			<p><a href="" id="110" target="_blank" onclick="read_read(this,'economy')" ></a></p>
				<p><a href="" id="111" target="_blank" onclick="read_read(this,'economy')" ></a></p>
            <p><a href="" id="112" target="_blank" onclick="read_read(this,'economy')" ></a></p>
            <p><a href="" id="113" target="_blank" onclick="read_read(this,'economy')" ></a></p>
            <p><a href="" id="114" target="_blank" onclick="read_read(this,'economy')" ></a></p>
            </div></div>
        </li>
        <li>
            <span class="bg2">小说</span>
           <div id="one"><div id="one"> 
		    <br />
			 <br />
            <p><a href="" id="115" target="_blank" onclick="read_read(this,'fiction')" ></a></p>
            <p><a href="" id="116" target="_blank" onclick="read_read(this,'fiction')" ></a></p>
            <p><a href="" id="117" target="_blank" onclick="read_read(this,'fiction')" ></a></p>
            <p><a href="" id="118" target="_blank" onclick="read_read(this,'fiction')" ></a></p>
            <p><a href="" id="119" target="_blank" onclick="read_read(this,'fiction')" ></a></p>
            </div></div>
        </li>
        <li>
            <span class="bg3">文学</span>
           <div id="one"><div id="one"> 
		    <br />
			 <br />
            <p><a href="" id="120" target="_blank" onclick="read_read(this,'literature')" ></a></p>
            <p><a href="" id="121" target="_blank" onclick="read_read(this,'literature')" ></a></p>
            <p><a href="" id="122" target="_blank" onclick="read_read(this,'literature')" ></a></p>
            <p><a href="" id="123" target="_blank" onclick="read_read(this,'literature')" ></a></p>
            <p><a href="" id="124" target="_blank" onclick="read_read(this,'literature')" ></a></p>
            </div></div>
        </li>
        <li>
            <span class="bg4">工具书</span>
            <div id="one"><div id="one"> 
			 <br />
			 <br />
            <p><a href="" id="130" target="_blank" onclick="read_read(this,'tool')" ></a></p>
            <p><a href="" id="131" target="_blank" onclick="read_read(this,'tool')" ></a></p>
            <p><a href="" id="132" target="_blank" onclick="read_read(this,'tool')" ></a></p>
            <p><a href="" id="133" target="_blank" onclick="read_read(this,'tool')" ></a></p>
            <p><a href="" id="134" target="_blank" onclick="read_read(this,'tool')" ></a></p>
            </div></div>
        </li>
        <li>
            <span class="bg5">科技</span>
            <div id="one"><div id="one"> 
			 <br />
			 <br />
            <p><a href="" id="125" target="_blank" onclick="read_read(this,'scientist')" ></a></p>
            <p><a href="" id="126" target="_blank" onclick="read_read(this,'scientist')" ></a></p>
            <p><a href="" id="127" target="_blank" onclick="read_read(this,'scientist')" ></a></p>
            <p><a href="" id="128" target="_blank" onclick="read_read(this,'scientist')" ></a></p>
            <p><a href="" id="129" target="_blank" onclick="read_read(this,'scientist')" ></a></p>
            </div></div>
        </li>
       
    </ul>
</div>
  </div><!--left_lei-->
        <div id="left_liu">
         <div id="left_liu_navi">
             <div class="m"> 论坛热帖</div>
             <div class="n"> 
				
			 </div>
              <ul>
    <li><a href="" id="151" target="_blank"></a></li><br />
	<li><a href="" id="153" target="_blank"></a></li><br />
    <li><a href="" id="152" target="_blank"></a></li><br />
     
	
      
      </ul>
             </div>
        </div><!--left_liu-->
  </div><!--left-->
  <div id="right">
      
      <div id="right_xiazai"> <iframe src="http://m.weather.com.cn/m/pn4/weather.htm " width="190" height="50" marginwidth="0" marginheight="0" hspace="0" vspace="0" frameborder="0" scrolling="no" style="margin-left:40px;_margin-left:20px; float:left; display:inline;"></iframe>
       </div> 
       <div id="right_shangchuan">
       <a href="download/shangchuan.jsp?users_name=${sessionScope.users_name}&vip=${sessionScope.vip}" target="_blank"><img src="images/shangchuan.gif"  width="241px" height="66px" style="border:none;"></a>
       </div>
          <div id="right_top">
		  
		  
          <div id="right_top_navi">
		  
		  
             <div class="m">阅读时间top排行榜</div>
             <div class="n"> </div>
			 <br />
			 <br />
			 <ul>
			 <li id="20"></li>
			 <li id="21"></li>
			 <li id="22"></li>
			 <li id="23"></li>
			 <li id="24"></li>
			 <li id="25"></li>
			 </ul>
             </div>
			 
			 
          </div>
          <div id="right_xiaoshuo">
          <div id="right_xiaoshuo_navi">
             <div class="m"> 本月积分TOP排行榜</div>
             <div class="n"></div>
			 <br />
			 <br />
			 <ul>
			 
				<li id="14"></li>
				<li id="15"></li>
				<li id="16"></li>
				<li id="17"></li>
				<li id="18"></li>
				<li id="19"></li>
				
			  </ul>
             </div>
          </div>
          <div id="right_lianjie">
          <div id="right_lianjie_navi">
             <div class="m">友情链接</div>
             <div class="n">
           
             </div>
             <ul>
             <li><a href="http://www.baidu.com/" target="_blank">百度</a></li>
             <li><a href="http://weibo.com/u/3236937180" target="_blank">新浪微博</a></li>
             <li><a href="http://www.google.com.hk/" target="_blank" >谷歌</a></li>
             <li><a href="http://scholar.google.com/" target="_blank">谷歌学术搜索</a></li>
			 
		</a></li>
			 
             </ul>
            
  </div><!--right-->
   
</div>
</div><img src="images/hua.jpg"  width="100%" height="57px" style="border:none;
float:left;margin-top:0px;"></div><!--container-->
</body></html>