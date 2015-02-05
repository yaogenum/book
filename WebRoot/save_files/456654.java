package beasns;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Add_records {
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

	
	public void records(String users_name, String books_name, String leibie)
			throws SQLException { // 在这里保存用户离开时数据，包含累计阅读天数，不精准，最近一次阅读起始和末尾时间

		con = DriverManager.getConnection(url, "root", "root");
		String datetime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(Calendar.getInstance().getTime());
		boolean bool = false;
		String sqln = "select * from users_history where users_name=? and books_name=? ";
		String start_time=null;
		long active_time;
		pre = con.prepareStatement(sqln);
		pre.setString(1, users_name);
		pre.setString(2, books_name);
		result = pre.executeQuery();
		while (result.next()) {
			bool = true;
			start_time=result.getString("start_time");
			break;
		}
		if (bool) {// 已经存在数据重新再看了一遍,计算活跃时间，不准确
			try{
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date end = df.parse(datetime);
			Date start=df.parse(start_time);
			active_time=end.getTime()-start.getTime();
			active_time = active_time / (1000 * 60 * 60);
			}
			catch(Exception e){
				active_time=0;
			}
		
			sqln = "update users_history set read_status='ok',end_time=?,active_time=?  where users_name=? and books_name=? ";
			pre = con.prepareStatement(sqln);
			pre.setString(1, datetime);
			pre.setLong(2,active_time);
			pre.setString(3, users_name);
			pre.setString(4, books_name);
			pre.executeUpdate();
		} else {

			String sql = "insert into users_history (users_name,books_name,books_leibie,start_time,read_status)values(?,?,?,?,?)";
			pre = con.prepareStatement(sql);
			pre.setString(1, users_name);
			pre.setString(2, books_name);
			pre.setString(3, leibie);
			pre.setString(4, datetime);
			pre.setString(5, "no");
			pre.execute();
		}
		if (result != null) {
			result.close();
		}
		pre.close();
		con.close();
	}

}
