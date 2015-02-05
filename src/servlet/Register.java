package servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beasns.Mysql_connect;



public class Register extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Register() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
	
		
		List<String> info=new ArrayList<String>();
		
		String yanzhen=request.getParameter("yanzhen");
		String code=(String)request.getSession().getAttribute("code");
		
		if(code.equals(yanzhen)){
			boolean bool=false;
			String users_name=URLDecoder.decode(request.getParameter("users_name"), "gb2312");
			Mysql_connect register=new Mysql_connect();
			try {
				register.class_forname();
				bool=register.p_state_prepared(users_name);
				register.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				out.println("ERROR_MYSQL"+users_name);
				info.add("THE MYSQL RUN ERRORS");
			}
			
			if(bool){
				info.add("users has been register");
				request.setAttribute("info", info);
				request.getRequestDispatcher("/register.jsp").forward(request, response);
			}
			else{
				String users_password=URLDecoder.decode(request.getParameter("users_password"), "gb2312");
				String users_email= URLDecoder.decode(request.getParameter("email"), "gb2312");
				String users_sex=URLDecoder.decode(request.getParameter("sex"), "gb2312");
				String users_in= URLDecoder.decode(request.getParameter("interest"),"gb2312");
				
				boolean bool_re=false;
				
				try {
					Mysql_connect insert =new Mysql_connect();
					insert.class_forname();
					insert.p_state_insert(users_name,users_password,users_email,users_sex,users_in);
					request.setAttribute("users_name", users_name);
					request.setAttribute("vip", "no");
					
					
					HttpSession users_session=request.getSession(true);
					//admin_session.invalidate();销毁session的条件
					users_session.setAttribute("users_name",users_name);
					request.getRequestDispatcher("/personal/users_succeed.jsp").forward(request, response);
					//response.sendRedirect("personal/users_succeed.jsp?users_name="+users_name);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					info.add("THE MYSQL RUN ERRORS");
				}
			}
			
			
			//String users_password=request.getParameter("users_password");
		}
		else{
			info.add("验证码错误");
			request.setAttribute("info", info);
			request.getRequestDispatcher("/errors/errors.jsp").forward(request, response);
		}
		
		
		out.flush();
		out.close();
	}


	public void init() throws ServletException {
		// Put your code here
	}

}
/*
 * else{
					out.println("内部错，注册失败");
					//info.add("内部错，注册失败");
					//request.setAttribute("info", info);
					//request.getRequestDispatcher("/register.jsp").forward(request, response);
				}
 */
