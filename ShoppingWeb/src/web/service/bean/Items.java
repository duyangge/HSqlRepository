package web.service.bean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import web.service.dao.ConnDB;
import web.service.dao.Connc3p0;

public class Items implements Serializable{
	private int ordernumber;//物品数量
	private String  id;//物品id
	private String  name;//名称
	private String brand;//商标
	private String introduce;
	private double  price;
	private double pricing;
	private String imagesrc;
	private String time;
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getOrdernumber() {
		return ordernumber;
	}
	public void setOrdernumber(int ordernumber) {
		this.ordernumber = ordernumber;
	}
	public double getPricing() {
		return pricing;
	}
	public void setPricing(double pricing) {
		this.pricing = pricing;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getImagesrc() {
		return imagesrc;
	}
	public void setImagesrc(String imagesrc) {
		this.imagesrc = imagesrc;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int hashCode() {//由于key值唯一，重写hashCode
		final int prime=31;
		int result=1;
		result=prime *result+((id==null)? 0:id.hashCode());
		return result;
	}
	public boolean equals(Object obj) {//重写equals方法
		if(this==obj) {
			return true;
		}
		if(obj==null) {
			return false;
		}
		if(getClass()!=obj.getClass()) {
			return false;
		}
		Items others=(Items)obj;
		if(id==null) {
			if(others.id!=null) {
				return false;
			}
		} else if(!id.equals(others.id)) {
			return false;
		}
		return true;
	}
	public void seachId(String id) throws Exception {	
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				System.out.println("驱动程序失败"+e);
			}		
				Connection con;
				PreparedStatement ps;
				ResultSet rs;
				try {
					String sql="select * from goods";
					con=new Connc3p0().getConDB();
					ps=con.prepareStatement(sql);
					rs=ps.executeQuery();
					while(rs.next()) {
						if(rs.getString("Id").equals(id)) {
							this.setName(rs.getString("goodname"));
							this.setBrand(rs.getString("goodbrand"));
							this.setIntroduce(rs.getString("goodintroduce"));
							this.setPrice(rs.getDouble("goodprice"));
							this.setImagesrc(rs.getString("imagesrc"));
						}
					}
				} catch (SQLException e) {	
					System.out.println("连接mysql失败"+e);	
				}
			
	}	
}
