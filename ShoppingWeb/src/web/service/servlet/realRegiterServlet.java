package web.service.servlet;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.bean.user;
import web.service.dao.BaseDao;
import web.service.verifycode.Md5;

public class realRegiterServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String username=request.getParameter("user");
			String password1=request.getParameter("psword1");
			String address=request.getParameter("useraddress");
			Md5 md5=new Md5();//对密码进行加密
			user users=new user();
			users.setUsername(username);
			users.setPassword(md5.EncoderByMd5(password1));		
			users.setAddress(address);
			BaseDao bd = new BaseDao();
				  if(bd.ConnectSql(users)) {//判断有无该用户
					  bd.InsertMess(users);
					  int reginmess=1;
					  request.setAttribute("reginmess",reginmess);
					  request.getRequestDispatcher("resign.jsp").forward(request, response);
				  }else {
					  int x=1;
					  request.setAttribute("myerror", x);
					  request.getRequestDispatcher("resign.jsp").forward(request, response);
					 // response.sendRedirect("");
				  }
				  bd.CloseSource();
				  return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
