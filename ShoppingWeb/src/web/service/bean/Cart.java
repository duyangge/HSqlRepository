package web.service.bean;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:56:23
 * @version 版本号
 */
@SuppressWarnings("all")
public class Cart {
	
	private HashMap<Items,Integer> goods;//购物车商品的集合,键值对，一件商品对应着它的数量
	
	private double totalPrice;//购物车的总金额
	
	public HashMap<Items, Integer> getGoods() {
		return goods;
	}
	public void setGoods(HashMap<Items, Integer> goods) {
		this.goods = goods;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	//将商品添加进购物车
	public boolean addGoodsInCart(Items item,int number) {
		if(goods.containsKey(item)) {
			goods.put(item, goods.get(item)+number);
		}else {
			goods.put(item ,number);
		}
		calTotalPrice();
		return true;
	}
	//删除商品的方法
	public boolean removeGoodsFromCart(Cart item) {
		goods.remove(item);
		calTotalPrice();
		return true;
	}
	//统计购物车的总金额
	public double calTotalPrice() {
		double sum=0.0;
		Set<Items>keys=goods.keySet();
		Iterator<Items> its=keys.iterator();
		while(its.hasNext()) {
			Items i=its.next();
		sum+=i.getPrice() *goods.get(i);
		}
		this.setTotalPrice(sum);
		return this.getTotalPrice();
	}
}
