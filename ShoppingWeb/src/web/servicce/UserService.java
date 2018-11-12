package web.servicce;

import org.springframework.transaction.annotation.Transactional;

import web.dao.UserDao;
import web.entity.User;

/** * @author   黄信胜* 
@date 创建时间：2018年7月3日 上午11:13:27 *
 @version 1.0 *
 @parameter  *
 @since  *
 @return  */

@SuppressWarnings("all")
public interface UserService {
	 User login(User user) ;
	 User register(User user) ;
}
