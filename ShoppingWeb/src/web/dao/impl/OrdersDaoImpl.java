package web.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import web.dao.OrdersDao;
import web.entity.Orders;
/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:37:45
 * @version 版本号
 */
@SuppressWarnings("all")
public class OrdersDaoImpl extends HibernateDaoSupport implements OrdersDao {

	@Override
	public void addOrders(Orders orders) {
		this.getHibernateTemplate().save(orders);
	}

	@Override
	public Orders checkShippingAddress(Integer uid) {
		List<Orders> list = (List<Orders>) this.getHibernateTemplate().find("from ShippingAddress where uid=?", uid);
		if (list != null && list.size() > 0) return list.get(0);
		return null;
	}

	@Override
	public List<Orders> lookOrders(Integer uid) {
		return (List<Orders>) this.getHibernateTemplate().find("from Orders where uid=?", uid);
	}

}
