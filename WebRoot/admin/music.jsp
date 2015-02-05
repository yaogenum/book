<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
        <style type="text/css">
.font12px{font-family:Verdana, Geneva, sans-serif; font-size:12px;}
#data{border-collapse:collapse; border:1px solid #EEE; margin:0 auto;}
#data th{background:#EEE; border-bottom:1px solid #CCC; padding:4px; text-align:left;}
#data td{border:1px solid #EEE; padding:4px;}
.ou{background-color:#FFF;}
.ji{background-color:#CCC;}
</style>
    <title>My JSP 'music.jsp' starting page</title>
    <meta property="qc:admins" content="0017464106256016756016513066547277373075156230" />
	<meta http-equiv="pragma" co ntent="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/admin_arrange.js" charset="gb2312"> </script>

  </head>
   
  <body background="background/right.jpg" onload="linecolor();">
        音乐信息表：
        查询最爱听歌的人群排名榜:<input type="button" name="cha1" onclick="select_peopel()" value="确定" style="border：none;background:#690;color:white;"/><br />
        
        <br />
  查询当前热歌：<input type="button" name="cha2" onclick="select_music()" value="确定" style="border：none;background:#690;color:white;" /><br />
   显示查询信息：<span id="content"></span><br />
   详细信息：
		<c:set var="i" value="0">
		</c:set>
		<c:set var="col" value="0">
		</c:set>
		
		<table border="1" font:"12px" id="data">
		
		 <th>序号：</th> 
    <th>音乐名：</th> 
    <th>用户名：</th> 
    <th>歌手名：</th> 
    <th>听歌时间：</th>
    
       <th>操作：</th>
			<c:forEach var="info" items="${list}" step="4">
				<c:set var="col" value="${col+1}" />
				<tr>
					<td>
						序号：${col}
					</td>
					<td>
						音乐名：${list[i]}
					</td>
					<td>
						用户名：${list[i+1]}
					</td>
					<td>
						歌手名：${list[i+2]}
					</td>
					<td>
						听歌时间：${list[i+3]}
					</td>
					<td>
						<input type="button" value="删除"
							onclick="delete_music('${list[i]}','${list[i+1]}')"  style="border：none;background:#690;color:white;"/>
					</td>
				</tr>
				<c:set var="i" value="${i+4}" />
			</c:forEach>
		</table>
				<script type="text/javascript">
function linecolor(){
   var obj=document.getElementById("data");
   for(var i=0;i<obj.rows.length;i++){
    i % 2 == 0 ? obj.rows[i].className = "ou": obj.rows[i].className = "ji";
   }
}
</script>
  </body>
</html>
