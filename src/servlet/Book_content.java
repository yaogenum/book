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

import sun.org.mozilla.javascript.internal.ObjToIntMap.Iterator;

import beasns.Books_content;
import beasns.Music_collect;

public class Book_content extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Book_content() {
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
//读取所有书本信息
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		HttpSession session=request.getSession();
		
		String books_name=(String) session.getAttribute("books_name");
			//request.getParameter("books_name");
		String books_path=(String) session.getAttribute("books_path");
			//request.getParameter("books_path");
		
		
		//session.setAttribute("books_name",books_name);
		//session.setAttribute("books_path",books_path);
		
		
		String leibie=(String) session.getAttribute("files_form");
		String users_name=(String) session.getAttribute("users_name");
		String vip=(String) session.getAttribute("vip");
		
		
		
		
		List<String> list=new ArrayList<String>();
		out.println(leibie+books_name+books_path+users_name);
		String	add=null;
		try {
			Books_content book=new Books_content();
			book.class_forname();
			list=book.books_infor(books_name,leibie);
			Music_collect get_music=new Music_collect();
			get_music.class_forname();
			add=get_music.beijing_music(users_name);
			if(add.equals("no")==false){
				add = "music/" + add.hashCode() + ".mp3";
			}
			session.setAttribute("nowcount","1");
			session.setAttribute("add",add);
			
			request.setAttribute("leibie", leibie);
			request.setAttribute("vip", vip);
			request.setAttribute("infor", list);
			request.setAttribute("add", add);
			//request.setAttribute("users_name",users_name);
			
			request.getRequestDispatcher("/book/book_main.jsp").forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.toString());
			out.println("ok");
			out.println(new String(books_name.getBytes("utf-8"),"gb2312"));
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
