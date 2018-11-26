package web.interceptor;

import web.entity.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:39:17
 * @version 版本号
 */
@SuppressWarnings("all")
public class LoginInterceptor extends MethodFilterInterceptor {
	/*1.创建过滤类，继承methodFilterIntercepror，并重写doInterceptor的方法
	 * 2.配置action和拦截器的关系（注册拦截器）
	 * 3.
	 * */
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		User user = (User) ActionContext.getContext().getSession().get("user");
		if (user!=null) {
			return invocation.invoke();
		} else {
			return "login";
		}
		
	}

}
