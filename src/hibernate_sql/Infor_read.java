package hibernate_sql;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.UsersHistory;
import hibernate.UsersHistoryDAO;
import hibernate.UsersMusic;
import hibernate.UsersMusicDAO;

public class Infor_read {
	
	public String get_read(String users_name,String interest){
		String leibie=null;
		
		UsersHistory his=new UsersHistory();
		UsersHistoryDAO dao=new UsersHistoryDAO();
		Session session=dao.getSession();
		Transaction trans=session.beginTransaction();
		String sql="select books_leibie,COUNT(books_leibie) as amount from users_history  WHERE users_name=? GROUP BY books_leibie ORDER BY amount DESC limit 1";
		
		List<String> list=session.createSQLQuery(sql).addScalar("books_leibie").setString(0, users_name).list();
		while(list.iterator().hasNext()){
			leibie=list.iterator().next();
			break;
		}
		if(leibie.endsWith(interest)){
			leibie="same";
		}
		
		trans.commit();
		session.close();
		
		return leibie;
	}
	
	public String get_music_leibie(String users_name,String interest){
		String leibie=null;
		
		UsersMusic his=new UsersMusic();
		UsersMusicDAO dao=new UsersMusicDAO();
		Session session=dao.getSession();
		Transaction trans=session.beginTransaction();
		String sql="select books_leibie,COUNT(books_leibie) as amount from users_music  WHERE users_name=? GROUP BY books_leibie ORDER BY amount DESC LIMIT 1";
		
		List<String> list=session.createSQLQuery(sql).addScalar("books_leibie").setString(0, users_name).list();
		while(list.iterator().hasNext()){
			leibie=list.iterator().next();
			break;
		}
		if(leibie.endsWith(interest)){
			leibie="same";
		}
		
		trans.commit();
		session.close();
		
		return leibie;
	}
	
	public void close(){
		
	}
	
	
	
	public static void main(String args[]){
		Infor_read read=new Infor_read();
		System.out.println(read.get_music_leibie("yaoge22", "it"));
	}
}
