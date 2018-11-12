package web.service.impl;

import org.springframework.transaction.annotation.Transactional;

import web.dao.UserDao;
import web.entity.User;
import web.servicce.UserService;
@Transactional
public class UserServiceImpl implements UserService{
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public User login(User user) {
		return userDao.login(user);
	}
	public User register(User user) {
		return userDao.register(user);
	}
}
