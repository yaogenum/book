package hibernate_sql;

import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.HibernateSessionFactory;
import hibernate.UsersLog;
import hibernate.UsersLogDAO;

public class User_ip {
	public void set_ip(String ip){
		UsersLog user=new UsersLog();
		UsersLogDAO dao=new UsersLogDAO();
		Session session=dao.getSession();
		Transaction trans=session.beginTransaction();
	
		String sql="select com_time from users_log where com_id=? ";
		
		List<String> list=session.createSQLQuery(sql).addScalar("com_time").setString(0, ip).list();
		
		if(list.isEmpty()){
			user.setComId(ip);
			user.setComTime( new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(Calendar.getInstance().getTime()) );
			user.setComAgain("0");
			session.save(user);
		}
		else{
			user=dao.findById(ip);
			user.setComAgain( new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(Calendar.getInstance().getTime()));
			session.save(user);
			
		}
		
		
		trans.commit();
		session.close();
	}
	
}
