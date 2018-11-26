package web.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import web.Intermediate.CartItems;
import web.Intermediate.ShowPage;
import web.dao.CartDao;
import web.entity.Cart;
import web.entity.User;
import web.servicce.CartService;
/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:40:54
 * @version 版本号
 */
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
	public List<CartItems> lookCart(User user, Integer currentPage, Integer maxResult) {
		return cartDao.lookCart(user, currentPage, maxResult);
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

	@Override
	public Long countAllCartItems(Integer uid) {
		return cartDao.countAllCartItems(uid);
	}

	@Override
	public Long statisticalCarts(Integer uid) {
		return cartDao.statisticalCarts(uid);
	}
}
