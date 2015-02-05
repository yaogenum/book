package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Ready_download extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Ready_download() {
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
		
		
		String books_name = new String((request.getParameter("books_name")).getBytes("utf8"),"utf-8");
		String books_path = new String((request.getParameter("books_path")).getBytes("utf8"),"utf-8");
		String books_limit = request.getParameter("books_limit");
		String files_form=(String) session.getAttribute("interest");
		
		session.setAttribute("books_name",books_name);
		session.setAttribute("books_path",books_path);
		session.setAttribute("books_limit",books_limit);
		session.setAttribute("files_form",files_form);
		
		
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
		HttpSession session=request.getSession();
		//String books=request.getParameter("books_path").;
		String files_form=(String) session.getAttribute("interest");
		String books_path =new String((request.getParameter("books_path")).getBytes("utf8"),"utf-8");
		String books_name = new String((request.getParameter("books_name")).getBytes("utf8"),"utf-8");
		String books_limit = request.getParameter("books_limit");
		
		
		
		//String books_path = URLDecoder.decode(request.getParameter("books_path"),"utf-8");
		//String books_name = URLDecoder.decode(request.getParameter("books_name"),"utf-8");
		
		//books_path=new String(books_path.getBytes("utf-8"),"gb2312");
		
		//books_name=new String(books_name.getBytes("utf-8"),"gb2312");
		
		
		
		session.setAttribute("files_form",files_form);
		session.setAttribute("books_name",books_name);
		session.setAttribute("books_path",books_path);
		session.setAttribute("books_limit",books_limit);
		
		
		
		out.println(books_name+books_path);
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
