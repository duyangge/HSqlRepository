package web.service.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.service.dao.BaseDao;
public class NowBuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public NowBuyServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ordernumberts=request.getParameter("ordernumber");//订单编号
		String id=request.getParameter("id");//商品id
		int number=Integer.parseInt(request.getParameter("number"));//商品数量
		String name=(String)request.getSession().getAttribute("name");//用户名
		int ordernumber = 0;
		if(name==null) {
			response.sendRedirect("login.jsp");
			return;
		}
		if(ordernumberts==null) {//立即下单时，创建订单编号
			try {
				BaseDao bd=new BaseDao();
				int newnum=(int)(Math.random()*9000)+10000;
				ordernumber=bd.getNumber(newnum,"myuserorder");//判断是否重复订单编号
			} catch (Exception e) {}
		}else {//在购物车下单时，直接使用订单
				ordernumber=Integer.parseInt(ordernumberts);
		}
		//将下单的物品信息存入storageTransferServlet中，在填写详细表单
		request.setAttribute("ordernumber",ordernumber);
		request.setAttribute("id",id);
		request.setAttribute("number",number);
		request.getRequestDispatcher("StorageTransferServlet").forward(request, response);
	}
}
