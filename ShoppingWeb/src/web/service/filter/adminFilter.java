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
public class adminFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse res=(HttpServletResponse)response;
		req.setCharacterEncoding("utf-8");
		res.setContentType("text/html;charset=utf-8");
		HttpSession session=req.getSession();
		String name=(String) session.getAttribute("name");
		String uri=req.getRequestURI();
		if(name!=null) {
			chain.doFilter(request, response);//放行
		}else{
			if(uri.contains("login.jsp")||uri.contains("connectionus.jsp")||uri.contains("resign.jsp")||uri.contains("sum.jsp")||uri.contains("showmessage.jsp")
					||uri.contains("submit.jsp")||uri.contains("viewpagers")||uri.contains("addcart.jsp")||uri.contains("SumSeacher.jsp")){
				chain.doFilter(request, response);//放行
			}else {
				request.getRequestDispatcher("login.jsp").forward(request, response);	
			}
			return;
		}	
	}
    public adminFilter() {
        // TODO Auto-generated constructor stub
    }

	public void destroy() {
		// TODO Auto-generated method stub
	}
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
