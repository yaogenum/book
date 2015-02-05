<%@ page language="java"
	import="java.util.*,com.jspsmart.upload.SmartUpload,com.jspsmart.upload.SmartUploadException"
	pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'test.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
function validate(f){
	var file = f.file.value;
	    if(file=="")
	    {
	 	    alert("请选着文件");	 	 
	 	    return false;
	    }
	var b=/\w+\.([jpg|png|gif|bmp|jpeg]){1}$/;
		var pat=new RegExp(b);
	    
	    //alert(miao);
	    if(pat.test(file)==false)
	    {
	    	alert(miao);
	    	return false;
	    }
	    return true;
	    }
</script>
	</head>

	<body>
  <form action="frame.jsp" onsubmit="return validate(this)"  method="post" enctype="multipart/form-data" >
上传：<input type="file" name="file"><br> （支持txt文件）<br>
<input type="reset" values="重置">
<input type="submit" values="提交">
  </form> 
	</body>
</html>
