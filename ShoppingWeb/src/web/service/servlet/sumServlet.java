package web.service.servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.service.bean.Items;
import web.service.dao.BaseDao;

public class sumServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String goodname=request.getParameter("goodname");
			String tablename=request.getParameter("tablename");
			BaseDao bd=new BaseDao();
			System.out.println("进入sumindexservlet");
			ArrayList<Items> goodlist=bd.SeacherGoodName(goodname,tablename);
			request.getSession().setAttribute("goodlist", goodlist);
			System.out.println("goodlist.size:"+goodlist.size());
			request.setAttribute("tablename", "goods");
			request.getRequestDispatcher("SumSeacher.jsp").forward(request, response);
			bd.CloseSource();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
