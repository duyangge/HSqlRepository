package web.action;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import web.Intermediate.CartItems;
import web.Intermediate.RecordPriceAndNum;
import web.Intermediate.ShowPage;
import web.entity.Cart;
import web.entity.User;
import web.servicce.CartService;

/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:35:06
 * @version 版本号
 */
@SuppressWarnings("all")
public class CartAction extends ActionSupport implements ModelDriven<Cart>{
	private  Cart cart = new Cart();
	private ActionContext con = ActionContext.getContext();
	private CartService cartService;
	private String[] gidlist;
	private String smallcounter;
	private boolean numcondition = true;
	private ShowPage showPage;
	public Cart getModel() {
		return cart;
	}
	
	public CartService getCartService() {
		return cartService;
	}
	
	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}
	
	public void setGidlist(String[] gidlist) {
		this.gidlist = gidlist;
	}
	
	public void setSmallcounter(String smallcounter) {
		this.smallcounter = smallcounter;
	}

	public String execute() throws Exception {
		return super.execute();
	}
	
	public void setShowPage(ShowPage showPage) {
		this.showPage = showPage;
	}
	
	public ShowPage getShowPage() {
		return showPage;
	}
	
	/**
	 * 查询购物车商品中是否存在该商品，有数量加+1，无添加该对象，
	 * @param uid 用户id
	 * @param gid 商品id
	 * @return true:说明表中该记录已存在；false:该记录不存在
	 */
	public boolean checkExistItems(Integer uid, Integer gid) {
		List<Cart> list = cartService.checkExistItems(uid, gid);
		if (list != null&&list.size() > 0) {
			Cart listCart = list.get(0);
			if (numcondition) {
				listCart.setGnum(listCart.getGnum() + cart.getGnum());
			} else {
				if (listCart.getGnum() - cart.getGnum() <= 0) {
					listCart.setGnum(1);
				} else {
					listCart.setGnum(listCart.getGnum() - cart.getGnum());
				}
			}
			cartService.saveCart(listCart);
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * 
	 * @param c1 需要保存的商品类
	 */
	public void saveCart(Cart c1) {
		cartService.saveCart(c1);
	}
	
	/**
	 * 添加商品
	 * @return 返回一个字符串“addCart"
	 * @throws ParseException 日期格式化异常
	 */
	public String addCart() throws ParseException {
		if (this.checkExistItems(((User)con.getSession().get("user")).getUid(), cart.getGid())){}//购物车存在该商品添加数量
		else {
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式  
			cart.setDate(df.parse(df.format(new Date())));
			cartService.addCart(cart);
		}
		return "addCart";
	}
	
	/**
	 * 查看购物车
	 * @return 返回一个字符串 ”lookCart"
	 */
	public String lookCart() {
		System.out.println("showpage:\t"+showPage.getCurrentpage());
		this.PagingProcess(cartService.statisticalCarts(((User)con.getSession().get("user")).getUid()).intValue());//总记录数
		List<CartItems> cartlist = cartService.lookCart((User)con.getSession().get("user"), showPage.getCurrentpage(), showPage.getPageSize());//购物表
		con.getSession().put("cartlist", cartlist);
		return "lookCart";
	}
	
	
	/**
	 * 统计用户购物车总数
	 * @return 返回 ”success"
	 */
	public String countAllCartItems(){
		if (cartService.countAllCartItems(((User) con.getSession().get("user")).getUid()) != null)
			con.getSession().put("countAllCartItems", cartService.countAllCartItems(((User) con.getSession().get("user")).getUid()));
		else
			con.getSession().put("countAllCartItems", 0);
		
		return "loadHome";
	}
	
	/**
	 * 分页处理
	 * @param totalRecords 传入总页数
	 */
	public void PagingProcess(Integer totalRecords) {
		showPage.setTotalpages((totalRecords % showPage.getPageSize() == 0) ? (totalRecords / showPage.getPageSize()) : ((totalRecords / showPage.getPageSize()) + 1));
		if (showPage.getCurrentpage() == 0) showPage.setCurrentpage(1);
		if (showPage.getCurrentpage() >= showPage.getTotalpages()) showPage.setCurrentpage(showPage.getTotalpages());
		con.getSession().put("showPage", showPage);
	}

	/**
	 * 删除商品
	 * @return 返回一个字符串 ”lookCart"
	 */
	public String deleCart() {
		for (String gid : gidlist) {cartService.deleCart(((User)con.getSession().get("user")).getUid(), Integer.parseInt(gid));}
		this.lookCart();
		return "lookCart";
	}
	
	//添加数量或者减少数量时，默认回到最后一页？
	
	/**
	 * 添加商品数量
	 * @return 返回一个字符串 ”lookCart"
	 */
	public String addCartNum() {
		this.checkExistItems(cart.getUid(), cart.getGid());
		this.lookCart();
		return "lookCart";
	}
	
	/**
	 * 减少商品数量
	 * @return 返回一个字符串 ”lookCart"
	 */
	public String decCartNum() {
		numcondition = false;
		this.checkExistItems(cart.getUid(), cart.getGid());
		numcondition = true;
		this.lookCart();
		return "lookCart";
	}

}
