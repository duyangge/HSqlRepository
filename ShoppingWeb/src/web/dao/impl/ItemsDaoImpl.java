package web.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import web.dao.ItemsDao;
import web.entity.Items;
@SuppressWarnings("all")
public class ItemsDaoImpl extends HibernateDaoSupport implements ItemsDao{

	@Override
	public List<Items> inItemsList(String tablename) {
		List<Items> list=(List<Items>) this.getHibernateTemplate().find("from "+tablename);
		return list;
	}

	@Override
	public List<Items> byIdinItems(String tablename, Items items) {
		// TODO Auto-generated method stub
		return null;
	}

	//点击显示商品详细页面
	public Items goDetailItems(String tablename, Integer gid) {
		List<Items> list=(List<Items>) this.getHibernateTemplate().find("from "+tablename+" where gid=?",gid);
		return list.get(0);
	}

}
