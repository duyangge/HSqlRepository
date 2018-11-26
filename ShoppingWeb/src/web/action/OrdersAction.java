package web.action;

import java.util.Date;

import web.Intermediate.ShowPage;
import web.entity.Orders;
import web.entity.ShippingAddress;
import web.entity.User;
import web.servicce.OrdersService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


/**对客户订单信息的各种操作
 * @author 黄信胜
 * @date 2018年11月20日下午8:35:47
 * @version 版本号
 */
@SuppressWarnings("all")
public class OrdersAction extends ActionSupport implements ModelDriven<Orders>{
  private OrdersService ordersService;
  private ShowPage showPage;
  private ActionContext con = ActionContext.getContext();
  private Orders orders = new Orders();
  private ShippingAddress shippingAddress;
  private String gidlist;
  
  public void setGidlist(String gidlist) {
	this.gidlist = gidlist;
 }
  public String getGidlist() {
	return gidlist;
 }

  public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
  }
  public OrdersService getOrdersService() {
	return ordersService;
  }
  public void setOrdersService(OrdersService ordersService) {
	this.ordersService = ordersService;
  }
  public ShowPage getShowPage() {
	return showPage;
  }
  public void setShowPage(ShowPage showPage) {
	this.showPage = showPage;
  }
  public Orders getModel() {
  	// TODO Auto-generated method stub
  	return orders;
  }
  
  /**
   * 查看订单
   * @return 返回字符串”lookorders“
   */
  public String lookOrders() {
	 con.getSession().put("orderList", ordersService.lookOrders(((User)(con.getSession().get("user"))).getUid()));
	return "lookOrders";
  }
  

  /**
   *添加订单
   * 1.得到用户id，商品id，商品数量，商品总金额
   * 2.确定下单时间
   * 3.检查是否填写收货信息,没有填写转到收货信息页面再提交，已填，直接保存
   * 4.选择是否马上付款（付款：1，未付:0） 
   * @return 返回字符串"lookOrders"
   */
  public String addOrders() {
	/*  String [] gidList=gidlist.split(",");
	  for (String string : gidList) {
	}*/
	  orders.setDate(new Date());
	  orders.setUid(((User)(con.getSession().get("user"))).getUid());
	  orders.setUser((User)(con.getSession().get("user")));
	  orders.setOrderStatus(0);
	  ordersService.addOrders(orders);
	  if (!this.checkShippingAddress(((User)(con.getSession().get("user"))).getUid())) {
		  con.getSession().put("orders", orders);
		  return "writeaddress";
	  }
	  return "lookOrders";
  }
  
  /**
   * 检查是否填写收货地址
   * @param uid 用户id
   * @return true:存在该用户；false:不存在该用户
   */
  public Boolean checkShippingAddress(Integer uid) {
	if (ordersService.checkShippingAddress(uid) != null) return true;
	return false;
  }
  
 
 /**
  * 保存地址
  * 1.保存地址后，提示是否选择付款
  * 付款：1,修改订单信息中的状态
  * 未付款:0，
  * 2.回到查看订单页面 
  * @return 
  */
  public String saveShippingAddress() {
	  
	  
	return "success";
  }
  
  /**
   * 更新收货信息
   * @return
   */
  public String updateShippingAdress() {
	return null;
	  
  }
  
  /**
   * 下单后选择是否付款
   * @return
   */
  public String payOrNot() {
	return null;
	  
  }
  
  /**
   * 删除订单（未付款）
   * @return
   */
  public String delOrders() {
	return null;
  }
  

}
