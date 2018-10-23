package web.service.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.service.dao.BaseDao;

public class DelAllCartServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			BaseDao bd=new BaseDao();
			String username=(String) request.getSession().getAttribute("name");
			bd.DelAllOrderNumber(username,"goodorder");
			bd.CloseSource();
			request.getRequestDispatcher("mycartgoodServlet?tablename=goods").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
