package RCMS.web;

import java.math.BigDecimal;

import RCMS.vo.DishType;

public class DishTypeSale {
	private DishType dishType;
	private BigDecimal sale;
	public DishType getDishType() {
		return dishType;
	}
	public void setDishType(DishType dishType) {
		this.dishType = dishType;
	}
	public BigDecimal getSale() {
		return sale;
	}
	public void setSale(BigDecimal sale) {
		this.sale = sale;
	}
	@Override
	public String toString() {
		return "DishTypeSale [dishType=" + dishType + ", sale=" + sale + "]";
	}
	
	
	
}
