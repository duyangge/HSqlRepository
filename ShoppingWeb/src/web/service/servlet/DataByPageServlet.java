package web.service.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.bean.MessageBoard;
import web.service.bean.ShowPage;
import web.service.dao.BaseDao;

public class DataByPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShowPage showpage=(ShowPage)request.getSession().getAttribute("showpage");//得到页面的showpage的对象
		ArrayList<MessageBoard> mab=(ArrayList<MessageBoard>) request.getSession().getAttribute("messageboard");
		String curpage=request.getParameter("currentpage");//获取到当前页
		String text=request.getParameter("tiaozhuang");//得到跳转页
		if(text==null) {
			text="";
		}
		if(curpage==null) {
			curpage="";
		}
		BaseDao demo;
		try {
			demo = new BaseDao();
			int totalpage=demo.getTR(showpage,BaseDao.sqlmessageboard);//获取总页数
			demo.CloseSource();
			if(!text.equals("")) {
					int page=Integer.parseInt(text);
					if(this.tDividePage(showpage, page, mab, demo)!=null) {
						 mab=this.tDividePage(showpage, page, mab, demo);
						 request.getSession().setAttribute("messageboard", mab); 
					 }
					demo.CloseSource();
					 request.getRequestDispatcher("showmessage.jsp").forward(request, response);
					 return;
			}
			if(!curpage.equals("")) {
					int currentpage=Integer.parseInt(curpage);//得到当前页	
					if(this.DividePage(showpage, totalpage,currentpage, mab, demo)!=null) {
						mab=this.DividePage(showpage, totalpage,currentpage, mab, demo);
						request.getSession().setAttribute("messageboard", mab);
					}
					demo.CloseSource();
					request.getRequestDispatcher("showmessage.jsp").forward(request, response);
					return;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	/**
	 * 上一页或下一页
	 * @param showpage
	 * @param totalpage
	 * @param currentpage
	 * @param messboard
	 * @param demo
	 * @return
	 * @throws Exception 
	 */
	public ArrayList<MessageBoard> DividePage(ShowPage showpage,int totalpage,int currentpage,ArrayList<MessageBoard> messboard,BaseDao demo) throws Exception {
		showpage.setCurrentpage(currentpage);
		if(showpage.getCurrentpage()<=showpage.getTotalPages()&&showpage.getCurrentpage()>0) {
			if(showpage.getCurrentpage()==totalpage) {
					int length=showpage.getTotalrecords()-(showpage.getTotalPages()-1)*showpage.getPageSize();
					int hang=(showpage.getTotalPages()-1)*showpage.getPageSize();
					try {
							messboard=demo.showMessageBoard(hang+1,length,BaseDao.sqllimit);
					} catch (SQLException e) {}
			}else {
					try {
						messboard=demo.showMessageBoard(showpage.getCurrentpage()*showpage.getPageSize()-2, showpage.getPageSize(),BaseDao.sqllimit);
					} catch (SQLException e) {}
			}
					return messboard;	
		}else {
					if(currentpage-1>0) {
						showpage.setCurrentpage(currentpage-1);
					}else {
						showpage.setCurrentpage(currentpage+1);
					}
					return null;
		}	
	}
	/**
	 * 直接跳转页
	 * @param showpage
	 * @param page
	 * @param messboard
	 * @param demo
	 * @return
	 * @throws Exception 
	 */
	public ArrayList<MessageBoard> tDividePage(ShowPage showpage,int page,ArrayList<MessageBoard> messboard,BaseDao demo) throws Exception {
		if(showpage.getTotalPages()>=page){
			if(showpage.getTotalPages()>page) {
				 try {
					 	messboard=demo.showMessageBoard(page*showpage.getPageSize()-2, showpage.getPageSize(),BaseDao.sqllimit);
				 	} catch (SQLException e) {}
			}
			if(showpage.getTotalPages()==page) {
				int length=showpage.getTotalrecords()-(showpage.getTotalPages()-1)*showpage.getPageSize();
				int hang=(showpage.getTotalPages()-1)*showpage.getPageSize();
				try {
					messboard=demo.showMessageBoard(hang+1,length,BaseDao.sqllimit);
				} catch (SQLException e) {}
			}
			showpage.setCurrentpage(page);
			 return messboard;	
		}else {
			 return null;	
		}
	}
}
