package web.service.servlet;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.service.bean.Items;
import web.service.bean.MyCart;
import web.service.dao.BaseDao;

public class StorageTransferStationServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name=(String)request.getSession().getAttribute("name");//获取用户名
			String id=(String)request.getAttribute("id");
			int ordernumber=(int)request.getAttribute("ordernumber");//获取商品编号
			int number=(int)request.getAttribute("number");//获取商品数量
			Items item=new Items();//商品id
			item.setId(id);
			item.setOrdernumber(number);
			BaseDao bd = new BaseDao();
			Date date=new Date();//下单时间
			MyCart mycart=new MyCart();
			mycart.setItem(item);
			mycart.setOrdernumber(ordernumber);
			mycart.setTime(date.toLocaleString());
			mycart.setTablename("myuserorder");
			mycart.setOrderusertable("goodorder");
			mycart.setOrderdetailstable("orderdetails");
			mycart.setCartusertable("goodorder");
			mycart.setUsername(name);
			bd.GoOrder(mycart);
			bd.CloseSource();
			request.setAttribute("ordernumber", ordernumber);
			request.getRequestDispatcher("orderdetailform.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}//对商品的修改
	}
}
