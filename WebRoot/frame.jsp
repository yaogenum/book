<%@ page language="java" import="java.util.*" contentType="text/html,charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>

  <head>
    <base href="<%=basePath%>"> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">  
  </head>
   
    <frameset rows="15%,65%,10%" src="index.jpg">
    	<frame src="header.jsp">
    	<frameset cols="50%,50%">
    		<frameset rows="50%,50%">
    			<frame src="login.jsp">
    			<frame src="learn_internet.jsp">
    		</frameset>
    		<frameset rows="50%,50%">
    			<frame src="resource.jsp">
    			<frame src="talk.jsp">
    		</frameset>
    		
    		
    	</frameset>
    	<frame src="admin.jsp">
    </frameset>
  <body>
  </body>
</html>
