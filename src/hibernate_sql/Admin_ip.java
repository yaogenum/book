package hibernate_sql;

import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;


import hibernate.AdminLog;
import hibernate.AdminLogDAO;
import hibernate.AdminLog;
import hibernate.AdminLogDAO;

public class Admin_ip {
	public void set_ip(String ip){
		AdminLog admin=new AdminLog();
		AdminLogDAO dao=new AdminLogDAO();
		Session session=dao.getSession();
		Transaction trans=session.beginTransaction();
	
		String sql="select com_time from Admin_log where com_id=? ";
		
		List<String> list=session.createSQLQuery(sql).addScalar("com_time").setString(0, ip).list();
		
		if(list.isEmpty()){
			admin.setComId(ip);
			admin.setComTime( new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(Calendar.getInstance().getTime()) );
			admin.setComAgain("0");
			session.save(admin);
		}
		else{
			admin=dao.findById(ip);
			admin.setComAgain( new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(Calendar.getInstance().getTime()));
			session.save(admin);
			
		}
		
		
		trans.commit();
		session.close();
		
	}
	
}
