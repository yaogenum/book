package servlet;

import hibernate_sql.Save_words;


import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beasns.Books_load;
import beasns.Cal_miao;
import beasns.Music_collect;

public class Download extends HttpServlet {
	
	/**
	 * Constructor of the object.
	 */
	public Download() {
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
		PrintWriter out = response.getWriter();
		
		String books_name = request.getParameter("books_name");
		String files_form = request.getParameter("interest");
		String users_name=request.getParameter("users_name");
		String vip=request.getParameter("vip");

		HttpSession session=request.getSession();
		users_name=(String) session.getAttribute("users_name");
		vip=(String) session.getAttribute("vip");
		
		
		List<String> list = new ArrayList<String>();
		List<String> list1 = new ArrayList<String>();

		Iterator<String> info = null;

		boolean bool = false;

		try {
			
			Books_load down = new Books_load();
			down.class_forname();

			list = down.path(books_name, files_form);
			
			info = list.iterator();// 获取到了搜索结果集合
			if (info.hasNext()) {
				bool = true;
			}
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
				
		}

		request.setAttribute("users_name",users_name);
		
		request.setAttribute("vip", vip);//
		if (!bool) {
			Save_words save=new Save_words();
			save.set_word(books_name,"no",files_form);
			// String date = new
			// SimpleDateFormat("YYYY-MM-DD").format(Calendar.getInstance().getTime());
			// out.println("抱歉，不能查询到你所需要的书籍，或许你可以缩短书籍名字，更改名称查询");
			list1.add("抱歉，不能查询到你所需要的书籍，或许你可以缩短书籍名字，更改名称查询");
			// Cal_miao time=new Cal_miao();
			// time.bool=false;
			// time.timer=new Timer();
			// time.timer.schedule(time, 5000);
			// response.sendRedirect("/book/download/load.jsp");
			request.setAttribute("info", list1);
			request.getRequestDispatcher("/errors/down_error.jsp").forward(request,
					response);
		} else {
			
			Save_words save=new Save_words();
			save.set_word(books_name,"ok",files_form);
		
			request.setAttribute("info",list);
			session.setAttribute("files_form",files_form );
			
			request.getRequestDispatcher("/download/down.jsp").forward(request,response);
		}

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
/*
 * // the dialogbox of download file. response.setHeader("Content-disposition",
 * "attachment;filename=" + "test.rar"); // set the MIME type.
 * response.setContentType("application/x-tar"); // get the file length. long
 * fileLength = fileLoad.length(); String length = String.valueOf(fileLength);
 * response.setHeader("Content_Length", length); // download the file.
 * FileInputStream in = new FileInputStream(fileLoad); int n = 0; while ((n =
 * in.read(b)) != -1) { o.write(b, 0, n); }
 * 
 * 
 * 
 * byte[] buf = new byte[1024 * 5]; // the file to download. String path =
 * request.getContextPath(); File fileLoad = new File("D:/unreal_path/" + path +
 * "/WebRoot" + info.next());// 服务器路径("d:/temp", "test.rar"); String filename
 * =//main fileLoad.getName(); ServletOutputStream out =
 * response.getOutputStream();
 * 
 * response.setHeader("content-disposition", "attachment;filename=" + new
 * String(filename.getBytes("utf-8"), "gb2312")); InputStream in = new
 * FileInputStream(fileLoad); int length = 0; while ((length = in.read(buf)) !=
 * -1) { out.write(buf, 0, length); } // 将数据刷出，其实调用了out.close()时，自动会调用flush()方法
 * out.flush(); out.close(); in.close();
 */
