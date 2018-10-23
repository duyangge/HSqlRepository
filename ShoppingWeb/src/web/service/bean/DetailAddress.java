package web.service.bean;
/** * @author  作者 E-mail: * 
@date 创建时间：2018年6月29日 上午12:32:44 *
 @version 1.0 *
 @parameter  *
 @since  *
 @return  */
public class DetailAddress {
	private String realname;
	private String IDCard;
	private String telphone;
	private String receiptAddress;
	private String goodnote;
	private String mailbox;
	public String getMailbox() {
		return mailbox;
	}
	public void setMailbox(String mailbox) {
		this.mailbox=mailbox;
	}
	public String getGoodnote() {
		return goodnote;
	}
	public void setGoodnote(String goodnote) {
		this.goodnote = goodnote;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getIDCard() {
		return IDCard;
	}
	public void setIDCard(String iDCard) {
		IDCard = iDCard;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public String getReceiptAddress() {
		return receiptAddress;
	}
	public void setReceiptAddress(String receiptAddress) {
		this.receiptAddress = receiptAddress;
	}
	
}
