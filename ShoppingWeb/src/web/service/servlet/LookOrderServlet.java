package web.service.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.bean.Items;
import web.service.dao.BaseDao;

public class LookOrderServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			BaseDao bd=new BaseDao();
			String name=(String) request.getSession().getAttribute("name");
			if(name!=null){
				Map<Integer,Items> buylist=bd.showBuyOrder(name,"myuserorder", "myorder","goods");
				request.setAttribute("buylist", buylist);
				request.getRequestDispatcher("myorder.jsp").forward(request, response);
			}else {
				response.sendRedirect("login.jsp");
			}
			bd.CloseSource();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
