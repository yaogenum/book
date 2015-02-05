package servlet;

import java.io.File;
import java.io.IOException;

import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;

import beasns.Books_load;
import beasns.Code_trans;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class Upload extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Upload() {
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
	 * @param pageContext
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	//�ϴ�Ҫ��:1Ԥ�ж��ļ��Ƿ��Ѿ����ڣ������û�����;2���������ļ�����ת����txt�ļ�;3�û��ظ��ύ����ע��
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		try{
		
		boolean bool = false;
		SmartUpload smart = new SmartUpload();
		String books_path = null;
		String books_name = null;
		String file_form = null;
		String pic_name = null;
		String books_uploader=null;
		HttpSession session=request.getSession();
		
		
		String vip=(String) session.getAttribute("vip");
		String users_name=(String) session.getAttribute("users_name");
		String cuowu=null;
		//String path_books=null;

		try {
			JspFactory _jspxFactory = null;
			PageContext pageContext = null;
			_jspxFactory = JspFactory.getDefaultFactory();
			pageContext = _jspxFactory.getPageContext(this, request, response,
					"", true, 8192, true);
			smart.initialize(pageContext);
			smart.setAllowedFilesList("txt,doc,html,java,jpg,pdf,ppt");
			smart.upload();

			books_name = smart.getRequest().getParameter("books_name");
			String books_author = smart.getRequest().getParameter("books_author");
			
		
			
			String interest = smart.getRequest().getParameter("interest");
			String books_storagetime = new SimpleDateFormat("yyyy-MM-dd")
					.format(Calendar.getInstance().getTime());
			String books_limit = smart.getRequest().getParameter("limit");
			String books_tag = smart.getRequest().getParameter("books_tag");
			books_uploader = smart.getRequest().getParameter("books_uploader");
			file_form = smart.getRequest().getParameter("files_form");
			books_path = "/save_files/" + books_name + "." + file_form;//��� �鱾�洢·��
			//path_books="D:/unreal_path/book/WebRoot"+books_path;//����·��
			pic_name = smart.getRequest().getParameter("pic_name");
			String books_pic = "books_pic/" + pic_name + ".jpg";//��� ͼƬ·��

			Books_load load = new Books_load();
			
			
			File bool_file=new File(books_path);
			
			if(bool_file.exists()){
				response.sendRedirect("/book/download/upload_ok.jsp?users_name="+books_uploader+"&vip="+vip);
		//�Ѿ����ڣ����޸ģ���ֱ������
			}
			
			try {
				load.class_forname();
				load.state_insert(interest, books_name, books_tag,
						books_author, books_storagetime, books_path, books_pic,books_limit,books_uploader);
				load.close_p();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				out.println("�ϴ��ļ���ʽ����");
			}

		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			out.println("�洢Ԥ��ʧ��");
			cuowu="�ļ���ʽ���ԣ��洢Ԥ��ʧ��";
			request.setAttribute("info",cuowu);
			request.getRequestDispatcher("/errors/errors.jsp").forward(request,response);

		}
		try {
			// smart.save("/save_files");
			//ת��pdf��word�ĵ���ʽΪtxt
			
			smart.getFiles()
					.getFile(0)
					.saveAs(getServletContext().getRealPath("/") + "books_pic/"
							+ pic_name + ".jpg");
			
			smart.getFiles()
					.getFile(1)
					.saveAs(getServletContext().getRealPath("/")
							+ "save_files/" + books_name + "." + file_form);
			
			String path_books=getServletContext().getRealPath("/")+ "save_files/" + books_name + "." + file_form;
			
			if(file_form.equals("doc")){
				Code_trans code=new Code_trans();
				code.trans_file_doc(path_books);
			}
			if(file_form.equals("pdf")){
				Code_trans code=new Code_trans();
				code.trans_file_pdf(path_books);
			}
			/*
			if(file_form.equals("chm")){
				Code_trans code=new Code_trans();
				code.trans_file_chm(path_books);
			}*/
			if(file_form.equals("ppt")){
				Code_trans code=new Code_trans();
				code.trans_file_ppt(path_books);
			}
			
			
			response.sendRedirect("/book/download/upload_ok.jsp");
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			out.println("�ϴ�ʧ��");
			cuowu="����ϵͳ���ϣ��޷�����ϴ�";
			request.setAttribute("info",cuowu);
			request.getRequestDispatcher("/errors/errors.jsp").forward(request,response);

			
		}
		}
		catch(Exception e){
			String cuowu="���ڸ�ʽԭ���޷�����ϴ�";
			request.setAttribute("info",cuowu);
			request.getRequestDispatcher("/errors/errors.jsp").forward(request,response);
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
