package beasns;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.sql.PreparedStatement;

public class Music_collect {
	public Connection con = null;
	public java.sql.PreparedStatement pre = null;
	public ResultSet result = null;
	public String url = "jdbc:mysql://localhost:3306/library";
	public String qudong = "org.gjt.mm.mysql.Driver";

	public void class_forname() {
		try {
			Class.forName(qudong);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void add_music(String users_name, String music_name,
			String music_songer, String books_name, String leibie)
			throws SQLException, UnsupportedEncodingException {
		con = DriverManager.getConnection(url, "root", "root");
		String datetime = new SimpleDateFormat("yyyy-MM-dd").format(Calendar
				.getInstance().getTime());
		String sqln = "select * from users_music WHERE users_name=? and music_name=? ";
		boolean bool = false;
		pre = con.prepareStatement(sqln);
		pre.setString(1, users_name);
		pre.setString(2, music_name);
		result = pre.executeQuery();

		while (result.next()) {
			bool = true;// 已经存在
		}
		if (bool == true) {

		} else {
			int hash = music_name.hashCode();
			String music_exit = "no";
			String sql = "insert into users_music (users_name,music_time,music_name,music_songer,books_name,books_leibie,music_exit,beijing_music) values(?,?,?,?,?,?,?,'no')";
			pre = con.prepareStatement(sql);
			pre.setString(1, users_name);
			pre.setString(2, datetime);
			pre.setString(3, music_name);
			pre.setString(4, music_songer);
			pre.setString(5, books_name);
			pre.setString(6, leibie);
			pre.setString(7, music_exit);
			pre.execute();
		}
		pre.close();
		con.close();
	}

	public void song_status(String users_name, String music_name)
			throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "update users_music set music_exit='ok' where users_name=? and music_name=?  ";
		pre = con.prepareStatement(sql);
		pre.setString(1, users_name);
		pre.setString(2, music_name);
		pre.executeUpdate();
		pre.close();
		con.close();
	}

	public List<String> get_read_music(String users_name) throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "select * from users_music where users_name=? and music_exit='ok' ";
		List<String> list = new ArrayList<String>();
		pre = con.prepareStatement(sql);
		pre.setString(1, users_name);
		result = pre.executeQuery();
		int hash=0;
		String path=null;
		while (result.next()) {
			list.add(result.getString("music_name"));
			
			list.add(result.getString("music_songer"));
			list.add(result.getString("music_time"));
			list.add(result.getString("beijing_music"));
			hash=result.getString("music_name").hashCode();
			path="music/"+String.valueOf(hash)+".mp3";
			list.add(path);
		}
		return list;
	}

	public boolean set_music(String users_name, String music_name)
			throws SQLException, UnsupportedEncodingException {
		boolean bool = false;

		con = DriverManager.getConnection(url, "root", "root");
		String sql = "update users_music set beijing_music='ok' where users_name=? and music_name=? ";
		String sqln = "update users_music set beijing_music='no' where users_name=? and music_name=? ";
		String sqls = "select music_name from users_music where users_name=? and beijing_music='ok' ";
		String music_names = null;
		pre = con.prepareStatement(sqls);
		pre.setString(1, users_name);

		result = pre.executeQuery();
		while (result.next()) {
			music_names = result.getString("music_name");
			break;
		}
		if (music_names == null) {
			// 说明原来没有设置背景音乐	
		} else {
			result.close();
			pre = con.prepareStatement(sqln);
			pre.setString(1, users_name);
			pre.setString(2, music_names);
			pre.execute();
			result.close();
		}
		pre = con.prepareStatement(sql);
		pre.setString(1, users_name);
		pre.setString(2, music_name);
		pre.executeUpdate();
		pre.close();
		con.close();
		bool = true;
		return bool;
	}
	public String beijing_music(String users_name) throws SQLException{
		String music_name="no";
		con=DriverManager.getConnection(url, "root","root");
		String sql="select music_name from users_music where users_name=? and beijing_music='ok' ";
		pre=con.prepareStatement(sql);
		pre.setString(1,users_name);
		result=pre.executeQuery();
		while(result.next()){
			music_name=result.getString("music_name");
			break;
		}
		
		return music_name;
	}
}
