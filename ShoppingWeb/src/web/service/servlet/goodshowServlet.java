package web.service.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.bean.Items;
import web.service.dao.BaseDao;

public class goodshowServlet extends HttpServlet {


	public  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tablename=request.getParameter("tablename");
		try {
			BaseDao bd=new BaseDao();
			ArrayList<Items> items=bd.selectgoods(tablename);
			request.getSession().setAttribute("items", items);
			request.getSession().setAttribute("tablename", tablename);
			bd.CloseSource();
			request.getRequestDispatcher("mansheetshow.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
