package web.service.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.service.bean.Items;
import web.service.bean.user;
import web.service.dao.BaseDao;
import web.service.verifycode.Md5;

public class passServlet extends HttpServlet {
	public void init(ServletConfig config) throws ServletException {
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			  String code = request.getParameter("checkCode");
			   if (!code.equals(request.getSession().getAttribute("randCheckCode"))) {
			      request.setAttribute("errormsg", "验证码不正确");
			      request.getRequestDispatcher("login.jsp").forward(request, response);
			      return;
			    } 
			request.getSession().removeAttribute("name");
			String username=request.getParameter("user");
			String password=request.getParameter("psword3");
			user users=new user();//实例化user对象
			users.setUsername(username);
			users.setPassword(password);
			BaseDao bd;
			bd = new BaseDao();
				if(bd.LoginCheck(users)) {
					ArrayList<Items> cartItems=new ArrayList<Items>();
					request.getSession().setAttribute("cartItems", cartItems);//将购物车列表
					request.getSession().setAttribute("name", username);
					request.setAttribute("welcome", username);
					request.getRequestDispatcher("sum.jsp").forward(request, response);
					//response.sendRedirect("sum.jsp");
				}else {
					request.setAttribute("mess", "*账号或密码有误");//用户名或密码有误
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
				bd.CloseSource();
				return;
		} catch (Exception e) {
			e.printStackTrace();
		}//实例化BaseDao
	}
	public  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

}