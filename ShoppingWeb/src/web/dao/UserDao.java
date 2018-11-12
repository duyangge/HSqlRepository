package web.dao;

import java.util.List;

import web.entity.User;

@SuppressWarnings("all")
public interface UserDao {
		User login(User user);
		User register(User user);
		/*void addUser();
		void deleteUser();
		void updateUser();
		User findOneUser();
		List<User> findAllUser();*/
		
}
