package web.action;

import web.entity.User;
import web.servicce.UserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
public class UserAction extends ActionSupport implements ModelDriven<User>{
	private UserService userService;
	private ActionContext con=ActionContext.getContext();
	private User user=new User();
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
	//登陆
	public String login(){
		if(userService.login(user)!=null){
			con.getSession().put("user", userService.login(user));
			return SUCCESS;
		}else{
			con.getSession().put("loginerror", "用户名或密码错误");
			return "login";
		}
	}
	//退出
	public String loginout(){
		con.getSession().clear();
		return "login";
	}
	//注册
	public String register(){
			String uid=userService.register(user).getUid().toString();
			con.getSession().put("user", user);
			return SUCCESS;
	}
	
	/*//保存对象到session
	public void saveUserSession(String name,User user){
		con.getSession().put(name, user);
	}*/

	
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
