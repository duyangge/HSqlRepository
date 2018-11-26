package web.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import web.dao.ItemsDao;
import web.entity.Items;
import web.entity.ItemsBrand;
import web.entity.ItemsShowText;
import web.entity.ItemsType;
import web.servicce.ItemsService;

/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:41:00
 * @version 版本号
 */
@SuppressWarnings("all")
public class ItemsServiceImpl implements ItemsService{
	private ItemsDao itemsDao;
	public void setItemsDao(ItemsDao itemsDao) {
		this.itemsDao = itemsDao;
	}

	/*点击查看商品列表
	 * (non-Javadoc)
	 * @see web.servicce.ItemsService#inItemsList(java.lang.String)
	 */
	public List<Items> inItemsList(Integer tid) {
		
		return itemsDao.inItemsList(tid);
	}

	/* (non-Javadoc)
	 * @see web.servicce.ItemsService#byIdinItems(java.lang.String, web.entity.Items)
	 */

	/* (non-Javadoc)进入物品详细页面
	 * @see web.servicce.ItemsService#goDetailItems(java.lang.String, java.lang.Integer)
	 */
	public Items goDetailItems(Integer gid) {
		return itemsDao.goDetailItems(gid);
	}

	/* (non-Javadoc)
	 * @see web.servicce.ItemsService#loadItemsImgBrand(web.entity.ItemsImgBrand)
	 */
	@Override
	public List<ItemsBrand> loadItemsBrand(Integer tid) {
		return itemsDao.loadItemsImgBrand(tid);
	}

	/* 
	 * (non-Javadoc)
	 * @see web.servicce.ItemsService#loadItemsType(java.lang.Integer)
	 */
	public List<ItemsType> loadItemsType(Integer tid) {
		return itemsDao.loadItemsType(tid);
	}

	/* (non-Javadoc)
	 * @see web.servicce.ItemsService#loadItemsShowText(java.lang.Integer)
	 */
	public List<ItemsShowText> loadItemsShowText(Integer tid) {
		
		return itemsDao.loadItemsShowText(tid);
	}



}
