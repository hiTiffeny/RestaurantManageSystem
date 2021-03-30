package RCMS.vo;

import java.sql.Date;

public class Salary {	
	private Long id;
	private Long userId;
	private Float salary;
	private Date date;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Float getSalary() {
		return salary;
	}
	public void setSalary(Float salary) {
		this.salary = salary;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Salary [id=" + id + ", userId=" + userId + ", salary=" + salary
				+ ", date=" + date + "]\n";
	}
	
}
