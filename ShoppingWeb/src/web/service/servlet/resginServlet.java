package web.service.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.bean.user;
import web.service.dao.BaseDao;

public class resginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				String name=request.getParameter("usernames");
				if(name==null) {
					name="";
				}	
				BaseDao bd=new BaseDao();
				if(bd.ConnectSql(name)) {
					response.getWriter().println("1");
				}else {
					response.getWriter().println("0");
				}
				bd.CloseSource();
				return;
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	public  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}
