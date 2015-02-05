package servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beasns.Books_load;
import beasns.Vip;

public class Href_download extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Href_download() {
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
		this.doPost(request, response);
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
		HttpSession session=request.getSession();
		
		//String file_names = request.getParameter("files_name");
		String books_name = (String) session.getAttribute("books_name");
		
		String interest = (String) session.getAttribute("files_form");
		String users_name = (String) session.getAttribute("users_name");
		String vips = (String) session.getAttribute("vip");
		//String users_name = request.getParameter("users_name");
		String books_limit = (String) session.getAttribute("books_limit");
		//String vips = request.getParameter("vip");
		String file_names = (String) session.getAttribute("books_path");
		//PrintWrite 
		
		
		boolean bool = true;
		if (file_names.length()>0) {
			boolean bangduan = true;
			if (vips.equals("ok")) {
				bangduan = true;
				
			} else {
				try {
					Vip vip = new Vip();
					vip.class_forname();
					bangduan = vip.decrease(users_name,
							Integer.parseInt(books_limit));

				} catch (NumberFormatException e1) {

				} catch (SQLException e1) {

				}
				
			}

			if (bangduan == true) {

				bool = true;
				try {
					Books_load add = new Books_load();
					add.class_forname();
					add.add_xiazai(books_name, interest, bool);// true增加下载次数，

					byte[] buf = new byte[1024 * 5];
					String path = request.getContextPath();
					String paths=getServletContext().getRealPath("/");
				//	File fileLoad = new File("D:/unreal_path/" + path
					//		+ "/WebRoot" + file_names);// 服务器路径
					File fileLoad = new File(paths+file_names);

					String filename = fileLoad.getName();
					ServletOutputStream out = response.getOutputStream();
					response.setHeader(
							"content-disposition",
							"attachment;filename="+java.net.URLEncoder.encode(filename, "UTF-8"));
							
								//	+ new String(filename.getBytes("gb2312"),
									//		"utf-8"));// 下载
					InputStream in = new FileInputStream(fileLoad);
					int length = 0;
					while ((length = in.read(buf)) != -1) {
						out.write(buf, 0, length);
					}
					
					out.flush();
					out.close();
					in.close();

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					
				}
			}

			else {
				response.setCharacterEncoding("utf-8");
				PrintWriter out = response.getWriter();
				response.sendRedirect("/book/errors/download.jsp");

			}

		} else {

			
			
			bool = false;
			PrintWriter out = response.getWriter();
			out.println(bool);
			
			books_name=(String) session.getAttribute("books_name");
			interest=(String) session.getAttribute("files_form");
			
			try {
				Books_load add = new Books_load();
				add.class_forname();
				add.add_xiazai(books_name, interest, bool);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println("ok");

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
