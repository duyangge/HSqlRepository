package web.action;

import web.entity.User;
import web.servicce.UserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @author 黄信胜
 * @date 2018年11月20日下午8:36:28
 * @version 版本号
 */
@SuppressWarnings("all")
public class UserAction extends ActionSupport implements ModelDriven<User>{
	private UserService userService;
	private ActionContext con = ActionContext.getContext();
	private User user = new User();
	public User getModel() {
		return user;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public String execute() throws Exception {
		return super.execute();
	}
	
	/**
	 * 登陆
	 * @return  load:登陆成功; login:登陆失败
	 */
	public String login() {
		if (userService.login(user) != null) {
			con.getSession().put("user", userService.login(user));
			return "loadMyCartNum";
		} else {
			con.getSession().put("loginerror", "用户名或密码错误");
			return "login";
		}
	}
	/**
	 * 退出
	 * @return 返回 字符串 ”login"
	 */
	public String loginout() {
		con.getSession().clear();
		return "login";
	}
	/**
	 * 注册
	 * @return 返回字符串 “success"
	 */
	public String register() {
		String uid = userService.register(user).getUid().toString();
		con.getSession().put("user", user);
		return SUCCESS;
	}
	/**
	 * 加载首页图片信息
	 * @return 返回字符串 “success"
	 */
	public String pageLoad() {
		//加载首页图片与信息
		return SUCCESS;
	}	
	
	//判断验证码
/*	public String checkCode(){
		HttpServletRequest request=context.getRequest();
		if (! request.getParameter("checkCode").equals(request.getSession().getAttribute("randCheckCode"))) {
		      request.setAttribute("errormsg", "验证码不正确");
		      return "login";
		    }else{
		    	return SUCCESS;
		    }
	}*/
}
