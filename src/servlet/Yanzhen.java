package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beasns.Cal_miao;

public class Yanzhen extends HttpServlet{

	/**
	 * Constructor of the object.
	 */
	public Yanzhen() {
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
		
		HttpSession session=request.getSession();
		String users_name=(String) session.getAttribute("users_name");
		//String users_password=request.getParameter("users_password");
		String xuhao=request.getParameter("xuhao");
	
	
		int xu=Integer.parseInt(xuhao);
		String vip=request.getParameter("vip");
	
		if(users_name.equals("")||users_name==null||users_name.equals("undefined")){
			response.sendRedirect("/book/login.jsp");
		}
		else{
			request.setAttribute("users_name",users_name);
			request.setAttribute("vip", vip);
			switch(xu){
			case 1:request.getRequestDispatcher("/book/fenlei.jsp").forward(request, response);break;
			case 2:request.getRequestDispatcher("/download/shangchuan.jsp").forward(request, response);break;
			case 3:request.getRequestDispatcher("/servlet/Tuijian").forward(request, response);break;
			case 4:request.getRequestDispatcher("/personal/users_succeed.jsp").forward(request, response);break;
			case 5:request.getRequestDispatcher("/jsp/forum-list.jsp?flag="+"0").forward(request, response);break;
			default:response.sendRedirect("book/errors/errors2.jsp");
			}
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
