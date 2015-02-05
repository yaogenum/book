package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beasns.Vip;

public class Vip_arrange extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Vip_arrange() {
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
		
		
		HttpSession session=request.getSession();
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String users_name=(String) session.getAttribute("users_name");
	
		PrintWriter out=response.getWriter();
		String canshu=request.getParameter("canshu");
		int can=Integer.parseInt(canshu);
		int grades=0;
		
		boolean bool=false;
		if(can==2){
			
			try {
				Vip vip=new Vip();
				vip.class_forname();
				grades=vip.chaxun(users_name);
				out.println("THE GRADES YOU HAVE "+grades);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else{
			try {
				Vip kai=new Vip();
				kai.class_forname();
				bool=kai.kaitong(users_name);
				if(bool==true){
					out.println("welcome to vip club");
				}
				else{
					out.println("dear,you have been vip");
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
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
		
		
		String books_limit=request.getParameter("books_limit");
		
		HttpSession session=request.getSession();
		String users_name=(String) session.getAttribute("users_name");
		
		
		int status=0;
		int grades=11; 
		try {
			Vip vip=new Vip();
			vip.class_forname();
			grades=vip.chaxun(users_name);
			
			if((grades-(Integer.parseInt(books_limit)))>=0){
				status=1;
			}
			else{
				status=2;
			}
			String grade=Integer.toString(grades);
			String statu=Integer.toString(status);
			out.println(statu+"0"+grade);
			
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			out.println(e.toString());
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
