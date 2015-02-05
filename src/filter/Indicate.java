package filter;


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
public class Indicate implements Filter {
	
	public void init(FilterConfig config)
          throws ServletException{
		
		
	}
	public void doFilter(ServletRequest request,
              ServletResponse response,
              FilterChain chain)
              throws IOException,
                     ServletException{
	//	String users_name=request.getParameter("users_name");
		String user_name=(String) ((HttpServletRequest) request).getSession().getAttribute("users_name");
		//String users_password=request.getParameter("users_password");
		//boolean bool=false;
		boolean bool1=false;
		
		UsersDAO dao=new UsersDAO();
		Session session=dao.getSession();
		Transaction trans=session.beginTransaction();
		Users user=new Users();
		//Iterator iter=dao.findByUsersName(users_name).iterator();
		Iterator iter1=dao.findByUsersName(user_name).iterator();
		
	/*	while(iter.hasNext()){
			user=(Users)iter.next();
			bool=true;
			break;
		}*/
		while(iter1.hasNext()){
			user=(Users)iter1.next();
			bool1=true;
			break;
		}
	
		
		trans.commit();
		session.close();
		
		if(bool1==false){
			((HttpServletResponse) response).sendRedirect("/book/errors/errors2.jsp");
		}
		else{
			chain.doFilter(request,response) ;
		}
		
		
		
		
		
	}
	public void destroy(){
	}
}

