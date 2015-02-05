package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.*;

public class AddPost extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("gb2312");
		HttpSession session=request.getSession();
		String post = request.getParameter("post");
		String title = request.getParameter("title");
		String users_name=(String)session.getAttribute("users_name");
		
		post = URLDecoder.decode(post,"gb2312");
		title = URLDecoder.decode(title,"gb2312");
		
		
		System.out.println(post);
		try {
			MySQLDB db = new MySQLDB();
			SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String sql = "INSERT INTO post (title,scan,time,users_name,content) VALUES " +
					"('"+title+"','0','"+time.format(new Date())+"','"+users_name+"','"+post+"')";
			db.getConnection();
			db.executeUpdate(sql);
			response.sendRedirect("/book/jsp/forum-list.jsp?flag=0&users_name="+users_name);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
