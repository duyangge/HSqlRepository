package web.entity;


import java.io.Serializable;
import java.util.Date;
import java.util.Set;
/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:38:00
 * @version 版本号
 */
@SuppressWarnings("all")
public class Cart implements Serializable{
	private Integer cid;//购物车id
	private Integer gid;//商品id
	private Integer uid;//购物人
	private Integer gnum;//商品数量
	private Date date;//加入时间
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
