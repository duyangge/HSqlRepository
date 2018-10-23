package web.service.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.bean.MessageBoard;
import web.service.bean.ShowPage;
import web.service.dao.BaseDao;

public class MessageTakeServlet extends HttpServlet {
	public  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BaseDao bd;
		try {
			bd = new BaseDao();
			String strid=request.getParameter("deltext");
			int id=Integer.parseInt(strid);
			boolean flag=bd.delIdMessageBoard(id);
			if(flag) {
				request.getRequestDispatcher("showmessage.jsp").forward(request, response);
			}else {
				response.getWriter().println("删除失败，2秒后跳回原页面");
				response.addHeader("refresh", "2;url=showmessage.jsp");
			}
			bd.CloseSource();
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			BaseDao bd;
			bd = new BaseDao();
			String text=request.getParameter("seachertext");
			String content ="content";
			ArrayList<MessageBoard> alm=bd.showaverMessageBoard(text,content);
			request.setAttribute("alm", alm);
			bd.showMessageBoard();
			bd.CloseSource();
			request.getRequestDispatcher("showmessage.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
