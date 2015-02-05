package servlet;

import hibernate_sql.User_ip;

import javax.servlet.*;

import javax.servlet.http.*;

import beasns.Books_content;

import com.jspsmart.upload.Request;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

///import javax.sql.*;

public class LoginForm extends HttpServlet {
	Connection dbcon;
	public LoginForm() {
		super();
	}
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	public void init() throws ServletException {
		// Put your code here
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, java.io.IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("utf-8");
		req.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		String yanzhen=req.getParameter("yanzhen");
		String interest=null;
		String code=(String)req.getSession().getAttribute("code");
		
		String ip=req.getRemoteHost();
		User_ip user_ip=new User_ip();
		user_ip.set_ip(ip);
		
		
		List<String> info=new ArrayList<String>();
		if(yanzhen.equals(code)){
			boolean bool=false;
		//	String vip="0";
			try {
				Class.forName("org.gjt.mm.mysql.Driver");
				out.println("Connection established");
			} catch (Exception e) {
				out.println("Database not found!");
			}
			try {
				dbcon = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/library", "root", "root");
			} catch (SQLException e1) {
				out.println("jdbc errors");
			}
		
			String username = req.getParameter("users_name");
			String pass = req.getParameter("users_password");
			String vip = req.getParameter("vip");
			
			try {
				PreparedStatement stat = dbcon
						.prepareStatement("select * from users where users_name=? and users_password=?");
				stat.setString(1, username);
				stat.setString(2, pass);
				ResultSet result = stat.executeQuery();
				while(result.next()){
					bool=true;
					interest=result.getString("users_in");
					vip=result.getString("users_vip");
				String	grades=result.getString("users_grades");
					break;
				}
			} catch (Exception e) {
				out.println("errors");

			}
			try {
				dbcon.close();
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			if(bool==true){
				
				//info.add(username);
				
				List<String> list =new ArrayList<String>();
				List<String> list_history =new ArrayList<String>();
				List<String> list_today =new ArrayList<String>();
				try {
					//获取的最新上传
					List<String> list1 =new ArrayList<String>();
					Books_content books=new Books_content();
					books.class_forname();
					list1=books.tuijian_shangchuan("it");
					list.addAll(list1);
					list1=books.tuijian_shangchuan("math");
					list.addAll(list1);
					list1=books.tuijian_shangchuan("economy");
					list.addAll(list1);
					list1=books.tuijian_shangchuan("fiction");
					list.addAll(list1);
					list1=books.tuijian_shangchuan("literature");
					list.addAll(list1);
					list1=books.tuijian_shangchuan("scientist");
					list.addAll(list1);
					list1=books.tuijian_shangchuan("tool");
					list.addAll(list1);
					//获取最近纪录
					list_history=books.read_history(username);
					//从推荐书籍中选取一个作为每天一本
					 interest=books.get_interest(username);
					
					list_today=books.tuijian(interest);
					
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				HttpSession users_session=req.getSession(true);
				//admin_session.invalidate();销毁session的条件
				users_session.setAttribute("users_name",username);
				users_session.setAttribute("vip",vip);
				users_session.setAttribute("interest",interest);
				
				
				req.setAttribute("list_today",list_today);
				req.setAttribute("infor_his", list_history);
				req.setAttribute("infor", list);
				req.setAttribute("info", username);
				req.setAttribute("vip", vip);
				req.setAttribute("users_name", username);
				//resp.sendRedirect("/book/personal/users_succeed.jsp?users_name="+username);
				req.getRequestDispatcher("/personal/users_succeed.jsp").forward(req, resp);
			}
			else{
				
				info.add("账号与密码不匹配哦，亲！请重新登陆");
				req.setAttribute("info", info);
				req.getRequestDispatcher("/errors/errors.jsp").forward(req, resp);
			}
		}
		else{
			
			info.add("验证码错误哦，亲！");
			req.setAttribute("info", info);
			req.getRequestDispatcher("/errors/errors.jsp").forward(req, resp);
			
		}
		
		out.flush();
		out.close();
	
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, java.io.IOException {
			resp.setContentType("text/html");
			resp.setCharacterEncoding("utf-8");
			PrintWriter out=resp.getWriter();
			String users_name=req.getParameter("users_name");
			HttpSession session=req.getSession();
			session.removeAttribute(users_name);
			session.invalidate();
			out.println("ok");
			out.flush();
			out.close();
	}
	
}