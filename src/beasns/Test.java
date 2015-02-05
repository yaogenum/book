package beasns;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Test {
	public Connection con = null;
	public PreparedStatement p_state = null;
	public ResultSet result = null;
	String url = "jdbc:mysql://localhost:3306/library";
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
			list.add(result.getString("books_path"));
			list.add(result.getString("books_text"));
			list.add(result.getString("books_pic"));
			list.add(result.getString("books_xiazai"));
		}
		
		result.close();
		p_state.close();
		con.close();
		return list;
	}
	public static void main(String args[]) throws ParseException{
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		  Date d1 = df.parse("2004-03-26 13:31:40");
		    Date d2 = df.parse("2004-01-02 11:30:24");
		    long diff = d1.getTime() - d2.getTime();
		    long days = diff / (1000 * 60 * 60 * 24);
	}
}
