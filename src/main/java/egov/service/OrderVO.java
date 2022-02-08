package egov.service;

public class OrderVO {
	int unq;
	String orderId;
	String orderName;
	String orderPhone;
	String orderZipcode;
	String orderAddr1;
	String orderAddr2;
	String orderMemo;
	String orderPunq;
	String orderPname;
	String orderPcount;
	String orderPfile;
	String orderPrice;
	String orderDate;
	
	int totalMileage;
	int mileCost;
	int userMileage;
	String orderPonePrice;
	String orderStatus;

	int page_unit = 10 ;	//한화면에 데이터 출력 단위
	int page_size = 10 ; //한화면에서 표기할 페이지 단위
	
	int page_no = 1;
	int s_no = 1;
	int e_no = 10;
	
	int total;
	int total_page;
	
	String s_field;
	String s_text;

	String unq1;       	// 기본 null
	String unq2;		// 기본 null
	String unq3;
	
	String selboxDirect;
	
	
	
	
	
	
	
	public String getSelboxDirect() {
		return selboxDirect;
	}
	public void setSelboxDirect(String selboxDirect) {
		this.selboxDirect = selboxDirect;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
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
	public String getS_field() {
		return s_field;
	}
	public void setS_field(String s_field) {
		this.s_field = s_field;
	}
	public String getS_text() {
		return s_text;
	}
	public void setS_text(String s_text) {
		this.s_text = s_text;
	}
	public String getUnq1() {
		return unq1;
	}
	public void setUnq1(String unq1) {
		this.unq1 = unq1;
	}
	public String getUnq2() {
		return unq2;
	}
	public void setUnq2(String unq2) {
		this.unq2 = unq2;
	}
	public String getUnq3() {
		return unq3;
	}
	public void setUnq3(String unq3) {
		this.unq3 = unq3;
	}
	public String getOrderPonePrice() {
		return orderPonePrice;
	}
	public void setOrderPonePrice(String orderPonePrice) {
		this.orderPonePrice = orderPonePrice;
	}
	public String getOrderPname() {
		return orderPname;
	}
	public void setOrderPname(String orderPname) {
		this.orderPname = orderPname;
	}
	public int getUserMileage() {
		return userMileage;
	}
	public void setUserMileage(int userMileage) {
		this.userMileage = userMileage;
	}
	public int getMileCost() {
		return mileCost;
	}
	public void setMileCost(int mileCost) {
		this.mileCost = mileCost;
	}
	public int getTotalMileage() {
		return totalMileage;
	}
	public void setTotalMileage(int totalMileage) {
		this.totalMileage = totalMileage;
	}
	
	
	public int getUnq() {
		return unq;
	}
	public void setUnq(int unq) {
		this.unq = unq;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	public String getOrderPhone() {
		return orderPhone;
	}
	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}
	public String getOrderZipcode() {
		return orderZipcode;
	}
	public void setOrderZipcode(String orderZipcode) {
		this.orderZipcode = orderZipcode;
	}
	public String getOrderAddr1() {
		return orderAddr1;
	}
	public void setOrderAddr1(String orderAddr1) {
		this.orderAddr1 = orderAddr1;
	}
	public String getOrderAddr2() {
		return orderAddr2;
	}
	public void setOrderAddr2(String orderAddr2) {
		this.orderAddr2 = orderAddr2;
	}
	public String getOrderMemo() {
		return orderMemo;
	}
	public void setOrderMemo(String orderMemo) {
		this.orderMemo = orderMemo;
	}
	public String getOrderPunq() {
		return orderPunq;
	}
	public void setOrderPunq(String orderPunq) {
		this.orderPunq = orderPunq;
	}
	public String getOrderPcount() {
		return orderPcount;
	}
	public void setOrderPcount(String orderPcount) {
		this.orderPcount = orderPcount;
	}
	public String getOrderPfile() {
		return orderPfile;
	}
	public void setOrderPfile(String orderPfile) {
		this.orderPfile = orderPfile;
	}
	public String getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(String orderPrice) {
		this.orderPrice = orderPrice;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
  
   
  
}
