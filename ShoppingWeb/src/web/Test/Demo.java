package web.Test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.Test;

import web.Utils.JDBCUtil;
public class Demo {
	@Test
	public void test() {
		Connection conn=JDBCUtil.getConnection();
		System.out.println(conn);
	}
}