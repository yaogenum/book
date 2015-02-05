package admin;

import hibernate.WordRecords;
import hibernate.WordRecordsDAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class Need_for extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Need_for() {
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
		WordRecords word=new WordRecords();
		WordRecordsDAO dao=new WordRecordsDAO();
		Session session=dao.getSession();
		Transaction trans=session.beginTransaction();
		String sql="select * from  word_records  WHERE book_bool='no'  ORDER BY  books_amount DESC LIMIT 5";//对书本的需求
		String sql2="select * from  word_records  WHERE book_bool='no'  GROUP BY leibie ORDER BY books_amount DESC ";//各类别书籍的需求
		
		List<WordRecords> list=session.createSQLQuery(sql).addEntity("WordRecords",WordRecords.class).list();
		List<String> list2=session.createSQLQuery(sql2).addEntity("WordRecords",WordRecords.class).list();
		List<String> list3=new ArrayList<String>();
		List<String> list4=new ArrayList<String>();
		Iterator iter=list.iterator();
		while(iter.hasNext()){
			//System.out.println();
			
			word=(WordRecords) iter.next();
			list3.add(word.getBooksName());
			
			list3.add(String.valueOf((word.getBooksAmount())));
			list3.add(word.getTime());
			list3.add(word.getLeibie());
		}
	 iter=list2.iterator();
		while(iter.hasNext()){
			//System.out.println();
			word=(WordRecords) iter.next();
			list4.add(word.getBooksName());
			
			list4.add(String.valueOf((word.getBooksAmount())));
			list4.add(word.getTime());
			list4.add(word.getLeibie());
		}
		
		trans.commit();
		session.close();
		request.setAttribute("list",list3);
		request.setAttribute("lists",list4);
		request.getRequestDispatcher("/admin/infor/Book_need.jsp").forward(request, response);
		
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
