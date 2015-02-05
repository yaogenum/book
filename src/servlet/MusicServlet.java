package servlet;

import javax.servlet.*;
import javax.servlet.http.*;

import beasns.MusicDom;
import beasns.Music_collect;

import java.io.*;
import java.net.*;
import java.sql.SQLException;

public class MusicServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public MusicServlet() {
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

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		
		
		String person_name = request.getParameter("person_name");
		String music_name = request.getParameter("music_name");
		
		String users_name = (String) session.getAttribute("users_name");
		String books_path = (String) session.getAttribute("books_path");
		String nowcount = (String) session.getAttribute("nowcount");
		String books_name = (String) session.getAttribute("books_name");
		String leibie = (String) session.getAttribute("files_form");
		

		session.setAttribute("errors","");
		//String books_path = request.getParameter("books_path");
	//	String nowcount = request.getParameter("nowcount");
		//String books_name = request.getParameter("books_name");
		
		//String leibie = request.getParameter("leibie");
		//String nowcount = request.getParameter("nowcount");
		if(users_name.endsWith("游客")==true||users_name==null||users_name.endsWith("undefined")==true){
			users_name="游客";//游客身份
		}
		Music_collect collect = new Music_collect();
		collect.class_forname();
		try {
			collect.add_music(users_name, music_name, person_name, books_name,
					leibie);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.toString());
		}
		

		String address = null;
		String add =null;
		int hash = music_name.hashCode();

		File file1 = new File("D:/unreal_path/book/WebRoot/music/"
				+ hash + ".mp3");
		
		File file = new File("D:/unreal_path/book/WebRoot/music_xml/"
				+ music_name + ".xml");
		if (file.exists() == false&&file1.exists()==false) {// 不存在
			String url_str = "http://box.zhangmen.baidu.com/x?op=12&count=1&title="
					+ music_name + "$$" + person_name + "$$$$";
			try {
				URL url = new URL(url_str);
				URLConnection conn = url.openConnection();
				conn.connect();
				InputStream input = conn.getInputStream();
				OutputStream output = new FileOutputStream(file);
				byte[] b = new byte[20240];
				int len = input.read(b);
				output.write(b, 0, len);
				address = MusicDom.dom(file);
				if (address.equals("")) {// 非法输入，搜不到结果
					
					session.setAttribute("errors","请求无效");
					output.close();
					input.close();
					file.delete();
				} else {
					try {
						URL url2 = new URL(address);
						URLConnection con = url2.openConnection();
						con.connect();
						InputStream input2 = con.getInputStream();
						File file2 = new File(
								"D:/unreal_path/book/WebRoot/music/" + hash
										+ ".mp3");// 创建文件
						OutputStream output2 = new FileOutputStream(file2); // 获取输出流
						byte[] b2 = new byte[20240]; // 大小
						// int len2 = input2.read(b2);

						// output2.write(b2,0,len2);
						int bool = 0;
						while ((bool = input2.read(b2)) != -1) {
							output2.write(b2, 0, bool);
						}
						//修改读者搜索歌曲结果
						collect.song_status(users_name, music_name);
						
						output2.close();
						input2.close();
						output.close();
						input.close();
						add = "music/" + hash + ".mp3";
					} catch (Exception e) {
						
						session.setAttribute("errors","无法播放，可能是因为你输入的是多名歌手合唱的歌曲");
					}

				}
			} catch (Exception e) {
				session.setAttribute("errors","输入歌曲名与歌手不能找到！");
				
				
			}

		} else {
			try {
				collect.song_status(users_name, music_name);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			add = "music/" + hash + ".mp3";
		}
		
	//	request.setAttribute("books_path", books_path);
		//request.setAttribute("nowcount", nowcount);
		//request.setAttribute("books_name", books_name);
		//request.setAttribute("users_name", users_name);
		session.setAttribute("add",add);
		request.getRequestDispatcher("/book/read.jsp").forward(request,
				response);

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
