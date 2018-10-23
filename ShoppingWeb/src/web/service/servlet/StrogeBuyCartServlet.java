package web.service.servlet;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.service.bean.Items;
import web.service.bean.MyCart;
import web.service.dao.BaseDao;

public class StrogeBuyCartServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int num=Integer.parseInt(request.getParameter("number"));//添加到订单里的数量
			String tablename=request.getParameter("tablename");//货物表
			int ordernumber=Integer.parseInt(request.getParameter("ordernumber"));//直接获取订单编号
			String id=request.getParameter("id");//获取商品id
			//将物品信息都存入reqeust中，转发daostoragetransferstationservlet中
			request.setAttribute("ordernumber",ordernumber);
			request.setAttribute("id",id);
			request.setAttribute("number",num);
			//存储物品完成后，应该在填写表单，然后再回到直接到我的订单页面
			request.getRequestDispatcher("StorageTransferServlet").forward(request, response);
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
	}

}
