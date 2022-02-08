package egov.service;

public class MileageVO {
	String userId;
	String mileStatus;
	int mileCost;
	String mileContent;
	String mileDate;
	
	
	//페이지
	int page_unit = 10 ;	//한화면에 데이터 출력 단위
	int page_size = 10 ; //한화면에서 표기할 페이지 단위
	
	int page_no = 1;  //출력할 현페이지 번호 
	int s_no;
	int e_no;
	
	int total;
	int total_page;
	
	int userMileage;
	
	
	
	
	
	
	
	
	
	public int getUserMileage() {
		return userMileage;
	}
	public void setUserMileage(int userMileage) {
		this.userMileage = userMileage;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getMileStatus() {
		return mileStatus;
	}
	public void setMileStatus(String mileStatus) {
		this.mileStatus = mileStatus;
	}
	public int getMileCost() {
		return mileCost;
	}
	public void setMileCost(int mileCost) {
		this.mileCost = mileCost;
	}
	public String getMileContent() {
		return mileContent;
	}
	public void setMileContent(String mileContent) {
		this.mileContent = mileContent;
	}
	public String getMileDate() {
		return mileDate;
	}
	public void setMileDate(String mileDate) {
		this.mileDate = mileDate;
	}
	public int getPage_unit() {
		return page_unit;
	}
	public void setPage_unit(int page_unit) {
		this.page_unit = page_unit;
	}
	public int getPage_size() {
		return page_size;
	}
	public void setPage_size(int page_size) {
		this.page_size = page_size;
	}
	public int getPage_no() {
		return page_no;
	}
	public void setPage_no(int page_no) {
		this.page_no = page_no;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public int getE_no() {
		return e_no;
	}
	public void setE_no(int e_no) {
		this.e_no = e_no;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getTotal_page() {
		return total_page;
	}
	public void setTotal_page(int total_page) {
		this.total_page = total_page;
	}

	
	
	
	
	
}
