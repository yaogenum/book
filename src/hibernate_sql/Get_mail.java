package hibernate_sql;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateSessionFactory;
import hibernate.Users;

public class Get_mail {
	@SuppressWarnings("unchecked")
	public String getmail(String users_name){
		String mail=null;
		Users user=new Users();
		List<Users> list=new ArrayList<Users>();
		
		Session session=HibernateSessionFactory.getSession();
		Transaction trans=session.beginTransaction();
		String sql="select users_email from users where users_name=? ";
		//list=session.createSQLQuery(sql).addEntity("Users",Users.class).setString(1,users_name).list();
		Query query=session.createQuery("update users set users_name='yaoge22' where users_name='yaoge33'");
		query.executeUpdate();
	
		trans.commit();
		session.close();
		return mail;
	}
	
}
