package beasns;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

public class Books_load {
	String url = "jdbc:mysql://localhost:3306/library";
	Connection con = null;
	java.sql.PreparedStatement p_state = null;

	public void class_forname() {
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public boolean state_insert(String interest, String books_name,
			String books_tag, String books_author, String books_storagetime,
			String books_path,String books_pic,String books_limit,String books_uploader) throws SQLException {
		con = DriverManager.getConnection(url, "root", "root");
		int limit=Integer.parseInt(books_limit);
		String sql = "insert into "
				+ interest
				+ "(books_name,books_tag,books_author,books_storagetime,books_path,books_pic,books_limit,books_uploader) values (?,?,?,?,?,?,?,?)";

		p_state = con.prepareStatement(sql);
		// p_state.setString(1, interest);
		p_state.setString(1, books_name);
		p_state.setString(2, books_tag);
		p_state.setString(3, books_author);
		p_state.setString(4, books_storagetime);
		p_state.setString(5, books_path);
		p_state.setString(6, books_pic);
		p_state.setInt(7, limit);
		p_state.setString(8, books_uploader);
		p_state.execute();
		
		String sqln="UPDATE users SET users_grades=users_grades+2 WHERE users_name=? ";
		p_state=con.prepareStatement(sqln);
		p_state.setString(1,books_uploader);
		p_state.execute();
		p_state.close();
		con.close();
		return true;
	}

	@SuppressWarnings("unused")
	public List<String> path(String books_name, String files_form)
			throws SQLException {

		con = DriverManager.getConnection(url, "root", "root");
		String sql ="SELECT * FROM "+files_form+" WHERE books_name LIKE '%"+books_name+"%' or  books_author LIKE '%"+books_name+"%' or  books_uploader LIKE '%"+books_name+"%'";
		p_state = con.prepareStatement(sql);
		ResultSet result = null;
		//p_state.setString(1,books_name );
		result = p_state.executeQuery();
		//String books_path[] = new String[89];
		List<String> paths = new ArrayList<String>();
		while (result.next()) {
			/*paths.add(result.getString("books_name"));
			paths.add(result.getString("books_path"));
			paths.add(Integer.toString(result.getInt("books_limit")));*/
			
			paths.add(result.getString("books_name"));//0
			paths.add(result.getString("books_tag"));//1
			paths.add(result.getString("books_author"));//2
			paths.add(result.getString("books_amount"));//3
			paths.add(result.getString("books_storagetime"));//4
			paths.add(result.getString("books_path"));//5
			paths.add(result.getString("books_text"));//6
			paths.add(result.getString("books_pic"));//7
			paths.add(result.getString("books_xiazai"));//8
			paths.add(result.getString("books_limit"));//9
		}

		result.close();
		p_state.close();
		con.close();
		return paths;
	}

	
	public void add_xiazai(String books_name,String interest,boolean bool) throws SQLException{
		
		ResultSet results = null;
		String sql=null;
		String sqln=null;
		con = DriverManager.getConnection(url, "root", "root");
		if(bool==true){
			sql="select books_xiazai from "+interest+" where books_name=?" ;
			sqln="update "+ interest+" set books_xiazai=? where books_name=?";
		}
		else{
			sql="select books_amount from "+interest+" where books_name=?" ;
			sqln="update "+ interest+" set books_amount=? where books_name=?";
		}
		//String sql="select books_xiazai from "+interest+" where books_name=?" ;
		//String sql_add=
		p_state=con.prepareStatement(sql);
		p_state.setString(1, books_name);
		results=p_state.executeQuery();
		int count=0;
		while(results.next()){
			if(bool==true){
			count=results.getShort("books_xiazai");}
			else{
				count=results.getShort("books_amount");
			}
		}
		count++;
	//	String sqln="update "+ interest+" set books_xiazai=? where books_name=?";
	//	String sqln_add=
		p_state=con.prepareStatement(sqln);
		p_state.setInt(1, count);
		p_state.setString(2, books_name);
		p_state.executeUpdate();
		p_state.close();
		con.close();
	}
	
	/*public void add_amount(String books_name,String interest){
		
	}
	*/
	

	public void close_p() throws SQLException {
		p_state.close();
		con.close();
	}
	

}
/*
	public static void main(String args[]){
		Books_load load=new Books_load();
		load.class_forname();
		try {
			List<String> info=load.path("as", "math");
			Iterator<String> it=info.iterator();
			while(it.hasNext()){
				System.out.println(it.next());
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void main(String args[]){
		Books_load load=new Books_load();
		load.class_forname();
		try {
			List<String> info=load.path("as", "math");
			Iterator<String> it=info.iterator();
			while(it.hasNext()){
				System.out.println(it.next());
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
*/









