package RCMS.web;

import java.util.List;

public class Page<T> {

	

	//当前第几页?
	private int pageNo;
	
	//当前页的 List
	private List<T> list;
	
	//每页显示多少条记录?
	private int pageSize = 10;
	
	//共有多少条记录?
	private long totalItemNumber;
	
	public Page() {
		
	}

	//
	public Page(int pageNo) {
		super();
		this.pageNo = pageNo;
	}
	
	//�?��校验�?��
	public int getPageNo() {
		if(pageNo > getTotalPageNumber()){
			pageNo = getTotalPageNumber();
		}
		if(pageNo <= 0)
			pageNo = 1;
		
		return pageNo;
	}
	
	public int getPageSize() {
		return pageSize;
	}
	
	public void setList(List<T> list) {
		this.list = list;
	}
	
	public List<T> getList() {
		return list;
	}
	
	//获取总页�?
	
	public int getTotalPageNumber(){
		
		int totalPageNumber = (int)totalItemNumber / pageSize;
		
		if(totalItemNumber % pageSize != 0){
			totalPageNumber++;
		}
		
		return totalPageNumber;
	}
	
	public void setTotalItemNumber(long totalItemNumber) {
		this.totalItemNumber = totalItemNumber;
	}
	
	public boolean isHasNext(){
		if(getPageNo() < getTotalPageNumber()){
			return true;
		}
		
		return false;
	}
	
	public boolean isHasPrev(){
		if(getPageNo() > 1){
			return true;
		}
		
		return false;
	}
	
	public int getPrevPage(){
		if(isHasPrev()){
			return getPageNo() - 1;
		}
		
		return getPageNo();
	}
	
	public int getNextPage(){
		if(isHasNext()){
			return getPageNo() + 1;
		}
		
		return getPageNo();
	}
	@Override
	public String toString() {
		return "Page [list=" + list + "]";
	}
}
