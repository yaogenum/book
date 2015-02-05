<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*,com.db.*" pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>无标题文档</title>
		<link href="../css/forum.css" rel="stylesheet" type="text/css">
			<script src="../js/forum.js" type="text/javascript">
			
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
         <style> 
#kuang_right_sou {
    background: none repeat scroll 0 0 #99CC33;
    float: left;
    height: 43px;
    margin-left: 650px;
    margin-top: 5px;
    width: 352px;
}
#header_logo a {
   font-size:10px;
    font-weight:bold;
	color:green;
 text-decoration:underline;
}
#kuang_right_sou_w {
    float: left; 
    margin-left: 15px;
    margin-top: 5px;
}
#kuang_right_sou_s {
    float: left;
    margin-left: 15px;
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
	margin-top:7px;
    font-size: 14px;
    font-weight: bold;
    height: 30px;
    line-height: 30px;
    width: 65px;
}</style>

					
     
          </div><!--header_logo-->
				<div id="navi">
					<span class="l"><a
						href="forum-list.jsp?flag=0">论坛首页</a> > 佳书有约论坛：</span>
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

			<%
				int pid = Integer.parseInt(request.getParameter("pid"));
				int scan = 0;
				ResultSet rs1 = null;
				rs1 = mydb.executeQuery("SELECT * FROM post WHERE pid=" + pid);
				System.out.println("pid=" + pid);
				
				while (rs1.next()) {
					pageContext.setAttribute("content", rs1.getString("content"));
					scan = rs1.getInt("scan")+1;
					mydb.executeUpdate("UPDATE post SET scan ="+scan+" WHERE pid="+pid);
					//session.setAttribute("content", rs1.getString("content"));
				}
			%>
			<div id="right">
				<div id="right_title">
					正文
				</div>
				<div id="right_content">
					${content}
				</div>


				<div id="right_share">
					<strong>分享到:</strong>
					<a id="k_qqshare" title="QQ空间" onclick="postToQzone();"
						href="javascript:void(0);"> <i> <img alt="QQ空间"
								src="../images/qq.jpg">
								QQ空间 
					</i> </a>
					<a id="k_weiboshare" title="腾讯微博" onclick="postToWb();"
						href="javascript:void(0)"> <i> <img alt="腾讯微博"
								src="../images/tengxun.jpg">
								腾讯微博 
					</i> </a>
				</div>
				<div id="right_pinglun">
					评论
				</div>
				<%
					ResultSet rs2 = null;
					int ALLR = 0;//总记录数
					int showpage = 0;
					rs2 = mydb.executeQuery("SELECT * FROM comment WHERE pid=" + pid);
					rs2.last();
					System.out.println(ALLR = rs2.getRow());

					if (request.getParameter("showpage") == null
							|| request.getParameter("showpage").equals("1")) {
						showpage = 1;
						rs2.beforeFirst();
						System.out.println("showpage=" + showpage);
					} else {
						showpage = Integer.parseInt(request.getParameter("showpage"));
						rs2.absolute(3 * (showpage - 1));
					}
					while (rs2.getRow() < 3 * showpage && rs2.next()) {
						session.setAttribute("comment", rs2.getString("comment"));
						
						session.setAttribute("date", rs2.getDate("time"));
						session.setAttribute("time", rs2.getTime("time"));
				%>
				<div id="right_pinglun_1">
					<p>
						<span id="" class="name">${sessionScope.users_name}</span>
						<span class="time" userid="0"> <em>${date}&nbsp;${time}</em>
						</span>
					</p>
					<br />
					<p>
						${comment}
					</p>
				</div>
				<!--right_pinglun_1结束-->
				<%
					}
				%>

				<div id="right_page">
					<%
						CreatePage cpage = new CreatePage(3);
						cpage.setAllR(ALLR);
						cpage.setAllP();
						cpage.setCurrentP(request.getParameter("showpage"));
						cpage.setPageInfo();
						cpage.setPageLink("/book/jsp/forum.jsp?pid=" + pid);
					%>

					<%=cpage.PageInfo%>
					<%=cpage.PageLink%>

				</div>
				<!--right_page结束-->
				<div id="right_pingjia">

				</div>
				<form action="../DataTransmission?pid=<%=pid%>"
					method="post">
					<textarea name="comment" cols="70" rows="5"
						style="float: left; margin-top: 15px; margin-left: 77px; border: 3px solid #669900" onfocus="clear()" id="text">
这里是发表的内容。。。
</textarea>
					<input type="submit" value="发评论" class="replay"
						title="Ctrl+Enter快捷发表">
				</form>
			</div>
			<!--right结束-->
		</div>
	</body>
	<%
		mydb.close();
	%>
</html>