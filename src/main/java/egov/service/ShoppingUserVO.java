package egov.service;

public class ShoppingUserVO {
	String userId;
	String userPwd;
	String userName;
	String userNickname;
	String userPhone;
	String userZipcode;
	String userAddr1;
	String userAddr2;
	String userEmail;
	String userBirth;
	String userGender;
	String userGrade;
	int userBought;
	String userRdate;
	int userMileage;
	
	
	
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
	
	private String pattern;
	

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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserZipcode() {
		return userZipcode;
	}
	public void setUserZipcode(String userZipcode) {
		this.userZipcode = userZipcode;
	}
	public String getUserAddr1() {
		return userAddr1;
	}
	public void setUserAddr1(String userAddr1) {
		this.userAddr1 = userAddr1;
	}
	public String getUserAddr2() {
		return userAddr2;
	}
	public void setUserAddr2(String userAddr2) {
		this.userAddr2 = userAddr2;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}
	public int getUserBought() {
		return userBought;
	}
	public void setUserBought(int userBought) {
		this.userBought = userBought;
	}
	public String getUserRdate() {
		return userRdate;
	}
	public void setUserRdate(String userRdate) {
		this.userRdate = userRdate;
	}
	public int getUserMileage() {
		return userMileage;
	}
	public void setUserMileage(int userMileage) {
		this.userMileage = userMileage;
	}
	public boolean matches(String pattern) {
		this.pattern = pattern;
		return false;
	}

	
	
	
}
