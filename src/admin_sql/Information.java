package admin_sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Information {
	String url = "jdbc:mysql://localhost:3306/library";
	Connection con = null;
	ResultSet result = null;
	java.sql.PreparedStatement pre = null;
	String qudong = "org.gjt.mm.mysql.Driver";

	public void class_forname() {
		try {
			Class.forName(qudong);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public List<String> select_limit(boolean bool) throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		List<String> list = new ArrayList<String>();
		String leibie = "economy";
		String sql = null;

		int i = 0;
		while (i != 8) {
			if (bool) {
				sql = "select books_name,books_xiazai from " + leibie
						+ " ORDER BY books_xiazai DESC LIMIT 3 " + " ";
			} else {
				sql = "select books_name,books_amount from " + leibie
						+ " ORDER BY books_amount DESC LIMIT 3 " + " ";
			}

			pre = con.prepareStatement(sql);
			result = pre.executeQuery();
			while (result.next()) {
				if (bool) {
					list.add(String.valueOf(result.getInt("books_xiazai")));
				} else {
					list.add(String.valueOf(result.getInt("books_amount")));
				}

				list.add(result.getString("books_name"));
				list.add(leibie);
			}

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
		if (result != null) {
			result.close();
		}
		pre.close();
		con.close();
		return list;
	}

	public List<String> get_pingjia() throws SQLException {
		List<String> list = new ArrayList<String>();
		con = DriverManager.getConnection(url, "root", "root");
		String sql = "select books_name,count(books_name) as count from pingjia GROUP BY books_name ORDER BY count DESC limit 5 ";
		pre = con.prepareStatement(sql);
		result = pre.executeQuery();
		while (result.next()) {
			list.add(String.valueOf(result.getInt("count")));
			list.add(result.getString("books_name"));

		}
		if (result != null) {
			result.close();
		}
		pre.close();
		con.close();
		return list;
	}

	public List<String> get_list(String flag) throws SQLException {// 以flag区分阅读书签音乐一个星期的访问记录
		List<String> list = new ArrayList<String>();
		String sql = "select * from (select MID(start_time,1,10) as time ,COUNT(start_time) as count  from users_history  GROUP BY time DESC limit 7)  as users_history ORDER BY users_history.time";
		if (flag.equals("two")) {
			sql = "select * from (select MID(tag_time,1,10) as time ,COUNT(tag_time) as count  from users_tags  GROUP BY time DESC limit 7)  as users_tags ORDER BY users_tags.time";
		}
		if (flag.equals("three")) {
			sql = "select * from (select MID(music_time,1,10) as time ,COUNT(music_time) as count  from users_music  GROUP BY time DESC limit 7)  as users_music ORDER BY users_music.time";
		}
		con = DriverManager.getConnection(url, "root", "root");
		pre = con.prepareStatement(sql);
		result = pre.executeQuery();
		while (result.next()) {
			list.add(result.getString("time"));
			list.add(String.valueOf(result.getInt("count")));
		}// 获取时间段和总计数
		if (result != null) {
			result.close();
		}
		pre.close();
		con.close();

		return list;
	}

	public List<String> users_information(String users_name)
			throws SQLException {
		List<String> list = new ArrayList<String>();
		con = DriverManager.getConnection(url, "root", "root");
		String leibie = "economy";

		int i = 0;
		while (i != 8) {
			String sql = "select * from (select MID(start_time,1,10) as time,count(?) as count from users_history where users_name=?  GROUP BY time ORDER BY time DESC limit 7) as users_history ORDER BY users_history.time";
			pre = con.prepareStatement(sql);
			pre.setString(1, leibie);
			pre.setString(2, users_name);
			result = pre.executeQuery();
			while (result.next()) {
				list.add(result.getString("time"));
				list.add(String.valueOf(result.getInt("count")));
			}
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
		if (result != null) {
			result.close();
		}
		pre.close();
		con.close();
		return list;
	}
}
