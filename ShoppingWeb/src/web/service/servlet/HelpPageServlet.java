package web.service.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import web.service.bean.MessageBoard;
import web.service.dao.BaseDao;

public class HelpPageServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(true);//获取服务器上的session
		BaseDao bd;
		try {
			bd = new BaseDao();
			ArrayList<MessageBoard> messageboard;
			
				messageboard = bd.showMessageBoard(1,3,BaseDao.sqllimit);
				bd.CloseSource();
				session.setAttribute("messageboard", messageboard);
				session.setAttribute("emptymess","留言信息为空");//当留言为空时，出现的提示信息内容
				//返回上下页记录的session
				request.getRequestDispatcher("showmessage.jsp").forward(request, response);
				bd.CloseSource();
				return;
		} catch (Exception e1) {
			e1.printStackTrace();
		}//实例化一个demo类
	
	}
	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
