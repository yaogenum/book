package servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.Reader;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Href_read extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Href_read() {
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
	// 只需要路径为参数
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
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		HttpSession session=request.getSession();
		
		String nowcount = request.getParameter("nowcount");
		
		int count = Integer.parseInt(nowcount);
		session.setAttribute("nowcount",nowcount);
		
		
		String file_name = (String) session.getAttribute("books_path");
		String books_name = (String) session.getAttribute("books_name");
		
		
		String path = request.getContextPath();
		
		String x_path=getServletContext().getRealPath("/");
	
		File file = new File(x_path+ file_name);
		
		
		
	//	InputStream readers = new FileReader(file);
		InputStreamReader read=new InputStreamReader(new FileInputStream(file),"gb2312");
		
		int len = 0;
		int temp = 0;
		int page_char = 1024;
		
		int low = (count - 1) * page_char;
		int high = count * page_char + 1;
		
		if(count-1!=0){
			count--;
			low = (count - 1) * page_char;
			high = count * page_char + 1;
		}
		else{
			low=0;
			high=0;
		}
		
		
		int page_count=1;
		boolean bool=false;
		
		String content = "欢迎来到佳书有约->阅读公共页->" + books_name+"<br />"+"----------------------------------------"+"<br />";
		while ((temp = read.read()) != -1) {
			
			len++;
			int temp1=temp;
			
			
			if (len > low && len < high) {
				
				content = content + ((char) temp);
				
				
				if((((char)temp)==' ')&&(((char)temp)==' ')){
					content=content+"<br />";
					temp1=1;
				}
				

			} 
			if(len>=high){
				break;
			}
		}
		
		
		
		page_count=len/1024+1;
		if(count>page_count){
			content="1";
			
		}
		else{
		content=new String(content.getBytes("gb2312"),"gb2312");
		}
		
		read.close();
		
	//	readers.close();
		
		out.println(content);
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


//request.setAttribute("books_name",books_name);
// request.setAttribute("content", content);
// request.getRequestDispatcher("/book/read.jsp").forward(request,
// response);
