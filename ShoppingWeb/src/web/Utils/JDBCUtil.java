package web.Utils;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import com.mchange.v2.c3p0.ComboPooledDataSource;


public class JDBCUtil {
	private static DataSource dataSource=null;
	static{
		dataSource=new ComboPooledDataSource();
	}
	/**
	 * 获取数据库连接
	 * @return
	 */
	public static Connection getConnection(){
		Connection conn=null;
		try {
			conn=(Connection)dataSource.getConnection();
		} catch (SQLException e) {
			System.out.println("连接错误"+e);
		}
		return conn;
	}
	/**
	 * 关闭数据库连接
	 * @param conn
	 */
	public static void closeConn(Connection conn){
		try {
			if(conn!=null && conn.isClosed()){
				conn.close();
			}
		} catch (SQLException e) {
			System.out.println("关闭资源异常"+e);
		}
	}
}
