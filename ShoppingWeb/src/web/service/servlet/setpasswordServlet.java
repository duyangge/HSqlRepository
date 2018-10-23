package web.service.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.service.bean.user;
import web.service.dao.BaseDao;

public class setpasswordServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			BaseDao bd=new BaseDao();
			String username=(String)request.getSession().getAttribute("name");
			if(username=="") {
					response.sendRedirect("login.jsp");
					return;
			}
			String password=request.getParameter("passwrodone");
			user users=new user();
			users.setUsername(username);
			users.setPassword(password);
			if(bd.setPassword(users)) {
				request.getRequestDispatcher("setpassword.jsp").forward(request, response);
			}else {
				response.getWriter().print("修改密码失败");
			}
			bd.CloseSource();
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
