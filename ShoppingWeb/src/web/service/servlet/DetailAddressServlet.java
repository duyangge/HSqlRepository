package web.service.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.service.bean.DetailAddress;
import web.service.bean.MyCart;
import web.service.dao.BaseDao;

public class DetailAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DetailAddressServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Date date=new Date();
			
			MyCart mycart=new MyCart();
			mycart.setOrdernumber(Integer.parseInt(request.getParameter("orderno")));
			DetailAddress da=new DetailAddress();
			da.setRealname(request.getParameter("name"));
			da.setTelphone(request.getParameter("phone"));
			da.setIDCard(request.getParameter("idcard"));
			da.setMailbox(request.getParameter("email"));
			da.setGoodnote(request.getParameter("note"));
			da.setReceiptAddress(request.getParameter("address"));
			BaseDao bd=new BaseDao();
			bd.WirteDetail(da, mycart);
			bd.CloseSource();
			request.getRequestDispatcher("lookordersServlet").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
