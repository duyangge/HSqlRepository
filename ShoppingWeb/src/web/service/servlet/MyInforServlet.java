package web.service.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.bean.user;
import web.service.dao.BaseDao;

public class MyInforServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			BaseDao bd=new BaseDao();
			user User=bd.getInfor((String)request.getSession().getAttribute("name"));
			request.setAttribute("User", User);
			request.setAttribute("logintime", bd.getTime());
			request.getRequestDispatcher("myinfor.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
