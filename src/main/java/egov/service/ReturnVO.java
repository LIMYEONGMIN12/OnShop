package egov.service;

public class ReturnVO {
	int unq;
	String selectreturn;
	String returnpname;
	String returnreason;
	int returnunq;
	String returnid;
	String returndate;
	
	
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
	public String getReturndate() {
		return returndate;
	}
	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}
	public String getReturnid() {
		return returnid;
	}
	public void setReturnid(String returnid) {
		this.returnid = returnid;
	}
	public int getUnq() {
		return unq;
	}
	public void setUnq(int unq) {
		this.unq = unq;
	}
	public String getSelectreturn() {
		return selectreturn;
	}
	public void setSelectreturn(String selectreturn) {
		this.selectreturn = selectreturn;
	}
	public String getReturnpname() {
		return returnpname;
	}
	public void setReturnpname(String returnpname) {
		this.returnpname = returnpname;
	}
	public String getReturnreason() {
		return returnreason;
	}
	public void setReturnreason(String returnreason) {
		this.returnreason = returnreason;
	}
	public int getReturnunq() {
		return returnunq;
	}
	public void setReturnunq(int returnunq) {
		this.returnunq = returnunq;
	}
	
	
	
	
	
}
