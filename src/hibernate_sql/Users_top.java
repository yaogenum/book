package hibernate_sql;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.Users;
import hibernate.UsersDAO;

public class Users_top {

	/**
	 * @param args
	 */
	public List<String> get_top(){
		UsersDAO dao=new UsersDAO();
		Users user=new Users();
		Session session=dao.getSession();
		Transaction trans=session.beginTransaction();
		String sql="select * from users ORDER BY users_grades DESC LIMIT 6 ";
		List<String> list=session.createSQLQuery(sql).addScalar("users_name").list();
		List<String> list1=session.createSQLQuery(sql).addScalar("users_grades").list();
		list.addAll(list1);
		return list;
	}
	
	public List<String> get_time(){
		UsersDAO dao=new UsersDAO();
		Users user=new Users();
		Session session=dao.getSession();
		Transaction trans=session.beginTransaction();
		String sql="SELECT DISTINCT(users_name),active_time from users_history where users_name!='сн©м' AND active_time!=0 ORDER BY active_time DESC LIMIT 6 ";
		List<String> list=session.createSQLQuery(sql).addScalar("users_name").list();
		List<String> list1=session.createSQLQuery(sql).addScalar("active_time").list();
		list.addAll(list1);
		return list;
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Users_top top=new Users_top();
		List<String> list=top.get_top();
		Iterator iter=list.iterator();
		while(iter.hasNext()){
			System.out.println(iter.next());
		}
	}

}
