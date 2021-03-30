package RCMS.web;


public class UserSalary {
	private Long id;
	private String name;
	private Double monthGet;
	
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
	public Double getMonthGet() {
		return monthGet;
	}
	public void setMonthGet(Double monthGet) {
		this.monthGet = monthGet;
	}
	@Override
	public String toString() {
		return "UserSalary [id=" + id + ", name=" + name + ", monthGet="
				+ monthGet + "]\n";
	}
	
	
}
