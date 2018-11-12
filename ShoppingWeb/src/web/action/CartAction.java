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
import web.entity.Cart;
import web.entity.ShowPage;
import web.entity.User;
import web.servicce.CartService;

@SuppressWarnings("all")
public class CartAction extends ActionSupport implements ModelDriven<Cart>{
	private  Cart cart=new Cart();
	private ActionContext con=ActionContext.getContext();
	private CartService cartService;
	private String[] gidlist;
	private String smallcounter;
	private boolean numcondition=true;
	private ShowPage showPage=new ShowPage();
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
	
			/*购物车中的商品操作*/
	
	//查询购物车商品中是否存在该商品，有数量加+1，无添加该对象，
	public boolean checkExistItems(Integer uid,Integer gid){
		List<Cart> list=cartService.checkExistItems(uid,gid);
		if(list!=null&&list.size()>0){
			Cart listCart=list.get(0);
			if(numcondition){
				listCart.setGnum(listCart.getGnum()+cart.getGnum());
			}else{
				if(listCart.getGnum()-cart.getGnum()<=0) {
					listCart.setGnum(1);
				}else {
					listCart.setGnum(listCart.getGnum()-cart.getGnum());
				}
			}
			cartService.saveCart(listCart);
			return true;
		}else{
			return false;
		}
	}
	
	//保存商品
	public void saveCart(Cart c1){
		cartService.saveCart(c1);
	}
	
	//添加商品
	public String addCart() throws ParseException{
		if(this.checkExistItems(((User)con.getSession().get("user")).getUid(), cart.getGid())){//购物车存在该商品添加数量
		}else{
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式  
			cart.setDate(df.parse(df.format(new Date())));
			cartService.addCart(cart);
		}
		return "addCart";
	}
	
	//查看购物车
	public String lookCart(){
		this.PagingProcess(cartService.statisticalCarts(((User)con.getSession().get("user")).getUid()));//总记录数
		Integer allCartCount=0;//计算总商品数
		List<CartItems> cartlist=cartService.lookCart((User)con.getSession().get("user"),showPage.getFirstposition(),showPage.getPageSize());//购物表
		for (CartItems cartItems : cartlist) {
			allCartCount+=cartItems.getGnum();
		}
		con.getSession().put("cartlist",cartlist);
		con.getSession().put("allCartCount", allCartCount);
		con.getSession().put("showPage", showPage);
		//默认选中的商品为0
		/*con.getSession().put("selCartNum", RecordPriceAndNum.getSumNum());//
		con.getSession().put("selCartprice",RecordPriceAndNum.getSumPrice());//selCartprice
*/		return "lookCart";
	}
	
	//分页处理
	public void PagingProcess(Integer totalRecords){
		//上一页：起始位置变化，页数-1
		//下一页：起始位置变化，页数+1
		//起始位置：（当前页-1）*每页最大记录数
		//总页数：（（总记录%每页记录数）==0）？（总记录/每页记录数）:(（总记录%每页记录数）+1)
		//默认当前页为1
		showPage.setFirstposition((showPage.getCurrentpage()-1)*showPage.getPageSize());
		showPage.setTotalpages((totalRecords%showPage.getPageSize()==0)?(totalRecords/showPage.getPageSize()):((totalRecords/showPage.getPageSize())+1));
	}
	
	//上下页
	
	//删除商品
	public String deleCart(){
		for (String gid : gidlist) {
			cartService.deleCart(((User)con.getSession().get("user")).getUid(),Integer.parseInt(gid));
		}
		this.lookCart();
		return "lookCart";
	}
	
	//添加商品数量
	public String addCartNum(){
		this.checkExistItems(cart.getUid(),cart.getGid());
		this.lookCart();
		return "lookCart";
	}
	
	//减少商品数量
	public String decCartNum(){
		numcondition=false;
		this.checkExistItems(cart.getUid(),cart.getGid());
		numcondition=true;
		this.lookCart();
		return "lookCart";
	}
	
/*	//统计选中的商品价格与数量
	public String selSumCart() {
		//价格smallcounter
		//数量gnum
		RecordPriceAndNum.setSumNum(RecordPriceAndNum.getSumNum()+cart.getGnum());
		System.out.println("小计数量：\t"+cart.getGnum());
		System.out.println("小计：\t"+smallcounter);
		RecordPriceAndNum.setSumPrice(RecordPriceAndNum.getSumPrice()+Double.parseDouble(smallcounter));
		con.getSession().put("selCartNum", RecordPriceAndNum.getSumNum());//
		con.getSession().put("selCartprice",RecordPriceAndNum.getSumPrice());//selCartprice
		return "lookCart";
	}*/
	
	/*//变化后，统计选中的商品价格与数量，初始值为0
	public String decSumCart() {
		if(RecordPriceAndNum.getSumNum()-cart.getGnum()<=0) {
			RecordPriceAndNum.setSumNum(0);
			RecordPriceAndNum.setSumPrice(0.0);
		}else {
			RecordPriceAndNum.setSumNum(RecordPriceAndNum.getSumNum()-cart.getGnum());
			RecordPriceAndNum.setSumPrice(RecordPriceAndNum.getSumPrice()-Double.parseDouble((String)(con.get("smallcounter"))));
		}
		con.getSession().put("selCartNum", RecordPriceAndNum.getSumNum());//
		con.getSession().put("selCartprice",RecordPriceAndNum.getSumPrice());//selCartprice
		return "lookCart";
	}*/
	

}
