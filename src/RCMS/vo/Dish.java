package RCMS.vo;


/**
 * 菜单VO
 * @author Administrator
 *
 */
public class Dish {
	private Long id;
	private String name;
	private Integer type_id;
	private Float price;
	private String picture;
	private Long sale;
	private Integer stock;
	private String description;
	
	private DishType dishType;
	
	
	
	
	public Dish() {
		super();
	}
	
	
	public Dish( String name, Integer type_id, Float price,
			String picture, Long sale, Integer stock, String description) {
		this.name = name;
		this.type_id = type_id;
		this.price = price;
		this.picture = picture;
		this.sale = sale;
		this.stock = stock;
		this.description = description;
		
	}


	public DishType getDishType() {
		return dishType;
	}
	public void setDishType(DishType dishType) {
		this.dishType = dishType;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getType_id() {
		return type_id;
	}
	public void setType_id(Integer type_id) {
		this.type_id = type_id;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public Long getSale() {
		return sale;
	}
	public void setSale(Long sale) {
		this.sale = sale;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Dish [id=" + id + ", name=" + name + ", type_id=" + type_id
				+ ", price=" + price + ", picture=" + picture + ", sale="
				+ sale + ", stock=" + stock + ", description=" + description
				+ ", dishType=" + dishType + "]";
	}


	
}
