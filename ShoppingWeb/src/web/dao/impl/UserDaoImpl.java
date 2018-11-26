package web.dao.impl;

import java.util.List;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import web.dao.UserDao;
import web.entity.User;
/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:37:51
 * @version 版本号
 */
@SuppressWarnings("all")
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{
	//注册
	public User register(User user) {
		 this.getHibernateTemplate().save(user);
		 return user;
	}
	//登录
	public User login(User user) {
		List<User> list = (List<User>) this.getHibernateTemplate().find("from User where username=? and password=?", user.getUsername(), user.getPassword());
		if (list != null && list.size() > 0) return list.get(0);
		return null;
	}

}
