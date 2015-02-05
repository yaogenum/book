package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.*;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DataTransmission extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("gb2312");
		String comment = request.getParameter("comment");
		comment=URLDecoder.decode(comment,"gb2312");
		System.out.println(comment);

		try {
			MySQLDB mysqlDB = new MySQLDB();
			mysqlDB.getConnection();
			int pid = Integer.parseInt(request.getParameter("pid"));
			System.out.println(pid);
			
			SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

			String sql = "INSERT INTO comment(pid,users_name,comment,time) VALUES" +
					"('"+pid+"','','"+comment+"','"+time.format(new Date())+"')";
			mysqlDB.executeUpdate(sql);
			
			response.sendRedirect("/book/jsp/forum.jsp?pid="+pid);

		} catch (Exception e) {
			response.sendRedirect("/jsp/error.jsp");
			e.printStackTrace();
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}

