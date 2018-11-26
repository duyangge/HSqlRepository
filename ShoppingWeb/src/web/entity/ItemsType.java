package web.entity;

import java.io.Serializable;

/**商品类型
 * @author 黄信胜
 * @date 2018年11月21日下午5:07:21
 * @version 版本号
 */
@SuppressWarnings("all")
public class ItemsType implements Serializable{
	private Integer tid;//商品类型id
	private String titleTop;//商品
	private String more;//更多
	private String brandTitleOne;//商标标题一
	private String brandTitleSecond;//商标标题二
	public String getBrandTitleOne() {
		return brandTitleOne;
	}
	public void setBrandTitleOne(String brandTitleOne) {
		this.brandTitleOne = brandTitleOne;
	}
	public String getBrandTitleSecond() {
		return brandTitleSecond;
	}
	public void setBrandTitleSecond(String brandTitleSecond) {
		this.brandTitleSecond = brandTitleSecond;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getTitleTop() {
		return titleTop;
	}
	public void setTitleTop(String titleTop) {
		this.titleTop = titleTop;
	}
	public String getMore() {
		return more;
	}
	public void setMore(String more) {
		this.more = more;
	}
	@Override
	public String toString() {
		return "ItemsType [tid=" + tid + ", titleTop=" + titleTop + ", more=" + more + ", brandTitleOne="
				+ brandTitleOne + ", brandTitleSecond=" + brandTitleSecond + "]";
	}

}
