package dbc;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;


public class DatabaseConnection {
	private static final String url="org.gjt.mm.mysql.Driver";
	private static final String DBURL="jdbc:mysql://localhost:3306/users";
	private Connection con=null;
	public DatabaseConnection() throws SQLException{
		try {
			Class.forName(url);
			this.con=DriverManager.getConnection(DBURL,"root","123");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public Connection getConnection(){
		return this.con;
	}
	public void close()throws Exception{
		if(this.con!=null){
			try{
				this.con.close();
			}
			catch(Exception e){
				throw e;
			}
		}
		
	}
}
