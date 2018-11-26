package web.entity;

import java.io.Serializable;

/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:38:41
 * @version 版本号
 */
@SuppressWarnings("all")
public class ShippingAddress implements Serializable{
	private Integer aid;//
	private Integer uid;//用户id
	private String consignee;//收货人
	private String phone;//联系电话
	private String postcode;//邮政编号
	private String remark;//商品备注
	private String shippingaddress;//收货地址
	
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getShippingaddress() {
		return shippingaddress;
	}
	public void setShippingaddress(String shippingaddress) {
		this.shippingaddress = shippingaddress;
	}
	@Override
	public String toString() {
		return "ShippingAddress [aid=" + aid + ", uid=" + uid + ", consignee="
				+ consignee + ", phone=" + phone + ", postcode=" + postcode
				+ ", remark=" + remark + ", shippingaddress=" + shippingaddress
				+ "]";
	}
}
