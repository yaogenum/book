package com.db;

import java.sql.*; 

public class MySQLDB {
	private String dbDriver = "org.gjt.mm.mysql.Driver";
	private String dbUrl = "jdbc:mysql://localhost:3306/library";
	private String dbUser = "root";
	private String dbPassword = "root";
	private Statement stmt = null;
	private Connection conn = null;
	private ResultSet rs = null;

	public MySQLDB() throws Exception {
		try {
			Class.forName(dbDriver);

		} catch (Exception e) {
			System.out.println("连接失败");
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		try {
			this.conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
		} catch (SQLException e) {
			System.out.println("连接失败");
			this.conn = null;
			e.printStackTrace();
		}
		return this.conn;
	}

	public ResultSet executeQuery(String sql){
		try{
			conn = this.getConnection();
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, 
					ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(sql);
		}catch(SQLException ex){
			System.err.println(ex.getMessage());
		}
		return rs;
	}
	
	public int executeUpdate(String sql){
		int result = 0;
		try{
			conn = getConnection();
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			result = stmt.executeUpdate(sql);
		}catch(SQLException ex){
			ex.printStackTrace();
			result = 0;
		}
		return result;
	}
	
	public void close() throws Exception {
		if (this.conn != null) {
			try {
				this.conn.close();
			} catch (Exception e) {
				System.out.println("连接失败");
				e.printStackTrace();
			}
		}
	}
	
}