package web.servicce;

import java.util.List;

import web.entity.Items;
import web.entity.ItemsBrand;
import web.entity.ItemsShowText;
import web.entity.ItemsType;


/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:40:27
 * @version 版本号
 */
public interface ItemsService {

	/**
	 * 点击商品显示
	 * 
	 * @param tid  商品类型id
	 * @return
	 */
	List<Items> inItemsList(Integer tid);
	
	/**
	 * 通过商品表名与商品id查询并返回该商品对象
	 * 
	 * @param gid 商品id
	 * @return 商品对象
	 */
    Items goDetailItems(Integer gid);
    
	/**加载首页商品类图标，并返回商品商标实体类对象
	 * @param tid  商品类型的id
	 * @return 返回商品商标实体类对象集合
	 */
	List<ItemsBrand> loadItemsBrand(Integer tid);
	
	/**
	 * 加载首页商品类型的
	 * @param tid 商品类型的id
	 * @return 商品类型的实体类集合
	 */
	List<ItemsType> loadItemsType(Integer tid);

	/**
	 * 加载首页商品图片
	 * @param tid 商品类型的id
	 * @return 商品类型的集合
	 */
	List<ItemsShowText> loadItemsShowText(Integer tid);
	
}
