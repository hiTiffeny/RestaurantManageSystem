package RCMS.web;

public class DateSale {
	String date;
	double money;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	@Override
	public String toString() {
		return "DateSale [date=" + date + ", money=" + money + "]\n";
	}
	
	
}
