package web.service.bean;
/** * @author  作者 E-mail: * 
@date 创建时间：2018年6月28日 上午11:12:41 *
 @version 1.0 *
 @parameter  *
 @since  *
 @return  */
public class MyCart {
	private int ordernumber;
	private Items item;
	private int goodnumber;
	private String time;
	private String username;
	private String tablename;
	private String orderusertable;
	private String orderdetailstable;
	private String cartusertable;
	
	public String getCartusertable() {
		return cartusertable;
	}
	public void setCartusertable(String cartusertable) {
		this.cartusertable = cartusertable;
	}
	public String getOrderusertable() {
		return orderusertable;
	}
	public void setOrderusertable(String orderusertable) {
		this.orderusertable = orderusertable;
	}
	public String getOrderdetailstable() {
		return orderdetailstable;
	}
	public void setOrderdetailstable(String orderdetailstable) {
		this.orderdetailstable = orderdetailstable;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTablename() {
		return tablename;
	}
	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	public Items getItem() {
		return item;
	}
	public void setItem(Items item) {
		this.item = item;
	}

	public int getOrdernumber() {
		return ordernumber;
	}
	public void setOrdernumber(int ordernumber) {
		this.ordernumber = ordernumber;
	}
	public int getGoodnumber() {
		return goodnumber;
	}
	public void setGoodnumber(int goodnumber) {
		this.goodnumber = goodnumber;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}

}
