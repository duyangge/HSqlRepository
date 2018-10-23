package web.service.bean;

import java.sql.*;

import web.service.dao.ConnDB;
import web.service.dao.Connc3p0;
public class user {
	private String username;//用户名
	private String password;//密码
	private String agpassword;//确认密码
	private String mess="false";
	private String address="";
	public String getMess() {
		return mess;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	public String getAgpassword() {
		return agpassword;
	}
	public void setAgpassword(String agpassword) {
		this.agpassword = agpassword;
	}
	private String tablename="";
	public String getTableName() {
		return tablename;
	}
	public void setTableName(String tablename) {
		this.tablename = tablename;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	} 
}

