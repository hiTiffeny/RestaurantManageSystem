package RCMS.vo;

import java.sql.Timestamp;
/**
 * 交易项
 * @author Administrator
 *
 */
public class Trade {
	private Long id;
	private Integer dish_num;
	private Float price;
	private Long userId;
	private User user;
	private Integer customer_table;
	private Timestamp date;
	private Integer state;
	private TradeState tradeState;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public TradeState getTradeState() {
		return tradeState;
	}
	public void setTradeState(TradeState tradeState) {
		this.tradeState = tradeState;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Integer getDish_num() {
		return dish_num;
	}
	public void setDish_num(Integer dish_num) {
		this.dish_num = dish_num;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Integer getCustomer_table() {
		return customer_table;
	}
	public void setCustomer_table(Integer customer_table) {
		this.customer_table = customer_table;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
	@Override
	public String toString() {
		return "Trade [id=" + id + ", dish_num=" + dish_num + ", price="
				+ price + ", userId=" + userId + ", customer_table="
				+ customer_table + ", date=" + date + ", state=" + state + "]\n";
	}
	
	
	
}
