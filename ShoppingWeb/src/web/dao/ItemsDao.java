package web.dao;

import java.util.List;

import web.entity.Items;
import web.entity.ItemsBrand;
import web.entity.ItemsShowText;
import web.entity.ItemsType;


/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:37:01
 * @version 版本号
 */
public interface ItemsDao {
	
	/**点击商品显示
	 * 
	 * @param tid
	 * @return
	 */
	List<Items> inItemsList(Integer tid);
	
	/**
	 * 显示商品详情
	 * 
	 * @param gid 商品id
	 * @return 商品实体类对象
	 */
	Items goDetailItems(Integer gid);
	
	/**加载商品类型的图标
	 * @param tid  商品类型的id
	 * @return  商标实体类对象集合
	 */
	List<ItemsBrand> loadItemsImgBrand(Integer tid);
	
	/**
	 * 加载首页商品类型
	 * @param tid
	 * @return
	 */
	List<ItemsType> loadItemsType(Integer tid);

	/**
	 * 加载首页商品类的描述
	 * @param tid 商品类型的id
	 * @return 商品类型描述的实体类对象集合
	 */
	List<ItemsShowText> loadItemsShowText(Integer tid);

	
	
}
