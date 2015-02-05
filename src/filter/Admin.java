package filter;


import hibernate.AdminDAO;

import hibernate.BaseHibernateDAO;
import hibernate.Users;
import hibernate.UsersDAO;

import javax.servlet.Filter;

import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.FilterChain;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
//设置验证用户的过滤器
public class Admin implements Filter {
	
	public void init(FilterConfig config)
          throws ServletException{
		
		
	}
	public void doFilter(ServletRequest request,
              ServletResponse response,
              FilterChain chain)
              throws IOException,
                     ServletException{
		String Admin_name=(String) ((HttpServletRequest) request).getSession().getAttribute("admin_name");
		
		boolean bool=false;
		Admin admin=new Admin();
		AdminDAO dao=new AdminDAO();
		Session session=dao.getSession();
		Transaction trans=session.beginTransaction();
		
		Iterator iter =dao.findByAdminName(Admin_name).iterator();
		while(iter.hasNext()){
			bool=true;
			break;
		}
		if(bool==true){
			chain.doFilter(request,response) ;
		}
		else{
			((HttpServletResponse) response).sendRedirect("/book/errors/errors2.jsp");
		}
		
		trans.commit();
		session.close();
	
	}
	public void destroy(){
	}
}