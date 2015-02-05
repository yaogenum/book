package admin_sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Users_arranges {
	String url = "jdbc:mysql://localhost:3306/library";
	Connection con = null;
	ResultSet result = null;
	java.sql.PreparedStatement pre = null;
	String qudong = "org.gjt.mm.mysql.Driver";
	public int count = 0;

	public void class_forname() {
		try {
			Class.forName(qudong);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void delete_users(String users_name) throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "delete from users where users_name=? ";
		pre = con.prepareStatement(sql);
		pre.setString(1, users_name);
		pre.execute();
		pre.close();
		con.close();
	}

	public List<String> get_users() throws SQLException {
		List<String> list = new ArrayList<String>();
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "select * from users";
		pre = con.prepareStatement(sql);
		result = pre.executeQuery();
		while (result.next()) {
			list.add(result.getString("users_name"));
			list.add(result.getString("users_password"));
			list.add(result.getString("users_email"));
			list.add(result.getString("users_vip"));
			list.add(String.valueOf(result.getInt("users_grades")));
		}

		return list;
	}

	public List<String> get_books() throws SQLException {
		List<String> list = new ArrayList<String>();
		con = DriverManager.getConnection(url, "root", "root");
		String leibie = "economy";
		int i = 1;
		while (i != 8) {
			String sql = "select * from " + leibie + " ";
			pre = con.prepareStatement(sql);
			result = pre.executeQuery();
			while (result.next()) {
				list.add(leibie);
				list.add(result.getString("books_name"));
				list.add(result.getString("books_path"));
				list.add(result.getString("books_author"));
				list.add(result.getString("books_amount"));
				list.add(String.valueOf(result.getString("books_storagetime")));
				list.add(String.valueOf(result.getString("books_xiazai")));
				list.add(String.valueOf(result.getString("books_limit")));

			}
			if (i == 2) {
				leibie = "fiction";
			} else if (i == 3) {
				leibie = "it";
			} else if (i == 4) {
				leibie = "literature";
			} else if (i == 5) {
				leibie = "math";
			} else if (i == 6) {
				leibie = "scientist";
			} else if (i == 7) {
				leibie = "tool";
			}
			i++;
			pre.close();
		}

		con.close();
		return list;
	}

	public void delete(String books_name, String leibie) throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "delete from " + leibie + " where books_name=? ";
		pre = con.prepareStatement(sql);
		pre.setString(1, books_name);
		pre.execute();
	}

	public List<String> get_musics() throws SQLException {
		List<String> list = new ArrayList<String>();
		boolean bool = false;
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "select * from users_music ";
		pre = con.prepareStatement(sql);
		result = pre.executeQuery();
		while (result.next()) {
			list.add(result.getString("music_name"));
			list.add(result.getString("users_name"));
			list.add(result.getString("music_songer"));
			list.add(result.getString("music_time"));
			bool = true;
		}
		if (bool) {
			result.close();
		}

		pre.close();
		con.close();
		return list;
	}

	public void delete_music(String music_name, String users_name)
			throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "delete from users_music where music_name=? and users_name=? ";
		pre = con.prepareStatement(sql);
		pre.setString(1, music_name);
		pre.setString(2, users_name);
		pre.execute();
		pre.close();
		con.close();
	}

	public List<String> select_leibie() throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		List<String> list = new ArrayList<String>();
		String sql = "select books_leibie,count(*) AS count from users_music GROUP BY books_leibie ORDER BY count DESC ";
		pre = con.prepareStatement(sql);
		result = pre.executeQuery();
		while (result.next()) {
			list.add(result.getString("books_leibie"));
			list.add(String.valueOf(result.getInt("count")));
		}
		if (result != null) {
			result.close();
		}
		pre.close();
		con.close();
		return list;
	}

	public List<String> select_music() throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		List<String> list = new ArrayList<String>();
		String sql = "select music_name,count(*) AS count from users_music GROUP BY music_name order by count DESC limit 5";
		pre = con.prepareStatement(sql);
		result = pre.executeQuery();
		while (result.next()) {
			list.add(result.getString("music_name"));
			list.add(String.valueOf(result.getInt("count")));
		}

		if (result != null) {
			result.close();
		}

		pre.close();
		con.close();
		return list;
	}

	public List<String> select_all() throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		int array[] = new int[8];
		List<String> list = new ArrayList<String>();
		String leibie = "economy";
		int i = 0;
		while (i != 8) {
			String sql = "select count(books_name) as count from " + leibie
					+ " ";
			pre = con.prepareStatement(sql);
			result = pre.executeQuery();
			while (result.next()) {
				array[i] = result.getInt("count");

			}
			list.add(leibie);
			list.add(String.valueOf(array[i]));
			if (i == 1) {
				leibie = "fiction";
			} else if (i == 2) {
				leibie = "it";
			} else if (i == 3) {
				leibie = "literature";
			} else if (i == 4) {
				leibie = "math";
			} else if (i == 5) {
				leibie = "scientist";
			} else if (i == 6) {
				leibie = "tool";
			}
			i++;

		}
		for (i = 0; i < 8; i++) {
			count = array[i] + count;
		}
		if (result != null) {
			result.close();
		}
		pre.close();
		con.close();
		return list;
	}

}
