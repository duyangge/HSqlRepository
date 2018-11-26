package web.entity;

import java.io.Serializable;

/**首页商品描述
 * @author 黄信胜
 * @date 2018年11月21日下午5:20:27
 * @version 版本号
 */
@SuppressWarnings("all")
public class ItemsShowText implements Serializable{
	private Integer sid;//商品描述id
	private Integer tid;//商品类型id
	private String itemsShowImgSrc;//图片路径
	private String itemShowTextType;//商品描述类型
	private String itemShowTextIntro;//商品描述具体
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getItemsShowImgSrc() {
		return itemsShowImgSrc;
	}
	public void setItemsShowImgSrc(String itemsShowImgSrc) {
		this.itemsShowImgSrc = itemsShowImgSrc;
	}
	public String getItemShowTextType() {
		return itemShowTextType;
	}
	public void setItemShowTextType(String itemShowTextType) {
		this.itemShowTextType = itemShowTextType;
	}
	public String getItemShowTextIntro() {
		return itemShowTextIntro;
	}
	public void setItemShowTextIntro(String itemShowTextIntro) {
		this.itemShowTextIntro = itemShowTextIntro;
	}
	@Override
	public String toString() {
		return "ItemsShowText [sid=" + sid + ", tid=" + tid + ", itemsShowImgSrc=" + itemsShowImgSrc
				+ ", itemShowTextType=" + itemShowTextType + ", itemShowTextIntro=" + itemShowTextIntro + "]";
	}
	
}
