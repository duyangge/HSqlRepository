package web.servicce;

import java.util.List;

import web.Intermediate.CartItems;
import web.entity.Cart;
import web.entity.ShowPage;
import web.entity.User;

public interface CartService {
		void addCart(Cart cart);
		List<CartItems> lookCart(User user,Integer firstResult,Integer maxResult);
		List<Cart> checkExistItems(Integer uid, Integer gid);
		void saveCart(Cart listCart);
		void deleCart(Integer uid, Integer gid);
		Integer statisticalCarts(Integer uid);
		
}
