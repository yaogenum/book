package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import com.db.MySQLDB;
import java.util.ArrayList;
import java.util.List;

public class dongtai extends HttpServlet {
	public dongtai() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
		public void init() throws ServletException {
			// Put your code here
		}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		 List<String> list2 =new ArrayList<String>();
		String users_name=request.getParameter("users_name");
		MySQLDB mydb = null;
		try {
			mydb = new MySQLDB();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mydb.getConnection(); 
	  
	  
		ResultSet rs1 = null;
		
		rs1= mydb.executeQuery("SELECT * FROM post  ORDER BY time limit 3");
		
		
		try {
			while(rs1.next()){
				list2.add(String.valueOf(rs1.getInt("pid")));
				list2.add(rs1.getString("title"));	
				list2.add(String.valueOf(rs1.getInt("scan")));	
				list2.add(String.valueOf(rs1.getDate("time")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		JSONArray json1=JSONArray.fromObject(list2);
		
		out.println(json1);
		out.flush();
		out.close();
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		 List<String> list2 =new ArrayList<String>();
		MySQLDB mydb = null;
		try {
			mydb = new MySQLDB();
		} catch (Exception e) {
			e.printStackTrace();
		}
		mydb.getConnection(); 
		
		ResultSet rs2 = null;
		rs2 = mydb.executeQuery("SELECT * FROM post ORDER BY scan DESC LIMIT 3");
		try {
			while(rs2.next()){
				list2.add(String.valueOf(rs2.getInt("pid")));
			
				list2.add(rs2.getString("title"));	
				list2.add(String.valueOf(rs2.getInt("scan")));	
				list2.add(String.valueOf(rs2.getDate("time")));
							
				
				//request.getSession().setAttribute("DTcomment",rs2.getString("comment"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JSONArray json1=JSONArray.fromObject(list2);
		out.println(json1);
	   
		
		out.flush();
		out.close();
	}

}

