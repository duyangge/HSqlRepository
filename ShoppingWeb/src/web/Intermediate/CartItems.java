package web.Intermediate;

import web.entity.Cart;
import web.entity.Items;
@SuppressWarnings("all")
public class CartItems {
	//select c.cid,c.gid,i.gname,i.gbrand,i.gintroduce,i.gprice,
	//i.imgsrc,c.gnum from Cart c,Item i where i.gid=c.gid and c.uid=20
	private Integer cuid;
	private Integer cid;
	private Integer gid;
	private Integer uid;
	private Integer gnum;
	private String gname;
	private String gbrand;
	private String gintroduce;
	private Double gprice;
	private String imgsrc;
	public Integer getCuid() {
		return cuid;
	}
	public void setCuid(Integer cuid) {
		this.cuid = cuid;
	}
	public CartItems(){
		super();
	}
	public CartItems(Integer cid, Integer gid, Integer uid, Integer gnum,
			String gname, String gbrand, String gintroduce, Double gprice,
			String imgsrc) {
		super();
		this.cid = cid;
		this.gid = gid;
		this.uid = uid;
		this.gnum = gnum;
		this.gname = gname;
		this.gbrand = gbrand;
		this.gintroduce = gintroduce;
		this.gprice = gprice;
		this.imgsrc = imgsrc;
	}
	
	public Integer getCid(){
		return cid;
	}

	public Integer getGid() {
		return gid;
	}

	public Integer getUid() {
		return uid;
	}

	public Integer getGnum() {
		return gnum;
	}

	public String getGname() {
		return gname;
	}

	public String getGbrand() {
		return gbrand;
	}

	public String getGintroduce() {
		return gintroduce;
	}

	public Double getGprice() {
		return gprice;
	}

	public String getImgsrc() {
		return imgsrc;
	}

	@Override
	public String toString() {
		return "CartItems [cid=" + cid + ", gid=" + gid + ", uid=" + uid
				+ ", gnum=" + gnum + ", gname=" + gname + ", gbrand=" + gbrand
				+ ", gintroduce=" + gintroduce + ", gprice=" + gprice
				+ ", imgsrc=" + imgsrc + "]";
	}
}