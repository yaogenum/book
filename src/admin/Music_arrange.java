package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_sql.Users_arranges;

public class Music_arrange extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Music_arrange() {
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
			throws ServletException, IOException {//�������ֲ�ѯ��Ϣ����
		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String flag=request.getParameter("flag");
		if(flag.equals("ok")){// ��ѯ��������Ⱥ������
			
			try {
				List<String> list=new ArrayList<String>();
				Users_arranges select=new Users_arranges();
				select.class_forname();
				list=select.select_leibie();
				
				Iterator<String> iter=list.iterator();
				int i=0;
				while(iter.hasNext()){
					i++;
					if(i%2!=0){
						out.println(";  ���:");
					}
					if(i%2==0){
						out.println("�˴Σ�");
						out.println("\n");
					}
					out.println(iter.next());
					
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else{
			
			try {
				List<String> list=new ArrayList<String>();
				Users_arranges select=new Users_arranges();
				select.class_forname();
				list=select.select_music();
				Iterator<String> iter=list.iterator();
				int i=0;
				while(iter.hasNext()){
					i++;
					if(i%2!=0){
						out.println(";  ������:");
					}
					if(i%2==0){
						out.println("�˴Σ�");
						out.println("\n");
					}
					out.println(iter.next());
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		out.flush();
		out.close();
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String music_name = request.getParameter("music_name");
		String users_name = request.getParameter("users_name");

		try {
			Users_arranges music = new Users_arranges();
			music.class_forname();
			music.delete_music(music_name, users_name);
			out.println("��ɾ��");
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
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
