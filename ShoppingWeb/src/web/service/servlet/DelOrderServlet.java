package web.service.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.service.bean.MyCart;
import web.service.dao.BaseDao;

public class DelOrderServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {//删除订单
			BaseDao bd=new BaseDao();
			int  ordernumber=Integer.parseInt(request.getParameter("ordernumber"));
			MyCart mycart=new MyCart();
			mycart.setOrdernumber(ordernumber);
			mycart.setOrderusertable("myuserorder");
			mycart.setOrderdetailstable("myorder");
			bd.DelBuyOrder(mycart);
			bd.CloseSource();
			request.getRequestDispatcher("lookordersServlet").forward(request, response);
		} catch (Exception e) {
			System.out.println("delorderservler删除订单失败");
		}
	}

}
