package web.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import web.Intermediate.CartItems;
import web.dao.CartDao;
import web.entity.Cart;
import web.entity.ShowPage;
import web.entity.User;
import web.servicce.CartService;
@Transactional
@SuppressWarnings("all")
public class CartServiceImpl implements CartService {
	private CartDao cartDao;
	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}

	//添加商品到购物车
	public void addCart(Cart cart) {
		cartDao.addCart(cart);
		
	}

	//查看购物车
	public List<CartItems> lookCart(User user,Integer firstResult,Integer maxResult) {
		return cartDao.lookCart(user,firstResult,maxResult);
	}

	//检查购物车中是否有重复商品
	public List<Cart> checkExistItems(Integer uid, Integer gid) {
		return cartDao.checkExistItems(uid, gid);
	}

	//修改商品数量
	public void saveCart(Cart cart) {
		 cartDao.SaveCart(cart);
		
	}

	//删除购物车中的商品
	public void deleCart(Integer uid, Integer gid) {
		cartDao.deleCart(uid,gid);
		
	}

	//统计用户购物车总记录数
	public Integer statisticalCarts(Integer uid) {
		
		return cartDao.statisticalCarts(uid);
	}
}
