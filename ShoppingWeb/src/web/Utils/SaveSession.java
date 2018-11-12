package web.Utils;

import com.opensymphony.xwork2.ActionContext;

public class SaveSession<T> {
		public  static void saveSession(String Formalparameter,String Actualparameter ,ActionContext con){
			con.getSession().put(Formalparameter, Actualparameter);
		}
		/*public  static void saveSession(String Formalparameter,T t ,ActionContext con){
			con.getSession().put(Formalparameter,t,con );
		}
		*/
		
}
