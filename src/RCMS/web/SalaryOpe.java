package RCMS.web;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import RCMS.dao.TradeDao;
import RCMS.dao.UserDao;
import RCMS.dao.impl.TradeDaoImpl;
import RCMS.dao.impl.UserDaoImpl;
import RCMS.vo.User;

public class SalaryOpe {
	private Integer pageNo = 1;
	private List<UserSalary> userSalaryList = null;
	private Page<User> userPage = null;
	private List<User> userList = null;
	UserDao userdao = new UserDaoImpl();
	TradeDao tradeDao = new TradeDaoImpl();

	public Page<User> getUserPage() {
		return userPage;
	}

	public void setUserPage(Page<User> userPage) {
		this.userPage = userPage;
	}

	

	public List<UserSalary> getUserSalaryList() {
		return userSalaryList;
	}

	public void setUserSalaryList(List<UserSalary> userSalaryList) {
		this.userSalaryList = userSalaryList;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public SalaryOpe(Integer pageNo, Date dateFrom, Date dateTo) {
		userSalaryList = new ArrayList<UserSalary>();
		UserSalary userSalary = null;
		this.pageNo = pageNo;
		userPage = userdao.getPage(pageNo);
		userList = userPage.getList();
		for (User user : userList) {
			userSalary = new UserSalary();
			userSalary.setId(user.getId());
			userSalary.setName(user.getName());
			Double monthGet = tradeDao.getUserMonthSalary(user.getId(),
					dateFrom, dateTo);
			
			if(monthGet == null)
			{
				userSalary.setMonthGet(0d);
			}else{
				userSalary.setMonthGet(monthGet);
			}
			
			userSalaryList.add(userSalary);
		}
	}
}
