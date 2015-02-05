package servlet;

import hibernate_sql.Users_top;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import beasns.Books_content;

public class Shouye extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Shouye() {
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
		
		Books_content books_shangchuan=new Books_content();
		books_shangchuan.class_forname();
		List<String> chuan=new ArrayList<String>();
		//List<String> tuijian=new ArrayList<String>();
		try {
			
			chuan.addAll(books_shangchuan.tuijian_shangchuan("it"));
			chuan.addAll(books_shangchuan.tuijian_shangchuan("math"));
			chuan.addAll(books_shangchuan.tuijian_shangchuan("economy"));
			chuan.addAll(books_shangchuan.tuijian_shangchuan("fiction"));
			chuan.addAll(books_shangchuan.tuijian_shangchuan("literature"));
			chuan.addAll(books_shangchuan.tuijian_shangchuan("scientist"));
			chuan.addAll(books_shangchuan.tuijian_shangchuan("tool"));
			chuan.addAll(books_shangchuan.tuijian_one(("it")));
			chuan.addAll(books_shangchuan.tuijian_one(("math")));
			chuan.addAll(books_shangchuan.tuijian_one(("economy")));
			chuan.addAll(books_shangchuan.tuijian_one(("fiction")));
			chuan.addAll(books_shangchuan.tuijian_one(("literature")));
			chuan.addAll(books_shangchuan.tuijian_one(("scientist")));
			chuan.addAll(books_shangchuan.tuijian_one(("tool")));
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JSONArray  json_chuan=JSONArray.fromObject(chuan);
	//	JSONArray  json_tuijian=JSONArray.fromObject(tuijian);
		//json_chuan.add(json_tuijian);
		out.println(json_chuan);
		
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
		
		String flag=request.getParameter("flag");
		
		Books_content books_fenlei=new Books_content();
		books_fenlei.class_forname();
		
		List<String> fenlei=new ArrayList<String>();
			
			try {//资料分类
				
				fenlei.addAll(books_fenlei.tuijian("it"));
				fenlei.addAll(books_fenlei.tuijian("math"));
				fenlei.addAll(books_fenlei.tuijian("economy"));
				fenlei.addAll(books_fenlei.tuijian("fiction"));
				fenlei.addAll(books_fenlei.tuijian("literature"));
				fenlei.addAll(books_fenlei.tuijian("tool"));
				fenlei.addAll(books_fenlei.tuijian("scientist"));
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			JSONArray json_fen=JSONArray.fromObject(fenlei);
			out.println(json_fen);
		/*
		else{//top排行下载

			try {
				
				List<String> fenlei=new ArrayList<String>();
				fenlei.addAll(books_fenlei.download_one("it"));
				fenlei.addAll(books_fenlei.download_one("math"));
				fenlei.addAll(books_fenlei.download_one("economy"));
				fenlei.addAll(books_fenlei.download_one("fiction"));
				fenlei.addAll(books_fenlei.download_one("literature"));
				fenlei.addAll(books_fenlei.download_one("scientist"));
				fenlei.addAll(books_fenlei.download_one("tool"));
			
				
				

				JSONArray json_fen=JSONArray.fromObject(fenlei);
				out.println(json_fen);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		*/
		
		
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
