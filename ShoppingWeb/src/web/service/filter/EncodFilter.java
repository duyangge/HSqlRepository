package web.service.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class EncodFilter implements Filter {
		
    public EncodFilter() {
       
    }
	public void init(FilterConfig fConfig) throws ServletException {
		
		}
	public void destroy() {
		
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse res=(HttpServletResponse)response;
		req.setCharacterEncoding("utf-8");
		res.setContentType("text/html;charset=utf-8");
		chain.doFilter(request, response);//放行
	}


}
