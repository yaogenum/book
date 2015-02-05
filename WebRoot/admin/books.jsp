<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<title>My JSP 'books.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/admin_arrange.js"  </script>
<script type="text/javascript" src="js/jquery.js"></script> 

</script>
	</head>

	<body background="background/right.jpg" onload="linecolor()">

 
		<c:set var="i" value="0">
		</c:set>
		<c:set var="col" value="0">
		</c:set>
		所有图书表：
		<table border="1" font:"12px" id="data">
		 <th>序号：</th> 
    <th>类别：</th> 
    <th>书名：</th> 
    <th>作者：</th> 
    <th>阅读次数：</th>
     <th>上传时间：</th>
     <th>下载次数：</th>
      <th> 所需分数：</th>
       <th>操作：</th>
			<c:forEach var="info" items="${list}" step="8">
				<c:set var="col" value="${col+1}" />
				
				<tr>
					<td>
						${col}
					</td>
					<td>
					${list[i]}
					</td>
					<td>
						${list[i+1]}
					</td>
					
					<td>
						${list[i+3]}
					</td>
					<td>
						${list[i+4]}
					</td>
					<td>
						${list[i+5]}
					</td>
					<td>
						${list[i+6]}
					</td>
					<td>
						${list[i+7]}
					</td>
					<td>
						<input type="button" value="删除"
							onclick="delete_books('${list[i+1]}','${list[i+2]}','${list[i]}')" style="border：none;background:#690;color:white;" />
					</td>
				</tr>
				<c:set var="i" value="${i+8}" />
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
