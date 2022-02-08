package egov.service;

public class ProductVO {
	int productUnq;
	String productId;
	String categoryCode;
	String productName;
	String productSize;
	String productColor;
	int productPrice;
	int productStock;
	String productExplain;
	String productSale;
	String productWish;
	String productSell;
	String filename;
	String filesize;
	String productRdate;
	String productUdate;
	String gubun;
	String productPrice2;
	
	
	

	public String getProductPrice2() {
		return productPrice2;
	}
	public void setProductPrice2(String productPrice2) {
		this.productPrice2 = productPrice2;
	}
	int page_unit = 10 ;	//한화면에 데이터 출력 단위
	int page_size = 10 ; 	//한화면에서 표기할 페이지 단위
	
	int page_no = 1;
	int s_no = 1;
	int e_no = 10;
	
	int total;
	int total_page;
	
	String s_field;
	String s_text;

	String unq1;       	
	String unq2;		
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
	public String getGubun() {
		return gubun;
	}
	public void setGubun(String gubun) {
		this.gubun = gubun;
	}
	public int getProductUnq() {
		return productUnq;
	}
	public void setProductUnq(int productUnq) {
		this.productUnq = productUnq;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public String getProductColor() {
		return productColor;
	}
	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getProductStock() {
		return productStock;
	}
	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}
	public String getProductExplain() {
		return productExplain;
	}
	public void setProductExplain(String productExplain) {
		this.productExplain = productExplain;
	}
	public String getProductSale() {
		return productSale;
	}
	public void setProductSale(String productSale) {
		this.productSale = productSale;
	}
	public String getProductWish() {
		return productWish;
	}
	public void setProductWish(String productWish) {
		this.productWish = productWish;
	}
	public String getProductSell() {
		return productSell;
	}
	public void setProductSell(String productSell) {
		this.productSell = productSell;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilesize() {
		return filesize;
	}
	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}
	public String getProductRdate() {
		return productRdate;
	}
	public void setProductRdate(String productRdate) {
		this.productRdate = productRdate;
	}
	public String getProductUdate() {
		return productUdate;
	}
	public void setProductUdate(String productUdate) {
		this.productUdate = productUdate;
	}
	
	
	
	
}
