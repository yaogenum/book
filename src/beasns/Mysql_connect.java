package beasns;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Mysql_connect {
	public Connection con = null;
	public PreparedStatement p_state = null;
	public ResultSet result = null;
	String url = "jdbc:mysql://localhost:3306/library";
	public boolean bool = false;
	
	public Mysql_connect() {
	}

	public void class_forname() {
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public boolean p_state_prepared(String name, String password)
			throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "select * from admin where admin_name=? and admin_password=?";
		p_state = con.prepareStatement(sql);
		p_state.setString(1, name);
		p_state.setString(2, password);
		result = p_state.executeQuery();
		bool=false;
		if (result.next()) {
			bool = true;
		} else {
			bool = false;
		}
		return bool;
	}

	public boolean p_state_prepared(String name) throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "select * from users where users_name=?";
		p_state = con.prepareStatement(sql);
		p_state.setString(1, name);
		
		result =p_state.executeQuery();
		while(result.next()){
			bool=true;
			break;
		}
		return bool;

	}
	
	public List<String> get_passwords(String name) throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "select * from users where users_name=?";
		List<String> list=new ArrayList<String>();
		p_state = con.prepareStatement(sql);
		p_state.setString(1, name);
		result = p_state.executeQuery();
		
		while(result.next()){
			list.add(result.getString("users_password"));
			list.add(result.getString("users_email"));
			break;
		}
		if(result!=null){
			result.close();
		}
		p_state.close();
		con.close();
		return list;

	}
	
	public String get_password(String name) throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "select * from users where users_name=? ";
		String password=null;
		//List<String> list=new ArrayList<String>();
		p_state = con.prepareStatement(sql);
		p_state.setString(1, name);
		result = p_state.executeQuery();
		while(result.next()){
			password=result.getString("users_password");
			break;
		}
		if(result!=null){
			result.close();
		}
		p_state.close();
		con.close();
		return password;

	}

	public boolean p_state_insert(String users_name, String users_password,
			String users_email, String users_sex,String users_in) throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "insert into users (users_name,users_password,users_email,users_sex,users_in,users_grades,users_vip)values(?,?,?,?,?,?,?)";
		p_state=con.prepareStatement(sql);
		p_state.setString(1,users_name);
		p_state.setString(2,users_password);
		p_state.setString(3,users_email);
		p_state.setString(4,users_sex);
		p_state.setString(5,users_in);
		p_state.setInt(6,10);
		p_state.setString(7,"no");
		p_state.execute();	
		return true;
	}
	

	public boolean p_state_update(String users_name, String users_password,
			String users_email, String users_sex,String users_in,String users_names) throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "update users set users_name=? ,users_password=? ,users_email=? ,users_sex=? ,users_in=? where users_name=? ";
		p_state=con.prepareStatement(sql);
		p_state.setString(1,users_name);
		p_state.setString(2,users_password);
		p_state.setString(3,users_email);
		p_state.setString(4,users_sex);
		p_state.setString(5,users_in);
		p_state.setString(6,users_names );
		//p_state.setInt(7,50);
		p_state.executeUpdate();
		return true;
	}
	

	public void insert_close() throws SQLException {
		p_state.close();
		con.close();
	}
	
	public void close() throws SQLException {
		result.close();
		p_state.close();
		con.close();
	}
}

/*
 * /public Statement state=null; /
 * 
 * public static void main(String args[]){ Mysql_connect my=new Mysql_connect();
 * my.class_forname(); my.p_state_prepared("123", "123"); } }
 */
