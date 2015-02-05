package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beasns.Mysql_connect;

public class Firstname_indicate extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Firstname_indicate() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String users_name=new String(request.getParameter("users_name").getBytes("ISO-8859-1"),"utf-8");

		Mysql_connect register=new Mysql_connect();
		register.class_forname();
		boolean bool=false;
		try {
			bool=register.p_state_prepared(users_name);
			if(bool){
				out.println("用户名正确");
			}
			else{
				
				out.println("用户名不存在");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println("errors");
		}
		
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String users_name=new String(request.getParameter("users_name").getBytes("ISO-8859-1"),"utf-8");

		Mysql_connect register=new Mysql_connect();
		register.class_forname();
		boolean bool=false;
		try {
			bool=register.p_state_prepared(users_name);
			if(bool){
				out.println("已被注册，请另选名字,否则注册失败");
			}
			else{
				
				out.println("可以尝试注册"+users_name);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println("errors");
		}
		
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
