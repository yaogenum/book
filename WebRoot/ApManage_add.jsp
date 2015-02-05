<%@ page language="java" contentType="text/html; charset=gb2312"
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

<title>My JSP 'ApManage_add.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
body {
	background-color: #000000;
	font-size: 14px;
}

table {
	color: #FFFFFF;
}

input {
	background: #FFFFFF;
}

.tableborder {
	background: #000000;
	border: 1px solid #FFFFFF;
}

.header {
	font-weight: bold;
	color: #FFFFFF;
}

.td {
	background: #F8F8F8;
}
.word {font-size: 24px}
        </style>
</head>
   
<body>
	 
	<table width="100%" border="0">
	  <form action="servlet/CommitTable" name="form1" method="post">
          
			<table width="100%" cellpadding="3" cellspacing="1"
					class="tableborder">
				<tr>
					<td colspan="2" class="header">
			        <span class="word">评优申请		            </span><br>
		          <br><br><br></td>
				</tr>
				<tr>
					<td class="td" align="right">
						<font color="#120006">标题：</font>
				    <br></td>
					<td class="td">
						<select name="superiorType" id="superiorType">
						  <option>重庆邮电大学三好学生审批表</option>
						  <option>重庆邮电大学优秀学生干部审批表</option>
						  <option>重庆邮电大学优秀毕业生审批表</option>
						  <option>重庆邮电大学精神文明先进个人审批表</option>
						  <option>重庆邮电大学自立自强先进个人审批表</option>
						  <option>重庆邮电大学科技创新先进个人审批表</option>
						  <option>重庆邮电大学青年志愿者先进个人审批表</option>
						  <option>重庆邮电大学体育活动先进个人审批表</option>
						  <option>重庆邮电大学文艺活动先进个人审批表</option>
						  <option>重庆邮电大学学习进步先进个人审批表</option>
					    </select>
				    <br></td>
				</tr>
				<tr>
					<td class="td"  align="right">
						<font color="#120006">综合排序名次/综合排序总人数：</font>			        </td>
				    <td class="td">
				      <p>
					    <input name="rank" type="text"/>
					    <font color="#000000">/</font>
					    <input name="population" type="text">
				      </p>				    </td>
				</tr>
				<tr>
					<td class="td"  align="right">
						<font color="#120006">英语过级：</font>			        </td>
					<td class="td">
                       <!-- <form>-->
                          <input type="radio" name="EnglishLevel"/>
                          <font color="#000000">CET4&nbsp;&nbsp;</font>
                          <input type="radio" name="EnglishLevel"/>
                          <font color="#000000">CET6&nbsp;&nbsp;</font>
                          <input type="radio" name="EnglishLevel"/>
                          <font color="#000000">未通过&nbsp;&nbsp;</font>
                          <input type="radio" name="EnglishLevel"/>
                          <font color="#000000">未参加考试</font>
                      <!--  </form>-->
						 </td>
				</tr>
                <tr>
					<td class="td"  align="right">
						<font color="#120006">计算机过级：</font>				    </td>
					<td class="td">
  <!-- <form>-->
                          <input type="radio" name="ComputerLevel"/>
                          <font color="#000000">CCT2&nbsp;&nbsp;</font>
                          <input type="radio" name="ComputerLevel"/>
                          <font color="#000000">未通过&nbsp;&nbsp;</font>
                          <input type="radio" name="ComputerLevel"/>
                          <font color="#000000">未参加考试&nbsp;&nbsp;</font>
                          <input type="radio" name="ComputerLevel"/>
                          <font color="#000000">/（专业不要求）</font>
                         <!-- <form>-->			</td>
				 </tr>
                     
                 <tr>
					<td class="td"  align="right">
						<font color="#120006">担任社会工作：</font>				    </td>
					<td class="td">
					     <!-- <form>-->
					     <input type="checkbox" name="cadre">
					     <font color="#000000">无&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">校团总支/学生会干部&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">院团总支/学生会干部&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">学工助理&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">团委直属学生组织干部&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">红岩网校工作站干部&nbsp;</font>
					     <br><input type="checkbox" name="cadre">
					     <font color="#000000">年级长&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">辅导员助理&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">班长&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">学习委员&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">生活委员&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">文娱委员&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">体育委员&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">心理委员&nbsp;</font></br>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">科创委员&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">团支部书记&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">组织委员&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">宣传委员&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">校宿管会干部&nbsp;</font>
					     <input type="checkbox" name="cadre">
					     <font color="#000000">校勤工助学中心干部</font>
				        <!-- <form>-->			</td>
                 <tr>
					<td class="td"  align="right">
						<font color="#120006">主要事迹简介及获奖情况：</font>
				    <br><br><br><br></td>
                    <td class="td">
                      <font color="#000000">主要事迹： </font>
                      <p>
                        <textarea font="12px 宋体" cols=100 rows=8 name="ApContent" style="background-color:D7F8AB" ></textarea>
                      </p>
                       <font color="#000000">获奖情况： </font>
                      <p>
                        <textarea font="12px 宋体" cols=100 rows=8 name="textarea" style="background-color:D7F8AB" ></textarea>
                        <br>
                        <br>
                        <br>
                        <br>
                            </p></td>
      </tr>
				<tr align="center">
					<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<input name="submit" type="submit" value="预览申请">				    </td>
				</tr>
			</table>
			</form>
		</table>
</body>
</html>

