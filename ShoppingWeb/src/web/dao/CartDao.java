package web.dao;

import java.util.List;

import web.Intermediate.CartItems;
import web.entity.Cart;
import web.entity.ShowPage;
import web.entity.User;

public interface CartDao {
		void addCart(Cart cart);
		List<CartItems> lookCart(User user,Integer firstResult,Integer maxResult);
		List<Cart> checkExistItems(Integer uid, Integer gid);
		void deleCart(Integer uid, Integer gid);
		void SaveCart(Cart cart);
		Integer statisticalCarts(Integer uid);
}
