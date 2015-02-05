package beasns;

import hibernate_sql.Infor_read;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Books_content {
	public Connection con = null;
	public PreparedStatement p_state = null;
	public ResultSet result = null;
	String url = "jdbc:mysql://localhost:3306/library";

	public void class_forname() {
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public List<String> books_infor(String books_name,String leibie) throws SQLException{
		List<String> list =new ArrayList<String>();
		String sql="select * from "+leibie +" where books_name=? ";
		con = DriverManager.getConnection(url, "root", "root");
		p_state=con.prepareStatement(sql);
		p_state.setString(1, books_name);
		result=p_state.executeQuery();
		
		
		while(result.next()){
			list.add(result.getString("books_name"));
			list.add(result.getString("books_tag"));
			list.add(result.getString("books_author"));
			list.add(result.getString("books_amount"));
			list.add(result.getString("books_storagetime"));
			
			//list.add(result.getString("books_path"));
			String s[]=result.getString("books_path").split("pdf|doc|txt");
			String path=s[0]+"txt";
			list.add(path);
			
			list.add(result.getString("books_text"));
			list.add(result.getString("books_pic"));
			list.add(result.getString("books_xiazai"));
			
			
			
		}
		
		result.close();
		p_state.close();
		con.close();
		return list;
	}
	public List<String> tuijian(String interest) throws SQLException{//推荐书籍页
		List<String> list =new ArrayList<String>();
		con=DriverManager.getConnection(url,"root","root");
		String sql=null;
		
		sql="select * from "+interest+" order by books_amount desc limit 5 ";
		p_state=con.prepareStatement(sql);
		result=p_state.executeQuery();
		while(result.next()){
			list.add(result.getString("books_name"));//0
			list.add(result.getString("books_tag"));//1
			list.add(result.getString("books_author"));//2
			list.add(result.getString("books_amount"));//3
			list.add(result.getString("books_storagetime"));//4
			list.add(result.getString("books_path"));//5
			list.add(result.getString("books_text"));//6
			list.add(result.getString("books_pic"));//7
			list.add(result.getString("books_xiazai"));//8
			list.add(result.getString("books_limit"));//9
		}
		if(result!=null){
			result.close();
		}
	
		p_state.close();
		con.close();
		return list;
	}
	
	public List<String> tuijian_shangchuan(String interest) throws SQLException{//推荐书籍页
		List<String> list =new ArrayList<String>();
		con=DriverManager.getConnection(url,"root","root");
		String sql=null;
		sql="select * from "+interest+" order by books_storagetime DESC limit 1 ";
		p_state=con.prepareStatement(sql);
		result=p_state.executeQuery();
		
		while(result.next()){
			list.add(result.getString("books_name"));//0
			list.add(result.getString("books_tag"));//1
			list.add(result.getString("books_author"));//2
			list.add(result.getString("books_amount"));//3
			list.add(result.getString("books_storagetime"));//4
			String s[]=result.getString("books_path").split("doc|pdf|txt|ppt|java|html|jsp");
			String path=s[0]+"txt";
			list.add(path);//5
			list.add(result.getString("books_text"));//6
			list.add(result.getString("books_pic"));//7
			list.add(result.getString("books_xiazai"));//8
			list.add(result.getString("books_limit"));//9
		}
		if(result!=null){
			result.close();
		}
	
		p_state.close();
		con.close();
		return list;
	}
	
	public String get_interest(String users_name) throws SQLException{
		String interest=null;
		con=DriverManager.getConnection(url,"root","root");
		String sql=null;
		sql="select users_in from users where users_name=? ";
		p_state=con.prepareStatement(sql);
		p_state.setString(1,users_name);
		result=p_state.executeQuery();
		while(result.next()){
			interest=result.getString("users_in");
		}
		result.close();
		p_state.close();
		con.close();
		return interest;
	}
	
	public List<String> read_history(String users_name) throws SQLException{//推荐书籍页
		List<String> list =new ArrayList<String>();
		con=DriverManager.getConnection(url,"root","root");
		String sql=null;
		String books_name=null;
		sql="select * from users_history WHERE users_name=? ORDER BY end_time DESC LIMIT 3 ";
		p_state=con.prepareStatement(sql);
		p_state.setString(1, users_name);
		result=p_state.executeQuery();
		while(result.next()){
			list.add(result.getString("users_name"));
			books_name=result.getString("books_name");
			list.add(books_name);
			list.add(result.getString("books_leibie"));
			list.add(result.getString("end_time"));
			books_name="/save_files/"+books_name+".txt";
			list.add(books_name);
		}
		if(result!=null){
			result.close();
		}
	
		p_state.close();
		con.close();
		return list;
	}//优化时时使用重载
	public List<String> tuijian_one(String interest) throws SQLException{//推荐书籍页
		List<String> list =new ArrayList<String>();
		con=DriverManager.getConnection(url,"root","root");
		String sql=null;
		sql="select * from "+interest+" order by books_amount DESC limit 1";
		p_state=con.prepareStatement(sql);
		result=p_state.executeQuery();
		while(result.next()){
			list.add(result.getString("books_name"));//0
			list.add(result.getString("books_tag"));//1
			list.add(result.getString("books_author"));//2
			list.add(result.getString("books_amount"));//3
			list.add(result.getString("books_storagetime"));//4
			list.add(result.getString("books_path"));//5
			list.add(result.getString("books_text"));//6
			list.add(result.getString("books_pic"));//7
			list.add(result.getString("books_xiazai"));//8
			list.add(result.getString("books_limit"));//9
		}
		if(result!=null){
			result.close();
		}
	
		p_state.close();
		con.close();
		return list;
	}
	
	public List<String> download_one(String interest) throws SQLException{//推荐书籍页
		List<String> list =new ArrayList<String>();
		con=DriverManager.getConnection(url,"root","root");
		String sql=null;
		sql="select * from "+interest+" order by books_xiazai limit 1 ";
		p_state=con.prepareStatement(sql);
		result=p_state.executeQuery();
		while(result.next()){
			list.add(result.getString("books_name"));//0
			list.add(result.getString("books_tag"));//1
			list.add(result.getString("books_author"));//2
			list.add(result.getString("books_amount"));//3
			list.add(result.getString("books_storagetime"));//4
			list.add(result.getString("books_path"));//5
			list.add(result.getString("books_text"));//6
			list.add(result.getString("books_pic"));//7
			list.add(result.getString("books_xiazai"));//8
			list.add(result.getString("books_limit"));//9
		}
		if(result!=null){
			result.close();
		}
	
		p_state.close();
		con.close();
		return list;
	}
	public List<String> get_tuijian(String interest,int amount) throws SQLException{
		List<String> list=new ArrayList<String>();
		con=DriverManager.getConnection(url,"root","root");
		String sql=null;
		sql="select * from  "+interest+ "  order by books_amount DESC limit ?";
		p_state=con.prepareStatement(sql);
		p_state.setInt(1, amount);
		
		result=p_state.executeQuery();
		while(result.next()){
			list.add(result.getString("books_name"));//0
			list.add(result.getString("books_tag"));//1
			list.add(result.getString("books_author"));//2
			list.add(result.getString("books_amount"));//3
			list.add(result.getString("books_storagetime"));//4
			list.add(result.getString("books_path"));//5
			list.add(result.getString("books_text"));//6
			list.add(result.getString("books_pic"));//7
			list.add(result.getString("books_xiazai"));//8
			list.add(result.getString("books_limit"));//9
		}
		if(result!=null){
			result.close();
		}
	
		p_state.close();
		con.close();
		
		return list;
	}
	
}
