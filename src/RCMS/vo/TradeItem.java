package RCMS.vo;
/**
 * 交易项
 * @author Administrator
 *
 */
public class TradeItem {
	private Long id;
	private Long tradeId;
	private Integer quantity;
	private Long dishId;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getTradeId() {
		return tradeId;
	}
	public void setTradeId(Long tradeId) {
		this.tradeId = tradeId;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Long getDishId() {
		return dishId;
	}
	public void setDishId(Long dishId) {
		this.dishId = dishId;
	}
	@Override
	public String toString() {
		return "Trade_item [id=" + id + ", tradeId=" + tradeId + ", quantity="
				+ quantity + ", dishId=" + dishId + "]";
	}
	
}
