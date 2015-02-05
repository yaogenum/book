package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beasns.Music_collect;

public class Arrange_music extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Arrange_music() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

	//	String users_name=request.getParameter("users_name");
		HttpSession session=request.getSession();
		String users_name=(String) session.getAttribute("users_name");
		
	//	users_name=URLDecoder.decode(users_name,"gb2312");
		Music_collect set_music=new Music_collect();
		set_music.class_forname();
		try {
			List<String> list =new ArrayList<String>();
			list=set_music.get_read_music(users_name);
			request.setAttribute("list",list);
		request.setAttribute("users_name",users_name);
		request.getRequestDispatcher("/personal/set_music.jsp").forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println("ÇëÇó³ö´í£¡");
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
