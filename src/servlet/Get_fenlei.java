package servlet;

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

import beasns.Books_content;

public class Get_fenlei extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Get_fenlei() {
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
		
		
		
		HttpSession session=request.getSession();
		
		
		String users_name=(String) session.getAttribute("users_name");
		String vip=(String) session.getAttribute("vip");
		
		String canshu=request.getParameter("un");
		String flag=request.getParameter("flag");
		String interest="it";
		List<String> list =new ArrayList<String>();
		
		Books_content books=new Books_content();
		books.class_forname();
		
		
			try {
				List<String> list1 =new ArrayList<String>();
				
				list1=books.tuijian("it");
				list.addAll(list1);
				list1=books.tuijian("math");
				list.addAll(list1);
				list1=books.tuijian("economy");
				list.addAll(list1);
				list1=books.tuijian("fiction");
				list.addAll(list1);
				list1=books.tuijian("literature");
				list.addAll(list1);
				list1=books.tuijian("scientist");
				list.addAll(list1);
				list1=books.tuijian("tool");
				list.addAll(list1);
				
				request.setAttribute("info",list);
				request.getRequestDispatcher("/book/fenglei.jsp").forward(request, response);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
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
		this.doPost(request, response);
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
