package servlet;

import hibernate.Users;


import hibernate.UsersDAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import mail.SendSimpleMail;

import beasns.Mysql_connect;

public class Send_mail extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Send_mail() {
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
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		String users_name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
		String bool="不存在此用户名";
		
		try{
		UsersDAO dao=new UsersDAO();
		Session s=dao.getSession();
		Transaction trans=s.beginTransaction();
		SQLQuery q=dao.getSession().createSQLQuery("select * from users where users_name=? ").addEntity("Users",Users.class);
		q.setString(0,users_name);
		List list=q.list();
		Iterator iter=list.iterator();
		while(iter.hasNext()){
			Users users=(Users) iter.next();
			bool="可以发送";
			break;
		}
		trans.commit();
		s.close();
		}
		catch(Exception e){
			bool="网络异常";
		}
		
		out.println(bool);
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
		String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
		name=request.getParameter("name");
		//String name=request.getParameter("name");
		String mail=null;
		String password=null;
		List<String> info=new ArrayList<String>();
		boolean bool=false;
		
		try {
			Mysql_connect get=new Mysql_connect();
			get.class_forname();
			info=get.get_passwords(name);
			Iterator<String> iter=info.iterator();
			while(iter.hasNext()){
				password=iter.next();
				mail=iter.next();
				bool=true;
			}
			
			info.add("加载数据库成功！");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			info.add("加载数据库失败！");
			bool=false;
		}
		
		if(bool==true){
			
			try {
				SendSimpleMail send=new SendSimpleMail();
				send.sendmail(name, mail, password);
				info.add("已发送邮件，请注意查收！");
				response.sendRedirect("/book/errors/send_ok.jsp");
				
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				info.add("地址信息有误！请重新找回");
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				info.add(e.toString());
			}
			
		}
		else{
			info.add("用户不存在"+name);
			request.setAttribute("info",info);
			request.getRequestDispatcher("/errors/errors.jsp").forward(request, response);
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
