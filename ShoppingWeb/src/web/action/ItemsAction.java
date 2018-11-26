package web.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import web.entity.Items;
import web.entity.ItemsBrand;
import web.entity.ItemsShowText;
import web.entity.ItemsType;
import web.servicce.ItemsService;

/**商品类操作
 * @author 黄信胜
 * @date 2018年11月20日下午8:35:21
 * @version 版本号
 */
@SuppressWarnings("all")
public class ItemsAction extends ActionSupport implements ModelDriven<Items>{
	private Items items = new Items();
	private ActionContext con = ActionContext.getContext();
	private ItemsService itemsService;
	private String key;
	public void setItemsService(ItemsService itemsService) {
		this.itemsService = itemsService;
	}
	@Override
	public Items getModel() {
		return items;
	}

	/**
	 * 通过商品类别id查询商品
	 * @return 返回字符串 “itemslist"
	 */
	public String inItemsList(){
		con.getSession().put("itemslist", itemsService.inItemsList(items.getTid()));
		return "itemslist";
	}
	
	/**
	 * 通过商品id进入商品详细页面
	 * @return 返回字符串 “detailitems"
	 */
	public String goDetailItems(){
		System.out.println("gid:\t"+items.getGid());
		System.out.println("detail:\t"+itemsService.goDetailItems(items.getGid()));
		con.getSession().put("detailItems", itemsService.goDetailItems(items.getGid()));
		return "detailitems";
	}
	/**
	 * 加载首页商标
	 * @return 
	 */
	public void loadItemsBrand() {
		con.getSession().put("manBrand", itemsService.loadItemsBrand(1));
		con.getSession().put("sportBrand", itemsService.loadItemsBrand(2));
	}
	
	/**
	 * 加载首页商品描述
	 * @return 
	 */
	public void loadItemsShowText(){
		con.getSession().put("manShowText", itemsService.loadItemsShowText(1));
		con.getSession().put("sportShowText", itemsService.loadItemsShowText(2));
	}
	
	/**
	 * 加载商品类型
	 * @return 
	 */
	public void loadItemsType() {
		con.getSession().put("manType", itemsService.loadItemsType(1).get(0));
		con.getSession().put("sportType", itemsService.loadItemsType(2).get(0));
	}
	
	/**
	 * 首页加载所有，加载完毕
	 * @return 
	 */
	public String loadAll() {
		this.loadItemsType();
		this.loadItemsBrand();
		this.loadItemsShowText();
		return SUCCESS;
	}
}
