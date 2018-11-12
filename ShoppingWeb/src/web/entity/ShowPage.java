package web.entity;
@SuppressWarnings("all")
public class ShowPage {
		private Integer firstposition=0;//起始位置
		private Integer currentpage=1;//当前页
		private Integer totalpages=0;//得到总页数
		private Integer pageSize=2;//设置当前页的最大行记录
		private Integer totalrecords=0;//得到总记录数
		
		public Integer getFirstposition() {
			return firstposition;
		}
		public void setFirstposition(Integer firstposition) {
			this.firstposition = firstposition;
		}
		public Integer getCurrentpage() {
			return currentpage;
		}
		public void setCurrentpage(Integer currentpage) {
			this.currentpage = currentpage;
		}
		public Integer getTotalpages() {
			/*Integer m=this.getTotalrecords();
			Integer n=this.getPageSize();
			totalpages=((m%n)==0)?(m/n):(m/n+1);*/
			return totalpages;	
		}
		public void setTotalpages(Integer totalpages) {
			this.totalpages = totalpages;
		}
		public Integer getPageSize() {
			return pageSize;
		}
		public void setPageSize(Integer pageSize) {
			this.pageSize = pageSize;
		}
		public Integer getTotalrecords() {
			return totalrecords;
		}
		public void setTotalrecords(Integer totalrecords) {
			this.totalrecords = totalrecords;
		}
	
}
