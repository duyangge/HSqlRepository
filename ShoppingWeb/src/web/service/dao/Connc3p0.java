package web.service.dao;

import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Test;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class Connc3p0 {
	public static Connection getConDB() throws Exception{
		/**
		 * 手动配置（代码配置）c3p0
		 */
		//创建连接池对象
		ComboPooledDataSource dataSource=new ComboPooledDataSource();
		//对池进行四大参数的配置
		dataSource.setJdbcUrl("jdbc:mysql://localhost:3306/taobaoweb");//配置路径
		dataSource.setDriverClass("com.mysql.jdbc.Driver");//配置驱动程序
		dataSource.setUser("root");
		dataSource.setPassword("root");
		//池参数(不配置也会有默认值)
		dataSource.setAcquireIncrement(5);//设置增量
		dataSource.setInitialPoolSize(20);//设置池连接数的初始大小
		dataSource.setMaxIdleTime(1000);//设置池的最大连接数
		dataSource.setMinPoolSize(20);//设置池的最小连接数		
		Connection con=dataSource.getConnection();
		return con;
	}
}
