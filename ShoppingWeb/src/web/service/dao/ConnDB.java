package web.service.dao;

import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

import org.junit.Test;

public class ConnDB {
	private Connection con;
	
/*	1.有返回值的方法不能直接测试
	2.带参数的方法不能直接测试
	3.访问权限在public以下的方法不能直接测试
	4.static静态方法不能直接测试*/
	@Test
	public Connection getConn() throws Exception{
				Context ctx = new InitialContext();//初始化上下文
				DataSource datasource=(DataSource) ctx.lookup("java:comp/env/jdbc/data");//表示得到配置环境java:comp/env/ 固定写法
				con=datasource.getConnection();
				return con;
	}
}
