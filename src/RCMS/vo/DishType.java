package RCMS.vo;
/**
 * 菜的种类
 * @author Administrator
 *
 */
public class DishType {
	Integer id;
	String name;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "DishType [id=" + id + ", name=" + name + "]";
	}
	
}
