package web.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import web.Intermediate.CartItems;
import web.dao.CartDao;
import web.entity.Cart;
import web.entity.User;
/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:37:28
 * @version 版本号
 */
@SuppressWarnings("all")
public class CartDaoImpl extends HibernateDaoSupport implements CartDao {
	
	/*
	 * (non-Javadoc)
	 * @see web.dao.CartDao#addCart(web.entity.Cart)
	 */
	public void addCart(Cart cart) {
		this.getHibernateTemplate().save(cart);
	}
	
	/*
	 * (non-Javadoc)
	 * @see web.dao.CartDao#lookCart(web.entity.User, java.lang.Integer, java.lang.Integer)
	 * 
	 */
	public List<CartItems> lookCart(User user, Integer currentPage, Integer maxResult) {
		Query query = this.getHibernateTemplate().getSessionFactory().getCurrentSession().createQuery("select new web.Intermediate.CartItems(c.cid,c.gid,c.uid,c.gnum,i.gname,i.gbrand,i.gintroduce,i.gprice,i.imgsrc)"
				+ " from Cart c,Items i where i.gid=c.gid and c.uid=:uid");
		query.setParameter("uid", user.getUid());
		query.setFirstResult((currentPage - 1) * maxResult);
		query.setMaxResults(maxResult);
		return query.list();	
	}
	
	/*
	 * (non-Javadoc)
	 * @see web.dao.CartDao#checkExistItems(java.lang.Integer, java.lang.Integer)
	 */
	public List<Cart> checkExistItems(Integer uid, Integer gid) {
		List<Cart> list = (List<Cart>) this.getHibernateTemplate().find("from Cart where uid=? and gid=?", uid, gid);
		return list;
	}
	
	/*
	 * (non-Javadoc)
	 * @see web.dao.CartDao#deleCart(java.lang.Integer, java.lang.Integer)
	 */
	public void deleCart(Integer uid, Integer gid) {
		this.getHibernateTemplate().delete(this.checkExistItems(uid, gid).get(0));
	}
	
	/*
	 * (non-Javadoc)
	 * @see web.dao.CartDao#SaveCart(web.entity.Cart)
	 */
	public void SaveCart(Cart cart) {
		this.getHibernateTemplate().save(cart);
	}
	
	/*统计用户在购物车中商品总数量
	 * (non-Javadoc)
	 * @see web.dao.CartDao#countAllCarts(java.lang.Integer)
	 */
	public Long countAllCartItems(Integer uid) {
		Query query=this.getHibernateTemplate().getSessionFactory().getCurrentSession().createQuery("select sum(gnum) as countnum from Cart where uid=:uid");
		query.setParameter("uid", uid);
		return (Long) query.uniqueResult();
		
	}

	/*统计用户在购物车中的记录数
	 * (non-Javadoc)
	 * @see web.dao.CartDao#statisticalCarts(java.lang.Integer)
	 */
	public Long statisticalCarts(Integer uid) {
		Query query=this.getHibernateTemplate().getSessionFactory().getCurrentSession().createQuery("select count(*) as countrecord from Cart where uid=:uid");
		query.setParameter("uid", uid);
		return (Long) query.uniqueResult();
	}


}
