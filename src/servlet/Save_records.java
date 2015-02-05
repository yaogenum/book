package servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.net.URLDecoder;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beasns.Add_records;

public class Save_records extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Save_records() {
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
		// 在这里保存用户离开时数据，包含累计阅读时间，最近一次阅读起始和末尾时间
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 记录用户首次阅读记录
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();

		PrintWriter out = response.getWriter();

		String users_name = (String) session.getAttribute("users_name");
		String books_name = (String) session.getAttribute("books_name");
		String leibie = (String) session.getAttribute("files_form");

		// users_name = URLDecoder.decode(users_name, "utf-8");
		// books_name = URLDecoder.decode(books_name, "utf-8");
		// leibie = URLDecoder.decode(leibie, "utf-8");
		if (users_name == null || users_name.length() < 1
				|| users_name.endsWith("undefined")) {
			
		} else {
			Add_records record = new Add_records();
			record.class_forname();
			try {
				record.records(users_name, books_name, leibie);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				out.println(e.toString());
			}
		}
		// out.println(users_name+books_name+leibie);
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
