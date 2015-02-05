package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beasns.Music_collect;

public class Set_music extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Set_music() {
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
		boolean bool=false;
		
		HttpSession session=request.getSession();
		String users_name=(String) session.getAttribute("users_name");
		
		String music_name=request.getParameter("music_name");
		String users_names=new String(users_name.getBytes("ISO-8859-1"),"utf-8");
		String music_names=new String(music_name.getBytes("ISO-8859-1"),"utf-8");
		
		try {
			Music_collect kaitong=new Music_collect();
			kaitong.class_forname();
			bool=kaitong.set_music(users_names,music_names);
			out.println("ÒÑÉèÖÃ"+music_names+"ÎªÄúµÄÔÄ¶Á±³¾°¸èÇú");
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
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
