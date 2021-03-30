package RCMS.vo;
/**
 * 交易项的状态
 * @author Administrator
 *
 */
public class TradeState {
	Integer id;
	String str;
	
	public TradeState() {
		super();
	}
	public TradeState(Integer id, String str) {
		super();
		this.id = id;
		this.str = str;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	
}
