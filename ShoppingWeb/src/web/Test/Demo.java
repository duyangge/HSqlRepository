package web.Test;

import java.util.Date;

import org.junit.Test;

import com.opensymphony.xwork2.ActionContext;

import web.dao.OrdersDao;
import web.dao.impl.OrdersDaoImpl;
import web.entity.Orders;
import web.entity.User;
import web.servicce.OrdersService;
import web.service.impl.OrdersServiceImpl;
public class Demo {
	@Test
	public void test() {
		ActionContext con = ActionContext.getContext();
		OrdersService ordersService = new OrdersServiceImpl();
		OrdersDao orderDao =new OrdersDaoImpl();
		Orders orders=new Orders();
		 System.out.println(orders);
		  orders.setGid(orders.getGid());
		  orders.setDate(new Date());
		  orders.setUid(((User)(con.getSession().get("user"))).getUid());
		  orders.setOrderStatus(0);
		  System.out.println(orders);
		  ordersService.addOrders(orders);
		  System.out.println(orders);
		
	}
}