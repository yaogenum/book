package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beasns.Book_pingjia;

public class Books_pingjia extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Books_pingjia() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		HttpSession session=request.getSession();
		String books_name=(String) session.getAttribute("books_name");
		
		
		try {
			List<String> list=new ArrayList<String>();
			Book_pingjia chaxun=new Book_pingjia();
			chaxun.class_forname();
			list=chaxun.chakan(books_name);
			Iterator<String> infor=list.iterator();
			
			
			while(infor.hasNext()){
				
				out.print("reader读者:");
				out.print(infor.next());
				out.print("pingjia评价:");
				out.print(infor.next());
				out.print("datetime评价时间");
				out.print(infor.next());
				out.println();
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.toString());
		}
		
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		HttpSession session=request.getSession();
		String books_name=(String) session.getAttribute("books_name");
		String users_name=(String) session.getAttribute("users_name");
		
		String books_pingjia = new String((request.getParameter("books_pingjia")).getBytes("utf8"),"utf-8");
		//String books_pingjia =request.getParameter("books_pingjia");
	
			try {
				Book_pingjia add = new Book_pingjia();
				add.class_forname();
				add.add(books_name, users_name, books_pingjia);
				out.println("ok");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				out.println(e.toString());
			}
		

		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
