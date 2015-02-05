<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>资料分类</title>
<link href="../css/ziliaofenlei.css" rel="stylesheet" type="text/css">
</head>

<body>
<div id="container">
 <div id="header">
          <div id="header_denglu">
          </div><!--header_denglu--> 
          <div id="header_logo">
          
                <div id="header_logo_sou"><!--搜索-->
           
                    <div id="header_logo_sou_w"> 
          <form>
			<input id="search" style="width:230px;height:26px;" 
            type="text" size="11px">
         </form> 
                      </div>
                       <div id="header_logo_sou_m">
						 <form >
				<select name="interest" style="float:left;margin-top:1px;
				width:47px;height:26px;background:#F2F2F2" >
						
 	<option value="it">It</option>
	<option value="math" >Math</option>
	<option value="literature">literature</option>
	<option value="economy">Economy</option>
	<option value="fiction">fiction</option>
	<option value="scientist">scientist</option>
	<option value="tool">tool</option>
 	</select>
</form>
						</div>
      
                  <div id="header_logo_sou_s"><a href="#"></a></div>
      
                   </div><!--搜索-->
     
          </div><!--header_logo-->
      <div id="header_navi"><!--导航-->
      <ul>
      <li><a href="">首页</a></li>
      <li><a href="">资料分类</a></li>
      <li><a href="">分享资料</a></li> 
      <li><a href="">随便看看</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
     
      </ul>
      
      </div>
    </div><!--header头部结束-->
    
     <div id="navi">
     <span class="l"><a href="shouye.jsp">首页</a> > 资料分类：</span>
   
     </div>
       
       
       <div id="kuang">
        <div id="kuang_left">
<div id="kuang_left_math">
   <img src="../images/92.jpg" style="border:none;">
    <ul>
      <li><a href="">fsdf</a></li>
      <li><a href="">ddf</a></li>
      <li><a href="">vfvs</a></li> 
      <li><a href="">随便看看</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
     
      </ul>
</div>

<div id="kuang_left_literature"><img src="../images/93.jpg" style="border:none;"><ul>
      <li><a href="">fsdf</a></li>
      <li><a href="">ddf</a></li>
      <li><a href="">vfvs</a></li> 
      <li><a href="">随便看看</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
     
      </ul>  </div>
<div id="kuang_left_economy"> <img src="../images/94.jpg" style="border:none;"><ul>
      <li><a href="">fsdf</a></li>
      <li><a href="">ddf</a></li>
      <li><a href="">vfvs</a></li> 
      <li><a href="">随便看看</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
     
      </ul> </div>
<div id="kuang_left_fiction">  <img src="../images/95.jpg" style="border:none;"><ul>
      <li><a href="">fsdf</a></li>
      <li><a href="">ddf</a></li>
      <li><a href="">vfvs</a></li> 
      <li><a href="">随便看看</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
     
      </ul> </div>
<div id="kuang_left_scientist">  <img src="../images/96.jpg" style="border:none;"><ul>
      <li><a href="">fsdf</a></li>
      <li><a href="">ddf</a></li>
      <li><a href="">vfvs</a></li> 
      <li><a href="">随便看看</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
     
      </ul> </div>
<div id="kuang_left_tool">  <img src="../images/97.jpg" style="border:none;"><ul>
      <li><a href="">fsdf</a></li>
      <li><a href="">ddf</a></li>
      <li><a href="">vfvs</a></li> 
      <li><a href="">随便看看</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
      <li><a href="">留言板</a></li>
      <li><a href="">个人中心</a></li>
     
      </ul> </div>
</div><!--left结束-->
    <div id="kuang_right">
     <a href=""> <img src="../images/shangchuan.gif;" style="border:none;float:left;margin-top:0px;margin-left:12px;"></a>
      <a href=""> <img src="../images/shangchuan.gif;" style="border:none;float:left;margin-top:15px;margin-left:12px;"></a>
     <div id="right_top">
          <div id="right_top_navi">
             <div class="m"> 文档TOP排行榜</div>
             <div class="n"> <a href="">More...</a></div>
             </div>
          </div><!--righttop结束-->
          <div id="right_top">
          <div id="right_top_navi">
             <div class="m"> 本月积分TOP排行榜</div>
             <div class="n"> <a href="">More...</a></div>
             </div>
          </div><!--righttop结束-->
    </div>
       </div><!--kuang结束-->
       
      
      
      <img src="../images/hua.jpg"  width="100%" height="57px" style="border:none;
float:left;margin-top:10px;">
</div>
</body>
</html>