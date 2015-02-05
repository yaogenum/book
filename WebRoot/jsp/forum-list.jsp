<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*,com.db.*" pageEncoding="gb2312" errorPage=""%>
	<%@ taglib uri="/WEB-INF/lib/c.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>无标题文档</title>
		<link href="../css/forum-list.css" rel="stylesheet" type="text/css">
			<script src="../js/forum-list.js" type="text/javascript">
</script>
	</head>

	<%
		MySQLDB mydb = new MySQLDB();
		mydb.getConnection(); 
	%>

	<body>
		<div id="container">
			<div id="header">
				<div id="header_denglu">
				</div>
				<!--header_denglu-->
				<div id="header_logo">

					

				</div>
				<!--header_logo-->
				<div id="navi">
					<span class="l"><a href="../shouye.jsp">首页</a> > 佳书有约论坛：</span>
				</div>

				<div id="header_navi">
					<!--导航-->
					
				</div>
			</div>
			<!--header头部结束-->


			<div id="left">
				<div id="left_title">
					欢迎登录
				</div>
				<img src="../images/nan.jpg" width="18px" height="16px"
					style="border: none; float: left; margin-top: 20px; margin-left: 50px;">
					<h1 style="float: left; margin-top: 20px; font-size: 14px;">
						用户名：${sessionScope.users_name}
					</h1>
					<img src="../images/touxiang.jpg" width="117px" height="120px"
						style="border: none; float: left; margin-top: 30px; margin-left: 50px;">
						</br>

						<div id="kuang_left_manger"
							style="border: none; float: left; margin-top: 20px; margin-left: 60px;">
							<ul>
								<li>
									<a href="../jsp/fatie.jsp?users_name=${param.users_name}"> 我要发帖</a>
								</li>
							</ul>
						</div>
			</div>
			<!--left结束-->
			<div id="right">
				<div id="right_title">
					全部帖子
				</div>
   
				<div id="right_search">
				 <form action="../jsp/forum-list.jsp?flag=1" method="post">
					<input id="keyword" class="SG_input" type="text" maxlength="50"
	              		name="keyword" value="" max="50"/>
	              		<input class="search"style="width:50px;" type="submit" value="搜索"/>
	              	</form>
						
				</div>
				<%
					
					String users_name = (String) session.getAttribute("users_name");
					
					int FLAG = Integer.parseInt(request.getParameter("flag"));
					System.out.println(FLAG);
					ResultSet rs2 = null;
					int ALLR = 0;//总记录数
					int showpage = 0;	
					if(FLAG == 0){
					rs2 = mydb.executeQuery("SELECT * FROM post ORDER BY time DESC");
					}else if(FLAG == 1){
					String keyword = request.getParameter("keyword");
					System.out.println(keyword);
					String sql = "SELECT * FROM post WHERE title LIKE '%"+keyword+"%'";					
					rs2 = mydb.executeQuery(sql);
					}
					int pid = 0; 
					rs2.last();
					System.out.println(ALLR = rs2.getRow());
				
					if(request.getParameter("showpage")==null || request.getParameter("showpage").equals("1")){
						showpage=1;
						rs2.beforeFirst();
						System.out.println("showpage="+showpage);
					}else{
						showpage = Integer.parseInt(request.getParameter("showpage"));
						rs2.absolute(10*(showpage-1));
					}
					
					while (rs2.getRow()<=10*showpage && rs2.next()) {
						pid = rs2.getInt("pid");
						session.setAttribute("title", rs2.getString("title"));
						session.setAttribute("scan", rs2.getInt("scan"));
						session.setAttribute("time", rs2.getDate("time"));
				%>
				<div id="right_content">
					<span class="title"><a href="../jsp/forum.jsp?pid=<%=pid %>">${title}</a> </span>
					<span class="num">${scan}</span>
					<span class="time">${time}</span>
				</div>
				<%
				}
				%>
							  
				<%
					CreatePage cpage = new CreatePage();
					cpage.setAllR(ALLR);
					cpage.setAllP();
					cpage.setCurrentP(request.getParameter("showpage"));
					cpage.setPageInfo();
					cpage.setPageLink("/book/jsp/forum-list.jsp?flag=0");
				 %>
				<div id="right_page">				 
					<%=cpage.PageInfo %>
					<%=cpage.PageLink %>
				</div>
				<!--right_page结束-->

			</div>
			<!--right结束--><img src="../images/hua.jpg" width="100%" height="57px"
					style="border: none; float: left; margin-top: 20px;">
		</div>
	</body>
	<%mydb.close(); %>
</html>
