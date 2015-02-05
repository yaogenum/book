package mail;

import mail.SendAssessoriesMail;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beasns.Mysql_connect;


public class Lost_password extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Lost_password() {
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

		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String name=request.getParameter("name");
		String mail=request.getParameter("mail");
		String password=null;
		List<String> info=new ArrayList<String>();
		boolean bool=false;
		
		try {
			Mysql_connect get=new Mysql_connect();
			get.class_forname();
			password=get.get_password(name);
			bool=true;
			info.add("加载数据库成功！");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			info.add("加载数据库失败！");
			bool=false;
		}
		
		if(bool==true){
			SendSimpleMail send=new SendSimpleMail();
			try {
				send.sendmail(name, mail, password);
				info.add("已发送邮件，请注意查收！");
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				info.add("地址信息有误！");
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				info.add("发送信息失败！");
			}
		}
		else{
			info.add("邮箱调用错误，请重新输入");
		}
		
		request.setAttribute("info",info);
		request.getRequestDispatcher("/lost_password.jsp").forward(request, response);
		
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
/*
	
				String name=request.getParameter("name");
		String mail=request.getParameter("mail");
		String password=null;
		List<String> info=new ArrayList<String>();
		boolean bool=false;
		
		try {
			Mysql_connect get=new Mysql_connect();
			get.class_forname();
			password=get.get_password(name);
			bool=true;
			info.add("加载数据库成功！");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			info.add("加载数据库失败！");
			bool=false;
		}
		if(bool==true){
			SendSimpleMail send=new SendSimpleMail();
			try {
				send.sendmail(name, mail, password);
				info.add("已发送邮件，请注意查收！");
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				info.add("地址信息有误！");
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				info.add("发送信息失败！");
			}
		}
		else{
			info.add("邮箱调用错误，请重新输入");
		}
*/