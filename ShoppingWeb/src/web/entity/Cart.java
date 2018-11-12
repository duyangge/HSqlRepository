package web.entity;


import java.util.Date;
import java.util.Set;
@SuppressWarnings("all")
public class Cart {
	private Integer cid;//购物车id
	private Integer gid;//商品id
	private Integer uid;//购物人
	private Integer gnum;//商品数量
	private Date date;//加入时间
/*	private Set<Items> setitems;//加入商品
	public Set<Items> getSetitems() {
		return setitems;
	}
	public void setSetitems(Set<Items> setitems) {
		this.setitems = setitems;
	}*/
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Integer getGnum() {
		return gnum;
	}
	public void setGnum(Integer gnum) {
		this.gnum = gnum;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getDate() {
		return date;
	}

}
