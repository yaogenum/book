package filter;
import javax.servlet.Filter;

import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.FilterChain;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;
//ÉèÖÃ±àÂëµÄ¹ýÂËÆ÷
public class GB_encoding implements Filter {
	private String charSet ;
	public void init(FilterConfig config)
          throws ServletException{
		
		this.charSet = config.getInitParameter("charSet") ;	
	}
	public void doFilter(ServletRequest request,
              ServletResponse response,
              FilterChain chain)
              throws IOException,
                     ServletException{
		request.setCharacterEncoding(this.charSet) ;
		response.setCharacterEncoding(this.charSet);
		chain.doFilter(request,response) ;
		
	}
	public void destroy(){
	}
}
