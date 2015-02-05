package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beasns.Mysql_connect;

public class Update_users extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Update_users() {
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
		response.setCharacterEncoding("gb2312");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
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
//也要修改论坛中姓名
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String yanzhen=request.getParameter("yanzhen");
		String code=(String)request.getSession().getAttribute("code");
		String users_name=request.getParameter("users_name");
		HttpSession session=request.getSession();
		users_name=(String) session.getAttribute("users_name");
		
		String vip=request.getParameter("vip");
		if(code.equals(yanzhen)){
			
			
			String users_password=request.getParameter("user_password");
			String users_email= request.getParameter("email");
			String users_sex=request.getParameter("sex");
			String users_in= request.getParameter("interest");
			String users_names= request.getParameter("name_before");
			Mysql_connect update=new Mysql_connect();
			update.class_forname();
			try {
				update.p_state_update(users_name, users_password, users_email, users_sex, users_in, users_names);
				session.invalidate();
				
				response.sendRedirect("/book/errors/xiugai.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				//out.println(e.toString());
				request.setAttribute("vip",vip);
				request.setAttribute("users_name",users_name);
				request.getRequestDispatcher("/errors/errors1.jsp").forward(request, response);
			}
			
		}
		else{
			request.setAttribute("vip",vip);
			request.setAttribute("users_name",users_name);
			request.getRequestDispatcher("/errors/errors1.jsp").forward(request, response);
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
