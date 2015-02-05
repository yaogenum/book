package servlet;

import beasns.Mysql_connect;
import hibernate_sql.Admin_ip;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Admin_indicate extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Admin_indicate() {
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
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String yanzhen=request.getParameter("yanzhen");
		String code =(String)request.getSession().getAttribute("code");
		String ip=request.getRemoteHost();
		Admin_ip admin_ip=new Admin_ip();
		admin_ip.set_ip(ip);
		List<String> info=new ArrayList<String>();
		
		if(yanzhen.equals(code)){
			boolean bool=false;
			String name=request.getParameter("admin_name");
			String password=request.getParameter("admin_password");
			try {
				Mysql_connect indicate=new Mysql_connect();
				indicate.class_forname();
				bool=indicate.p_state_prepared(name,password);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				info.add("数据库错误");
			}
			
			
			if(bool==true){
				HttpSession admin_session=request.getSession(true);
				//admin_session.invalidate();销毁session的条件
				admin_session.setAttribute("admin_name",name);
				response.sendRedirect("/book/admin/admin_main.jsp?admin_name="+name);
			}
			else{
				
				info.add("账号与密码不匹配哦，亲！请重新登陆");
				request.setAttribute("info", info);
				request.getRequestDispatcher("/admin_login.jsp").forward(request, response);
			}
			
			
		}
		else{
			info.add("验证码错误哦，亲！");
			request.setAttribute("info", info);
			request.getRequestDispatcher("/admin_login.jsp").forward(request, response);
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
