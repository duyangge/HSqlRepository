package web.service.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.bean.MessageBoard;
import web.service.dao.BaseDao;

public class MessageBoardServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
		}
	
	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=(String) request.getSession().getAttribute("name");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		if(name==null){
			name="guess"+(int)(Math.random()*10000)+1;
		}
		BaseDao bd;
		try {
			bd = new BaseDao();
			MessageBoard mb=new MessageBoard();
			Date date=new Date();
			String date1=date.toLocaleString();
			mb.setName(name);
			mb.setTitle(title);
			mb.setDate(date1);
			mb.setContent(content);
			boolean flag=bd.insertMessageBoard(mb);
			if(flag) {
				request.setAttribute("error", "yes");
				response.sendRedirect("submit.jsp");
			}else {
				response.addHeader("refresh", "2;url=submit.jsp");
			}
			bd.CloseSource();
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
