package web.service.dao;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.Vector;
import javax.sql.rowset.CachedRowSet;
import org.junit.Test;
import com.mysql.jdbc.*;

import web.Utils.JDBCUtil;
import web.service.bean.DataByPage;
import web.service.bean.DetailAddress;
import web.service.bean.Items;
import web.service.bean.MessageBoard;
import web.service.bean.MyCart;
import web.service.bean.ShowPage;
import web.service.bean.user;
import web.service.verifycode.Md5;
public class BaseDao {
	private Connection con=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	public static final String sqlmessageboard="select * from messageboard";
	public static final String sqllimit="select * from messageboard limit ?,?";
	public final static String Sql="select * from user";
	private int randnum=0;
	private Md5 md5;
	private boolean panduan=true;
	public int getRandnum() {
		return randnum;
	}
	public void setRandnum(int randnum) {
		this.randnum = randnum;
	}
	//加载驱动程序
	public BaseDao() throws Exception{
		con=JDBCUtil.getConnection();
	}
	public Connection getCon() {
		return con;
	}
	//关闭各种数据流
	public void CloseSource() {
				try {
					if(con!=null) {
					con.close();
					}
					if(pstmt!=null) {
						pstmt.close();
					}
					if(rs!=null) {
						rs.close();
					}
				} catch (SQLException e) {
					System.out.println("关闭资源失效"+e);
				}	
	}
	//登录验证
	public boolean LoginCheck(user users) throws NoSuchAlgorithmException, UnsupportedEncodingException { 
		try {
			md5=new Md5();
			pstmt=con.prepareStatement("select * from user where username=? and password=?");
			pstmt.setString(1, users.getUsername());
			pstmt.setString(2, md5.EncoderByMd5(users.getPassword()));
			rs=pstmt.executeQuery();
			while(rs.next()) {
				return true;
			}
		} catch (SQLException e) {	
			System.out.println("登录失败"+e);
		}
		return false;
	}
	//注册
	public boolean InsertMess(user User) {
		try {
			pstmt=con.prepareStatement("insert into user(username,password,address) values(?,?,?)");
			pstmt.setString(1, User.getUsername());
			pstmt.setString(2, User.getPassword());
			pstmt.setString(3, User.getAddress());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {	
			System.out.println("注册失败"+e);
		}
		return false;
	}
	//注册时判断是否存在该用户
	public boolean ConnectSql(user users) throws Exception {
			try {
				pstmt=con.prepareStatement("select * from user where username=?");
				pstmt.setString(1, users.getUsername());
				rs=pstmt.executeQuery();
				while(rs.next()) {
					return false;
				}
			} catch (SQLException e) {	
				System.out.println("查询用户名已存在失败"+e);
			}
			return true;
}
public boolean ConnectSql(String name) throws Exception {
		try {
			pstmt=con.prepareStatement("select * from user where username=?");
			pstmt.setString(1, name);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				return true;
			}
		} catch (SQLException e) {	
			System.out.println("查询用户名已存在失败"+e);
			return false;
		}
		return false;
	}
	//将留言板中的信息存储到数据库中
	public boolean insertMessageBoard(MessageBoard mb) {
		try {
			pstmt=con.prepareStatement("insert into messageboard(name,title,time,content) values(?,?,?,?)");
			pstmt.setString(1, mb.getName());
			pstmt.setString(2, mb.getTitle());
			pstmt.setString(3,mb.getDate());
			pstmt.setString(4, mb.getContent());
			int x=pstmt.executeUpdate();
			if(x!=-1) {
				return true;
			}
		} catch (SQLException e) {
			System.out.println("留言板插入失败"+e);
		}
		return false;
	}
	//从数据库中提取留言板信息，用集合返回
	public ArrayList<MessageBoard> showMessageBoard(){
		ArrayList<MessageBoard> mslist=new ArrayList<MessageBoard>();
		try {
			pstmt=con.prepareStatement("select * from messageboard");
			rs=pstmt.executeQuery();
			while(rs.next()){
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String title=rs.getString(3);
				String date=rs.getString(4);
				String content=rs.getString(5);
				MessageBoard ms=new MessageBoard();
				ms.setId(id);
				ms.setName(name);
				ms.setTitle(title);
				ms.setDate(date);
				ms.setContent(content);
				mslist.add(ms);
			}
		} catch (SQLException e) {
		System.out.println("全部记录显示失败"+e);
		}
		return mslist;
	}
	//分页返回
	public ArrayList<MessageBoard> showMessageBoard(int hang,int length,String sql) throws Exception{
		if(con.isClosed())
		{
			con=Connc3p0.getConDB();
		}
		ArrayList<MessageBoard> mslist=new ArrayList<MessageBoard>();
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,hang-1);
			pstmt.setInt(2,length);
			rs=pstmt.executeQuery();
			while(rs.next()){
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String title=rs.getString(3);
				String date=rs.getString(4);
				String content=rs.getString(5);
				MessageBoard ms=new MessageBoard();
				ms.setId(id);
				ms.setName(name);
				ms.setTitle(title);
				ms.setDate(date);
				ms.setContent(content);
				mslist.add(ms);
			}
		} catch (SQLException e) {
		System.out.println("查看分页失败"+e);
		}
		return mslist;
	}
	//计算并返回总页数
	public int getTR(ShowPage showpage,String sql){
		int counterRecords=0;
		try {
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				counterRecords++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		showpage.setTotalrecords(counterRecords);
		showpage.setPageSize(3);
		return showpage.getTotalPages();
	}
	//根据id删除留言板信息
	public boolean delIdMessageBoard(int id) {
		try {
			pstmt=con.prepareStatement("delete from messageboard where id=?");
			pstmt.setInt(1, id);
			int x=pstmt.executeUpdate();
			if(x!=-1) {
				return true;
			}
		} catch (SQLException e) {
			System.out.println("删除留言板信息失败1"+e);
		}
		return false;
	}
	//模糊查询的分页显示
	
	//对留言进行模糊查询
	public ArrayList<MessageBoard> showaverMessageBoard(String text,String ziduan){
		ArrayList<MessageBoard> mslist=new ArrayList<MessageBoard>();
		String sql="select * from messageboard where "+ziduan+" like '%"+text+"%'";
			int counter=0;
		try {
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String title=rs.getString(3);
				String date=rs.getString(4);
				String content=rs.getString(5);
				MessageBoard ms=new MessageBoard();
				ms.setId(id);
				ms.setName(name);
				ms.setTitle(title);
				ms.setDate(date);
				ms.setContent(content);
				mslist.add(ms);
				counter++;
			}
		} catch (SQLException e) {
		System.out.println("查看留言版失败"+e);
		}
		return mslist;
	}
	//根据表来返回物品列表信息
	public ArrayList<Items> selectgoods(String tablename) {
		ArrayList<Items> goodslist=new ArrayList<Items>();
		try {
			String sql="select * from "+tablename;
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				while(rs.next()){
					String id=rs.getString(1);
					String goodname=rs.getString(2);
					String goodbrand=rs.getString(3);
					String goodintroduce=rs.getString(4);
					double goodprice=rs.getDouble(5);
					double goodpricing=rs.getDouble(6);
					String goodimagesrc=rs.getString(7);
					Items item=new Items();
					item.setId(id);
					item.setName(goodname);
					item.setBrand(goodbrand);
					item.setIntroduce(goodintroduce);
					item.setPrice(goodprice);
					item.setPricing(goodpricing);
					item.setImagesrc(goodimagesrc);
					goodslist.add(item);
				}
			}
		} catch (SQLException e) {
			this.CloseSource();
			System.out.println("根据表来返回物品列表信息失败"+e);
		}
		
		return goodslist;
	}
	//判断订单号是否有重复
	public boolean TrueOrder(int ordernum,String usernameorder) {
		try {
			String sql="select * from "+usernameorder+" where ordernumber="+ordernum;
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				return false;
			}
		} catch (SQLException e) {
			System.out.println("判断订单号是否重复失败"+e);
		}
		return true;
	}
	//存储订单号，一个物品对应一个订单号，一对多关系
	public boolean StorageOrderNumber(String username,String ordertablename,String userordertable) {
		try {
			while(true) {
				int ordernumber=(int)(Math.random()*9000)+10000;
				if(this.TrueOrder(ordernumber,userordertable)){
					this.setRandnum(ordernumber);
					String sql="insert into "+ordertablename+" values(?,?)";
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, ordernumber);
					pstmt.setString(2, username);
					int x=pstmt.executeUpdate();
					if(x!=-1) {
						return true;
					}
				}
			}
			
			} catch (SQLException e) {
			System.out.println("存储物品订单信息失败"+e);
		}
		return false;
	}
	//根据订单号存储物品订单详细信息
	public boolean StorageOrderDetails(Items item,String time,int num) {
		try {
			item.setOrdernumber(num);
			String sql="insert into orderdetails values(?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1,this.getRandnum());
			pstmt.setString(2, item.getId());
			pstmt.setInt(3, item.getOrdernumber());
			pstmt.setString(4, time);
			int x=pstmt.executeUpdate();
			if(x!=-1) {
				return true;
			}
			} catch (SQLException e) {
			System.out.println("存储物品订单信息失败"+e);
		}
		return false;
	}
	//通过用户名获取多个订单号
	public ArrayList<Integer> ShowOrderNumber(String username,String tablename) {
		ArrayList<Integer> ordernumberlist=new ArrayList<Integer>();
		try {
			String sql="select * from "+tablename+" where username='"+username+"'";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
						int ordernumber=rs.getInt("ordernumber");
						ordernumberlist.add(ordernumber);
			}
		} catch (SQLException e) {
			System.out.println("查询物品订单号失败\t原因是："+e);
		}
		return ordernumberlist;
	}
	//通过id得到商品，存储商品信息
	public boolean SeacherItems(Items item,String id,String tablename) {
		try {
			String sql="select * from "+tablename+" where id='"+id+"'";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
					item.setId(id);
					item.setName(rs.getString("goodname"));
					item.setBrand(rs.getString("goodbrand"));
					item.setIntroduce(rs.getString("goodintroduce"));
					item.setPrice(rs.getDouble("goodprice"));
					item.setPricing(rs.getDouble("goodpricing"));
					item.setImagesrc(rs.getString("imagesrc"));
					return true;
			}
		} catch (SQLException e) {	
			System.out.println("通过id得到商品，存储商品信息失败"+e);
		}
		return false;
	}
	//通过订单号存储详细物品,利用hashmap，一一对应
	public Map<Integer,Items> showGoodOrder(ArrayList<Integer> ordernumberlist,String tablename,String mycartablename){
		Map<Integer,Items> itemlist=new HashMap<Integer,Items>();
		try {
			for(int i=0;i<ordernumberlist.size();i++){
				String sql="select * from "+mycartablename+" where ordernumber="+ordernumberlist.get(i);
				pstmt=con.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					Items item=new Items();
					String id=rs.getString("id");
					int goodnumber=rs.getInt("goodnumber");
					String goodtime=rs.getString("goodtime");
					this.SeacherItems(item, id, tablename);
					item.setOrdernumber(goodnumber);
					item.setTime(goodtime);
					itemlist.put(ordernumberlist.get(i), item);
				}
			}
		} catch (SQLException e) {
			System.out.println("查询详细物品订单失败"+e);
		}
		return itemlist;
	}
	//通过物品的id，存储购买的物品数量
	public boolean SeacherItemNumber(Items item,int num,String tablename) {
		try {
			String sql="select * from "+tablename;
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				if(rs.getString("Id").equals(item.getId())) {
					item.setOrdernumber(num);
					return true;
				}
			}
		} catch (SQLException e) {	
			System.out.println("连接mysql失败"+e);
			return false;
		}
		return false;
	}
	//删除详细物品订单
	public boolean DelOrderNumber(int ordernum,String goodorder,String orderdetails) {
		try {
			String sql="delete a.*,b.* from "+goodorder+" a inner join "+orderdetails+" b on a.ordernumber=b.ordernumber  where a.ordernumber="+ordernum;
			pstmt=con.prepareStatement(sql);
			int x=pstmt.executeUpdate();
			if(x!=-1) {
				return true;
			}
		} catch (SQLException e) {
			System.out.println("删除订单信息失败"+e);
		}
		return false;	
	}
	//删除用户所有订单
	public boolean DelAllOrderNumber(String username,String goodstablename) {
		ArrayList<Integer> orderalllist=this.ShowOrderNumber(username, goodstablename);
			for(int i=0;i<orderalllist.size();i++){
				this.DelOrderNumber(orderalllist.get(i),"goodorder","orderdetails");
			}
		return false;
	}
	//修改详细物品数量
	public boolean UpdaOrderNumber() {
		return false;
		
	}
	//修改密码
	public boolean setPassword(user users) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		try {
			md5=new Md5();
			pstmt=con.prepareStatement("update  user set password=? where username=?");
			pstmt.setString(1, md5.EncoderByMd5(users.getPassword()));
			pstmt.setString(2, users.getUsername());
			int x=pstmt.executeUpdate();
			if(x!=-1) {
				return true;
			}
		} catch (SQLException e) {	
			System.out.println("修改密码失败"+e);
			return false;
		}
		return false;
	}
	//通过首页的搜索，从数据库中寻找符合条件的物品并显示
	public ArrayList<Items> SeacherGoodName(String name,String tablename) {
		ArrayList<Items> goodlist=new ArrayList<Items>();
		try {
			String sql="select * from "+tablename+" where goodintroduce like '%"+name.trim()+"%'";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Items item=new Items();
				item.setId(rs.getString("id"));
				item.setName(rs.getString("goodname"));
				item.setBrand(rs.getString("goodbrand"));
				item.setIntroduce(rs.getString("goodintroduce"));
				item.setPrice(rs.getDouble("goodprice"));
				item.setPricing(rs.getDouble("goodpricing"));
				item.setImagesrc(rs.getString("imagesrc"));
				goodlist.add(item);
			}
		} catch (SQLException e) {
		System.out.println("搜索对应的物品失败"+e);
		}
		return goodlist;
	}
	//将用户与订单编号相关联（下单后）
	public boolean StoragemyOrder(String username,String ordertablename,String userordertable,int ordernumber) {
		try {
					String sql="insert into "+ordertablename+" values(?,?)";
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, ordernumber);
					pstmt.setString(2, username);
					int x=pstmt.executeUpdate();
					if(x!=-1) {
						return true;
			}
			
			} catch (SQLException e) {
			System.out.println("存储物品订单信息失败"+e);
		}
		return false;
	}
//判断订单号是否重复，重复后，就继续变化数值
	public int getNumber(int ordernumber,String orderusertable) {
		int ordernum;
		boolean flag;
		while(true) {
			try {
				flag=true;
				ordernum=(int)(Math.random()*9000)+10000;
				if(panduan) {
					
				}else {
					ordernumber=ordernum;
				}
				String sql="select * from "+orderusertable+" where ordernumber="+ordernumber;
				pstmt=con.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					flag=false;
				}
				if(flag&&panduan){
					return ordernumber;				
				}				
				if(!flag) {
					this.getNumber(ordernum, orderusertable);
				}else {
					return ordernum;
				}
				
			} catch (SQLException e) {
				System.out.println("判断订单号是否重复失败"+e);
			}
			panduan=false;
		}
		
	}
//Parameter index out of range (1 > number of parameters, which is 0).
	//将购物车中的物品下单：(判断购物车列表中有没有订单号true，有直接变成订单号false，没有则重新创建)
	public boolean GoOrder(MyCart mycart) {
		try {
				int x;		
				System.out.println("oldmycartordernumber:"+mycart.getOrdernumber());
				if(this.TrueOrder( mycart.getOrdernumber(),mycart.getCartusertable())){//在goodorder中没有响应的订单号
					mycart.setOrdernumber(this.getNumber(mycart.getOrdernumber(),mycart.getOrderusertable()));
					pstmt=con.prepareStatement("insert into myorder values(?,?,?,?)");
					pstmt.setInt(1, mycart.getOrdernumber());
					pstmt.setString(2, mycart.getItem().getId());
					pstmt.setInt( 3,mycart.getGoodnumber());
					pstmt.setString(4, mycart.getTime());
					x=pstmt.executeUpdate();
				}else {//在goodorder中有响应的订单号
					pstmt=con.prepareStatement("insert into myorder values(?,?,?,?)");
					pstmt.setInt(1, mycart.getOrdernumber());
					pstmt.setString(2, mycart.getItem().getId());
					pstmt.setInt( 3,mycart.getGoodnumber());
					pstmt.setString(4, mycart.getTime());
					x=pstmt.executeUpdate();
				}
				if(x!=-1) {
					this.StoragemyOrder(mycart.getUsername(),mycart.getTablename(),mycart.getCartusertable(),mycart.getOrdernumber());
					this.DelOrderNumber(mycart.getOrdernumber(),mycart.getOrderusertable(),mycart.getOrderdetailstable());//将下单后的物品删除
					return true;
				}
			} catch (SQLException e) {
			System.out.println("下单失败（存储数据库中失败)"+e);
		}
		return false;
	}
	//Parameter index out of range (1 > number of parameters, which is 0).
	//查看下单的物品
	public Map<Integer,Items> showBuyOrder(String name,String userordertablename,String myordertablename,String tablename){
		ArrayList<Integer> orderlist=this.ShowOrderNumber(name,userordertablename);//获取加入购物车的订单号
		HashMap<Integer,Items> buyorderlist=(HashMap<Integer, Items>) this.showGoodOrder(orderlist, tablename, myordertablename);
		return buyorderlist;
	}
	//删除下单的物品
	public Boolean DelBuyOrder(MyCart mycart) {
		this.DelOrderNumber(mycart.getOrdernumber(), mycart.getOrderusertable(), mycart.getOrderdetailstable());
		return true;
	}
	//下单时，填写详细信息
	public boolean WirteDetail(DetailAddress da,MyCart mycart) {
		try {
			pstmt=con.prepareStatement("insert into writedetail values(?,?,?,?,?,?,?)");
			pstmt.setInt(1,mycart.getOrdernumber());
			pstmt.setString(2, da.getRealname());
			pstmt.setString(3, da.getIDCard());
			pstmt.setString(4, da.getTelphone());
			pstmt.setString(5, da.getReceiptAddress());
			pstmt.setString(6, da.getGoodnote());
			pstmt.setString(7, da.getMailbox());
			int x=pstmt.executeUpdate();
			if(x!=-1) {
				return true;
			}
			} catch (SQLException e) {
			System.out.println("将填写的订单地址保存失败"+e);
		}
		return false;
		
	}
	//通过用户名查询所有信息
	public user getInfor(String username) {
		try {
			user User=new user();
			String sql="select * from user where="+username;
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
					User.setUsername(rs.getString("username"));
					User.setAddress(rs.getString("address"));
					User.setPassword(rs.getString("password"));
			}
			return User;
		} catch (SQLException e) {	
			System.out.println("查询用户信息失败"+e);
		}
		return null;
	}
	//获取当前时间
	public String getTime() {
		java.util.Date date =new java.util.Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		System.out.println(dateFormat.format(date));
		return dateFormat.format(date).toString();
	}
	
}


