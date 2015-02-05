package beasns;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class Book_pingjia {
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

	public boolean add(String books_name, String users_name,String books_pingjia)
			throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "insert into pingjia (books_name,users_name,books_pingjia,datetime) values (?,?,?,?)";
		String datetime = new SimpleDateFormat("yyyy-MM-dd").format(Calendar
				.getInstance().getTime());
		p_state = con.prepareStatement(sql);
		p_state.setString(1, books_name);
		p_state.setString(2, users_name);
		p_state.setString(3, books_pingjia);
		p_state.setString(4,datetime);
		p_state.execute();
		p_state.close();
		con.close();
		return true;
	}
	public List<String> chakan(String books_name) throws SQLException{
		List<String> list = new ArrayList<String>();
		con=DriverManager.getConnection(url,"root","root");
		String sql="select * from pingjia where books_name=?";
		p_state=con.prepareStatement(sql);
		p_state.setString(1, books_name);
		result=p_state.executeQuery();
		while(result.next()){
			list.add(result.getString("users_name"));
			list.add(result.getString("books_pingjia"));
			list.add(result.getString("datetime"));
		}
		result.close();
		p_state.close();
		return list;
	}
}






