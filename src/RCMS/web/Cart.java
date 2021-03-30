package RCMS.web;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import RCMS.vo.Dish;

public class Cart {
	private Map<Long, CartItem> map = new LinkedHashMap<Long, CartItem>();// HashMap<Long,
																			// CartItem>();

	public void clear() {
		map.clear();
	}

	public Integer getItemNum(Long id) {
		if (map.get(id) == null) {
			return 0;
		}
		return map.get(id).getQuantity();
	}

	public Boolean isEmpty() {
		return map.isEmpty();
	}

	public float getTotalMoney() {
		float total = 0f;
		for (CartItem c : getItems()) {
			total += c.getMoney();
		}
		return total;
	}

	public void removeItem(Long id) {
		map.remove(id);
	}

	public List<CartItem> getItems() {
		List<CartItem> list = new ArrayList<CartItem>(map.values());
		return list;
	}

	public Map<Long, CartItem> getMap() {
		return map;
	}

	public void setMap(Map<Long, CartItem> map) {
		this.map = map;
	}

	public int getTotalNumber() {
		int total = 0;
		for (CartItem c : getItems()) {
			total += c.getQuantity();
		}
		return total;
	}

	public boolean hasDish(Long id) {
		return map.containsKey(id);
	}

	public void addDish(Dish dish) {
		CartItem c = map.get(dish.getId());
		if (c == null) {
			c = new CartItem(dish);
			map.put(dish.getId(), c);
		} else {
			c.add();
		}
	}

	public void updateItemQuantity(Long id, int quantity) {
		CartItem c = map.get(id);
		if (c != null) {
			c.setQuantity(quantity);
		}
	}

}
