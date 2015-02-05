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

public class Add_tags {
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

	public void add_tag(String users_name, String users_yeshu,
			String users_tag, String books_name) throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");// 标签放在一个表里面
		String datetime = new SimpleDateFormat("yyyy-MM-dd").format(Calendar
				.getInstance().getTime());
		// String books_name = users_tag.substring(11,
		// users_tag.lastIndexOf("."));
		boolean bool = false;
		int id = 0;
		int amount = 0;
		String pibei = "select * from users_tags where users_name =? and books_name=? ";
		String sql = null;
		p_state = con.prepareStatement(pibei);
		p_state.setString(1, users_name);
		p_state.setString(2, books_name);
		result = p_state.executeQuery();
		while (result.next()) {
			id = result.getInt("id");
			// amount=result.getInt("tag_amount");
			bool = true;
			break;// 有相同
		}

		// p_state.close();
		if (bool == true) {
			sql = "update users_tags set users_yeshu=? ,users_tag=? , tag_time =? where id=?";
			p_state = con.prepareStatement(sql);
			p_state.setString(1, users_yeshu);
			p_state.setString(2, users_tag);
			p_state.setString(3, datetime);
			p_state.setInt(4, id);
			p_state.executeUpdate();
		} else {
			String high = "select max(tag_amount) as amounthigh from users_tags where users_name=? ";
			p_state = con.prepareStatement(high);
			p_state.setString(1, users_name);
			result = p_state.executeQuery();
			while (result.next()) {
				amount = result.getInt("amounthigh");
			}
			amount++;// 书签数量
			sql = "insert into users_tags (users_name,books_name,users_tag,users_yeshu,tag_time,tag_amount) values (?,?,?,?,?,?)";
			p_state = con.prepareStatement(sql);
			p_state.setString(1, users_name);
			p_state.setString(2, books_name);
			p_state.setString(3, users_tag);
			p_state.setString(4, users_yeshu);
			p_state.setString(5, datetime);
			p_state.setInt(6, amount);
			p_state.execute();
			String sql_all = "update users_tags set tag_amount=? where users_name=?";
			p_state=con.prepareStatement(sql_all);
			p_state.setInt(1, amount);
			p_state.setString(2, users_name);
			p_state.executeUpdate();
		}
		// result.close();
		p_state.close();
		con.close();
	}

	public List<String> read_tag(String users_name) throws SQLException {
		List<String> info = new ArrayList<String>();
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "select * from users_tags where users_name=? ";
		p_state = con.prepareStatement(sql);
		p_state.setString(1, users_name);
		result = p_state.executeQuery();
		
		while (result.next()) {
			info.add(result.getString("books_name"));
			info.add(result.getString("tag_time"));
			info.add(result.getString("users_tag"));
			info.add(result.getString("users_yeshu"));
			info.add(Integer.toString(result.getInt("tag_amount")));
		}
		if(result!=null){
			result.close();
		}
		p_state.close();
		con.close();
		return info;
	}

	public void delete_tag(String users_name, String books_name)
			throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql1="select tag_amount from users_tags where users_name=?";
		int amount=0;
		p_state=con.prepareStatement(sql1);
		p_state.setString(1, users_name);
		result=p_state.executeQuery();
		while(result.next()){
			amount=result.getInt("tag_amount");
		}
		amount--;
		
		String sql = "delete from users_tags where users_name=? and books_name=?";
		p_state = con.prepareStatement(sql);
		p_state.setString(1, users_name);
		p_state.setString(2, books_name);
		p_state.execute();
		
		String sql2="update users_tags set tag_amount=? where users_name=?";
		p_state=con.prepareStatement(sql2);
		p_state.setInt(1,amount);
		p_state.setString(2,users_name);
		p_state.executeUpdate();
		p_state.close();
		con.close();
		
	
	}

}
