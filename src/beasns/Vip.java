package beasns;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Vip {
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
	
	public boolean kaitong(String users_name) throws SQLException{
		con=DriverManager.getConnection(url, "root", "root");
		String sql="update users set users_vip=? where users_name=?";
		String sqln="select * from users where users_name=? and users_vip='ok' ";
		boolean bool=true; 
		
		p_state=con.prepareStatement(sqln);
		p_state.setString(1,users_name);
		result=p_state.executeQuery();
		while(result.next()){
			bool=false;
		}
		result.close();
		
		if(bool==true){
			p_state=con.prepareStatement(sql);
			p_state.setString(1,"ok");
			p_state.setString(2,users_name);
			p_state.executeUpdate();
		}
		
		p_state.close();
		con.close();
		
		return bool;
	}
	public boolean decrease(String users_name,int books_limit) throws SQLException{
		boolean bool=true;
		con=DriverManager.getConnection(url, "root", "root");
		String sql="select * from users where users_name=? ";
		int users_grades=0;
		p_state=con.prepareStatement(sql);
		p_state.setString(1, users_name);
		result=p_state.executeQuery();
		while(result.next()){
			if(result.getString("users_vip").equals("ok")){
				bool=true;//是会员
			}
			else{
				users_grades=result.getInt("users_grades");//不是
				bool=false;
			}
		}
		result.close();
		if(bool==false){//不是
			String sqln="update users set users_grades=? where users_name=?";
			if((users_grades-books_limit)>=0){
				users_grades=users_grades-books_limit;
				p_state=con.prepareStatement(sqln);
				p_state.setInt(1,users_grades);
				p_state.setString(2, users_name);
				p_state.executeUpdate();
				bool=true;
			}
		}
		p_state.close();
		return bool;
	}
	public boolean xiugai(String users_name,int books_limit) throws SQLException{
		boolean bool=true;
		con=DriverManager.getConnection(url, "root", "root");
		String sql="select * from users where users_name=? ";
		int users_grades=0;
		p_state=con.prepareStatement(sql);
		p_state.setString(1, users_name);
		result=p_state.executeQuery();
		while(result.next()){
			users_grades=result.getInt("users_grades");
		}
		result.close();
		String sqln="update users set users_grades=? where users_name=?";
			users_grades=users_grades-books_limit;
			p_state=con.prepareStatement(sqln);
			p_state.setInt(1,users_grades);
			p_state.setString(2, users_name);
			p_state.executeUpdate();
			bool=true;
		
		p_state.close();
		return bool;
	}
	public int chaxun(String users_name) throws SQLException{
		//boolean bool=false;
		con=DriverManager.getConnection(url, "root", "root");
		String sql="select * from users where users_name=? ";
		int users_grades=0;
		p_state=con.prepareStatement(sql);
		p_state.setString(1, users_name);
		result=p_state.executeQuery();
		while(result.next()){
			users_grades=result.getInt("users_grades");
		}
		
		result.close();
		p_state.close();
		return users_grades;
	}
	
	
}

