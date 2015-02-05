package beasns;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Books_pingjia {
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
		String datetime = new SimpleDateFormat("yyyy-MM-dd").format(Calendar
				.getInstance().getTime());
		String sql = "insert into pingjia (books_name,users_name,books_pingjia,datetime) values (?,?,?,?)";
		p_state = con.prepareStatement(sql);
		p_state.setString(1, books_name);
		p_state.setString(2, users_name);
		p_state.setString(3, books_pingjia);
		p_state.setString(4,datetime);
		p_state.execute();
		return true;
	}
}
