package web.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import web.Intermediate.CartItems;
import web.dao.CartDao;
import web.entity.Cart;
import web.entity.ShowPage;
import web.entity.User;
@SuppressWarnings("all")
public class CartDaoImpl extends HibernateDaoSupport implements CartDao {

	//添加到购物车
	public void addCart(Cart cart) {
		this.getHibernateTemplate().save(cart);
	}

	//查看购物车
	public List<CartItems> lookCart(User user,Integer firstResult,Integer maxResult) {
		Query query=this.getHibernateTemplate().getSessionFactory().getCurrentSession().createQuery("select new web.Intermediate.CartItems(c.cid,c.gid,c.uid,c.gnum,i.gname,i.gbrand,i.gintroduce,i.gprice,i.imgsrc)"
				+ " from Cart c,Items i where i.gid=c.gid and c.uid=:uid");
		query.setParameter("uid",user.getUid() );
		query.setFirstResult(firstResult);
		query.setMaxResults(maxResult);
		return query.list();	
	}

	//检查购物车中重复商品
	public List<Cart> checkExistItems(Integer uid, Integer gid) {
		List<Cart> list=(List<Cart>) this.getHibernateTemplate().find("from Cart where uid=? and gid=?",uid,gid);
		return list;
	}

	//删除购物车商品
	public void deleCart(Integer uid, Integer gid) {
		this.getHibernateTemplate().delete(this.checkExistItems(uid, gid).get(0));
	}
	

	//保存商品
	public void SaveCart(Cart cart) {
		this.getHibernateTemplate().save(cart);
	}

	//统计用户购物车总记录数
	public Integer statisticalCarts(Integer uid) {
		return (Integer) this.getHibernateTemplate().find("from Cart where uid=?",uid ).size();
	}

	
	

}
