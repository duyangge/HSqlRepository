package web.service.bean;

import java.sql.DatabaseMetaData;

import javax.sql.rowset.CachedRowSet;

public class DataByPage {
	private CachedRowSet rowSet=null;//存储表全部记录的行集对象
	private int PageSize=1;//每页显示的记录数
	private int TotalPage=1;//分页后的总页数
	private int currentPage=1;//当前显示页
	String tableName="";
	String ziduan[]=new String [100];
	int ziduancount=0;
	public DataByPage() {
		
	}
	public CachedRowSet getRowSet() {
		return rowSet;
	}
	public void setRowSet(CachedRowSet rowSet) {
		this.rowSet = rowSet;
	}
	public int getPageSize() {
		return PageSize;
	}
	public void setPageSize(int pageSize) {

	}
	public int getTotalPage() {
		return TotalPage;
	}
	public void setTotalPage(int totalPage) {
		TotalPage = totalPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
}