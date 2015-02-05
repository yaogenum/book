<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>上传页面</title>
		<link href="css/shangchuan.css" rel="stylesheet" type="text/css">
		<link href="css/top.css" rel="stylesheet" type="text/css">
			<script type="text/javascript">
function validate(f) {
	if (f.books_name.value.length<2||f.books_name.value.length>10) {
		alert("书名必须是2-10位");
		f.books_name.focus()
		return false;
	}
	if (f.books_tag.value.length<2||f.books_tag.value.length>10) {
		alert("书签必须是2-10位");
		f.books_tag.focus()
		return false;
	}
	
	if (f.books_author.value.length<2||f.books_author.value.length>10) {
		alert("请尊重作者，正确填写，保护版权");
		f.books_author.focus()
		return false;
	}
	
	var file = f.file.value;
	if (file == "") {
		alert("请选择文件");
		f.file.focus();
		return false;
	}
	var regex = /\.txt$/gi;
	var regex1 = /\.doc$/gi;
	var regex2 = /\.html$/gi;
	var regex3 = /\.java$/gi;
	var regex4 = /\.pdf$/gi;
	


	if ((regex.test(f.file.value) == false)
			&& (regex1.test(f.file.value) == false)
			&& (regex2.test(f.file.value) == false)
			&& (regex3.test(f.file.value) == false)&& (regex4.test(f.file.value) == false)) {
			
		alert("文件格式不对");
		f.file.focus();
		return false;
	}

	var regex5 = /\.jpg$/gi;
	if(regex5.test(f.books_pic.value)==""){
	//document.getElementById("pic").value="moren";
	return true;
	}
	else{
		if ((regex5.test(f.books_pic.value)) == false) {
			
			f.books_pic.focus();
		return true;
		}
		else {
		alert("图片格式需要为jpg");
			return false;
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
				<span class="l"> <a href="shouye.jsp">首页</a> >个人中心> 我要上传： </span>

			</div>
	       <div id="kuang">
		<form action="servlet/Upload" onsubmit="return validate(this)"
			method="post" enctype="multipart/form-data">
			<p>书本名：
			<input type="text" name="books_name" /></p>
			<br>
		
			
		<p>	类型: &nbsp;&nbsp;&nbsp;<select name="interest">
 	<option value="it">It</option>
	<option value="math" >Math</option>
	<option value="literature">literature</option>
	<option value="economy">Economy</option>
	<option value="fiction">fiction</option>
	<option value="scientist">scientist</option>
	<option value="tool" selected="selected">tool</option>
 	</select>
			</p>
			
			<br>
		<p>作者：&nbsp;&nbsp;
			<input type="text" name="books_author" /></p>
			<br>
			为尊重版权 请详细注明
			<br>
			<br>
			<p>评价:  &nbsp;&nbsp;
			<input type="text" name="books_tag" /></p>
			<br>
		<p>	文件类型:<select name="files_form">
				<option value="txt">
					txt
				</option>
				<option value="doc">
					doc
				</option>
				<option value="html">
					html
				</option>
				<option value="java">
					java
				</option>
				<option value="pdf">
					pdf
				</option>
			
			</select></p>
			<br><p>
			设置分数:<input type="text" name="limit"></p>
			<br><p>
			上传者：
			<input type="text" name="books_uploader" value="${sessionScope.users_name}" /></p>
			<br /><p>
			封面名称:<input type="text" name="pic_name" value="moren" /></p>
			<br><p>
			封面文件:<input type="file" name="books_pic"  id="pic"></p>
			<br>
			<p>
			图书文件:<input type="file" name="file"></p>
			<br>
			
			<input type="reset" value="重置"  style="color:#FFF;background:#4F8900;width:70px;height:25px;float:left;margin-left:20px;margin-top:10px;" size="14px"  />
			<input type="submit" value="提交"  style="color:#FFF;background:#4F8900;width:70px;height:25px;float:left;margin-left:40px;margin-top:10px;"  size="14px" />
		</form>
</p>
      
           <hr> <img src="images/book.gif"  width="78px" height="67px" style="border:none;
float:left;margin-left:330px;margin-top:2px;">

       </div><img src="images/1.jpg" width="162" height="108px"
				style="border: none; float: left; margin-top: 120px; margin-left: 2px;">
				</p>

				<hr>
				
			</div>
			
				<img src="images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 0px;">
		</div>
	</body>
</html>