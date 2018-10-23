package web.service.bean;

public class ShowPage {
	/**
	 * 1.当前页
	 * 2.得到总页数
	 * 3.设置当前页的最大行记录
	 * 4.得到总记录数
	 */
		private int currentpage=1;
		private int totalpages=0;
		private int pageSize=0;
		private int totalrecords=0;
		public int getTotalrecords() {
			return totalrecords;
		}
		public void setTotalrecords(int totalrecords) {
			this.totalrecords = totalrecords;
		}
		public int getCurrentpage() {
			return currentpage;
		}
		public void setCurrentpage(int currentpage) {
			this.currentpage = currentpage;
		}
		public int getPageSize() {
			return pageSize;
		}
		public void setPageSize(int pageSize) {
			this.pageSize = pageSize;
		}
		public int getTotalPages(){
			int m=this.getTotalrecords();
			int n=this.getPageSize();
			totalpages=((m%n)==0)?(m/n):(m/n+1);
			return totalpages;	
		}	
}
