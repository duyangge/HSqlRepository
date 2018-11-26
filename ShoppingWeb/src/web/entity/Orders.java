package web.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:38:32
 * @version 版本号
 */
@SuppressWarnings("all")
public class Orders implements Serializable{
	private Integer rid;//订单号
	private Integer uid;//用户id(外键)
	private Date date;//订单时间
	private Integer gnum;//商品数量
	private Integer gid;//商品id(外键)，一个订单有多个商品，一个商品只能归于一个订单
	private Double allMoney;//总金额
	private Integer orderStatus;//状态，付款与未付款
	private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Double getAllMoney() {
		return allMoney;
	}
	public void setAllMoney(Double allMoney) {
		this.allMoney = allMoney;
	}
	public Integer getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(Integer orderStatus) {
		this.orderStatus = orderStatus;
	}
	public Integer getGnum() {
		return gnum;
	}
	public void setGnum(Integer gnum) {
		this.gnum = gnum;
	}
	@Override
	public String toString() {
		return "Orders [rid=" + rid + ", uid=" + uid + ", date=" + date
				+ ", gnum=" + gnum + ", gid=" + gid + ", allMoney=" + allMoney
				+ ", orderStatus=" + orderStatus + ", user=" + user + "]";
	}

}
