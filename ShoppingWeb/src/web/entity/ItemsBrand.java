package web.entity;

import java.io.Serializable;

/**商标类
 * @author 黄信胜
 * @date 2018年11月20日下午8:38:15
 * @version 版本号
 */
@SuppressWarnings("all")
public class ItemsBrand implements Serializable{
	private Integer bid;//商标id
	private Integer tid;//商品类型id
	private String imageSrc;//商标图片路径
	public Integer getbid() {
		return bid;
	}
	public void setbid(Integer bid) {
		this.bid = bid;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getImageSrc() {
		return imageSrc;
	}
	public void setImageSrc(String imageSrc) {
		this.imageSrc = imageSrc;
	}
	@Override
	public String toString() {
		return "ItemsBrand [bid=" + bid + ", tid=" + tid + ", imageSrc=" + imageSrc + "]";
	}
	

}
