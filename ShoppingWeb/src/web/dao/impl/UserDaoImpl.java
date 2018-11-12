package web.dao.impl;

import java.util.List;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import web.dao.UserDao;
import web.entity.User;
@SuppressWarnings("all")
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{
	//注册
	public User register(User user) {
		 this.getHibernateTemplate().save(user);
		 return user;
	}
	//登录
	public User login(User user) {
		List<User> list=(List<User>)this.getHibernateTemplate().find("from User where username=? and password=?", user.getUsername(),user.getPassword());
		return list.get(0);
	}

}
