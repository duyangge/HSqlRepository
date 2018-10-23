package web.service.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.service.bean.Items;
import web.service.dao.BaseDao;
public class MyCartsServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			BaseDao bd = new BaseDao();
			String username=(String) request.getSession().getAttribute("name");
			String tablename=request.getParameter("tablename");
			ArrayList<Integer> ordernumberlist=bd.ShowOrderNumber(username,"goodorder");//通过用户名获取多个订单号
			HashMap<Integer,Items> cartItems=(HashMap<Integer, Items>) bd.showGoodOrder(ordernumberlist, tablename, "orderdetails");//通过订单号存储详细物品
			bd.CloseSource();
			request.getSession().setAttribute("cartItems", cartItems);//将从购物车得到的订单物品存在itemlist中
			request.getRequestDispatcher("mycart.jsp").forward(request, response);
			return;			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
