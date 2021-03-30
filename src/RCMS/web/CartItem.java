package RCMS.web;

import RCMS.vo.Dish;

public class CartItem {
	private Dish dish;
	private Integer quantity;

	public CartItem(Dish dish) {
		this.dish = dish;
		this.quantity = 1;
	}

	public Dish getDish() {
		return dish;
	}

	public void setDish(Dish dish) {
		this.dish = dish;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public float getMoney() {
		return dish.getPrice() * quantity;
	}

	public void add() {
		quantity++;
	}

}
