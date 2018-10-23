package web.service.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.dao.BaseDao;

public class delcartServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ordernumber=Integer.parseInt(request.getParameter("ordernumber"));//获取订单号
		try {
			BaseDao bd=new BaseDao();
			if(bd.DelOrderNumber(ordernumber,"goodorder","orderdetails")) {
				request.getRequestDispatcher("mycartgoodServlet?tablename=goods").forward(request, response);
			}else {
				System.out.println("删除物品失败！");
			}
			bd.CloseSource();
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
