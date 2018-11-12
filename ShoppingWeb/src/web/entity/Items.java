package web.entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import web.service.dao.Connc3p0;
@SuppressWarnings("all")
public class Items {
	private Integer  gid;//物品id
	private String  gname;//名称
	private String gbrand;//品牌
	private String gintroduce;//介绍
	private double  gprice;//价格
	private String imgsrc;//图片路径
/*	private Cart cart;//购物车
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}*/
	public String getImgsrc() {
		return imgsrc;
	}
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getGbrand() {
		return gbrand;
	}
	public void setGbrand(String gbrand) {
		this.gbrand = gbrand;
	}
	public String getGintroduce() {
		return gintroduce;
	}
	public void setGintroduce(String gintroduce) {
		this.gintroduce = gintroduce;
	}
	public double getGprice() {
		return gprice;
	}
	public void setGprice(double gprice) {
		this.gprice = gprice;
	}
	@Override
	public String toString() {
		return "Items [gid=" + gid + ", gname=" + gname + ", gbrand=" + gbrand
				+ ", gintroduce=" + gintroduce + ", gprice=" + gprice + "]";
	}
	
}
