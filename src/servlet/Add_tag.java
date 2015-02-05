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

import beasns.Add_tags;
import beasns.Music_collect;

public class Add_tag extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Add_tag() {
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
		// 读取书签
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		
		
		HttpSession session = request.getSession();
		
		String users_name = (String) session.getAttribute("users_name");
		String vip=(String) session.getAttribute("vip");
		
		String flag=request.getParameter("flag");
		String add = null;
		List<String> info = new ArrayList<String>();
		try {
			Add_tags read = new Add_tags();
			read.class_forname();
			
			info = read.read_tag(users_name);
			
			if (info.isEmpty()) {
				flag="no";
				request.setAttribute("users_name", users_name);
				request.setAttribute("vip", vip);
				request.setAttribute("flag",flag);
				request.getRequestDispatcher("Tuijian")
						.forward(request, response);
				
			} else {
				Music_collect get_music=new Music_collect();
				get_music.class_forname();
				add=get_music.beijing_music(users_name);
				add = "music/" + add.hashCode() + ".mp3";
				session.setAttribute("add",add);
				
				request.setAttribute("info", info);
				request.getRequestDispatcher("/personal/tag_information.jsp")
						.forward(request, response);
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

		//String users_name = request.getParameter("users_name");
		//String books_name = request.getParameter("books_name");
		//String users_yeshu = request.getParameter("nowcount");
		//String users_tag = request.getParameter("books_path");

		HttpSession session=request.getSession();
		String users_name=(String) session.getAttribute("users_name");
		String books_name=(String) session.getAttribute("books_name");
		String users_tag=(String) session.getAttribute("books_path");
		String users_yeshu=(String) session.getAttribute("nowcount");
		
		try {

			Add_tags tag = new Add_tags();
			tag.class_forname();
			tag.add_tag(users_name, users_yeshu, users_tag, books_name);
			out.println("书签已添加！");

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
