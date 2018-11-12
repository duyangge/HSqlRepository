package web.service.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.service.bean.Items;
import web.service.bean.user;
import web.service.dao.BaseDao;

public class cartsServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {//将物品显示到购物车
			String id=request.getParameter("id");
			String tablename=request.getParameter("tablename");
			Items item=new Items();
			BaseDao bd = new BaseDao();
			boolean flag=bd.SeacherItems(item, id,tablename);
			if(flag) {
				request.getSession().setAttribute("item", item);
				request.getRequestDispatcher("addCart.jsp").forward(request, response);	
			}/*else {
				System.out.println("物品的id无效");
			}*/
			bd.CloseSource();
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}	
	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {//将物品添加的购物加进数据库
			int num=Integer.parseInt(request.getParameter("numbershowtext"));
			Items item=(Items)request.getSession().getAttribute("item");
			String tablename=request.getParameter("tablename");
			String goodorder=request.getParameter("goodorder");
			String orderdetails=request.getParameter("orderdetails");
			String username=(String) request.getSession().getAttribute("name");
			Date date=new Date();
			String time=date.toLocaleString();
			if(username==null) {
				response.sendRedirect("login.jsp");
			}
			BaseDao bd;
			bd = new BaseDao();
			//存储订单信息
			/*
			 * 1.StorageOrderNumber 将订单号和用户邦定在一个表中
			 * 2.StorageOrderDetails，将订单号中的详细信息存储
			 * 3.ShowOrderNumber,查询用户所有的订单
			 * 4.showGoodOrder 通过不同的订单号，得到不同的订单详情信息存储
			 */
			bd.StorageOrderNumber(username,goodorder,goodorder);//goodorder存入成功
			bd.StorageOrderDetails(item, time,num);//订单详情存储成功
			request.getRequestDispatcher("addCart.jsp").forward(request, response);
			bd.CloseSource();
			return;			
		} catch (Exception e) {
			System.out.println("将物品添加的购物加进数据库"+e);
		}
	
	}

}
