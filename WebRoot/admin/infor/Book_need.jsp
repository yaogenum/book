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
    
    <title>My JSP 'Book_need.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <style type="text/css">
.font12px{font-family:Verdana, Geneva, sans-serif; font-size:12px;}
#data{border-collapse:collapse; border:1px solid #EEE; margin:0 auto;}
#data th{background:#EEE; border-bottom:1px solid #CCC; padding:4px; text-align:left;}
#data td{border:1px solid #EEE; padding:4px;}
.ou{background-color:#FFF;}
.ji{background-color:#CCC;}
</style>
  </head>
  
  <body  background="background/right.jpg" onload="linecolor();">
 
   <c:set var="i" value="0">
		</c:set>
		<c:set var="col" value="0">
		</c:set>
		网站急缺资源：
		<table border="1" font:"12px" id="data">
		 <th>序号：</th> 
     
    <th>书名：</th> 
    
    <th>搜索次数：</th>
     <th>搜索最后时间：</th>
   <th>类别：</th>
			<c:forEach var="info" items="${list}" step="4">
				<c:set var="col" value="${col+1}" />
				<tr>
					<td>
						${col+0}
					</td>
					<td>
					${list[i+0]}
					</td>
					<td>
						${list[i+1]}
					</td>
					<td>
						${list[i+2]}
					</td>
					<td>
						${list[i+3]}
					</td>
					
				</tr>
				<c:set var="i" value="${i+4}" />
			</c:forEach>
		</table>
		
		
	<p>----------------------------------------------</p>	
		<c:set var="i" value="0">
		</c:set>
		<c:set var="col" value="0">
		</c:set>
		网站种类需求资源：
		<table border="1" font:"12px" id="data">
		 <th>序号：</th> 
     
    <th>书名：</th> 
    
    <th>搜索次数：</th>
     <th>搜索最后时间：</th>
   <th>类别：</th>
			<c:forEach var="info" items="${lists}" step="4">
				<c:set var="col" value="${col+1}" />
				<tr>
					<td>
						${col+0}
					</td>
					<td>
					${lists[i+0]}
					</td>
					<td>
						${lists[i+1]}
					</td>
					<td>
						${lists[i+2]}
					</td>
					<td>
						${lists[i+3]}
					</td>
					
				</tr>
				<c:set var="i" value="${i+4}" />
			</c:forEach>
		
		
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
