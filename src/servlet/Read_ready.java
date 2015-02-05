package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Read_ready extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Read_ready() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession(true);
		String users_name=(String) session.getAttribute("users_name");
		//String books_name=request.getParameter("books_name");
		String books_name = new String((request.getParameter("books_name")).getBytes("ISO-8859-1"),"utf-8");
		String books_path = new String((request.getParameter("books_path")).getBytes("ISO-8859-1"),"utf-8");
	//	String books_path=request.getParameter("books_path");
		String nowcount=request.getParameter("nowcount");
		String interest=request.getParameter("interest");
		if(users_name!=null&&users_name.length()>0){
			
			session.setAttribute("books_name",books_name);
			session.setAttribute("books_path",books_path);
			session.setAttribute("nowcount",1);
			session.setAttribute("files_form",interest);
		}
		else{
			
			//HttpSession youke_session=request.getSession(true);
			session.setAttribute("users_name","сн©м");
			session.setAttribute("vip","no");
			session.setAttribute("grades",0);
			session.setAttribute("interest","it");
			session.setAttribute("books_name",books_name);
			session.setAttribute("nowcount",1);
			session.setAttribute("books_path",books_path);
			session.setAttribute("files_form",interest);
			session.setMaxInactiveInterval(6000); 
			
		}
		
		
		
		out.println(nowcount+books_name+books_path);
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
		PrintWriter out = response.getWriter();
	//	String books_name=request.getParameter("books_name");
		//String books_path=request.getParameter("books_path");
		String books_name = new String((request.getParameter("books_name")).getBytes("utf8"),"utf-8");
		String books_path = new String((request.getParameter("books_path")).getBytes("utf8"),"utf-8");
		String nowcount=request.getParameter("nowcount");
		HttpSession session=request.getSession();
		session.setAttribute("books_name",books_name);
		session.setAttribute("books_path",books_path);
		session.setAttribute("nowcount",nowcount);
		
		out.println(books_name+books_path+nowcount);
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
