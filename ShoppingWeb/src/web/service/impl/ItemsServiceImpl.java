package web.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import web.dao.ItemsDao;
import web.entity.Items;
import web.servicce.ItemsService;
@Transactional
@SuppressWarnings("all")
public class ItemsServiceImpl implements ItemsService{
	private ItemsDao itemsDao;
	public void setItemsDao(ItemsDao itemsDao) {
		this.itemsDao = itemsDao;
	}

	//点击查看商品列表
	public List<Items> inItemsList(String tablename) {
		
		return itemsDao.inItemsList(tablename);
	}

	@Override
	public List<Items> byIdinItems(String tablename, Items items) {
		// TODO Auto-generated method stub
		return null;
	}

	//进入物品详细页面
	public Items goDetailItems(String tablename, Integer gid) {
		
		return itemsDao.goDetailItems(tablename,gid);
	}

}
