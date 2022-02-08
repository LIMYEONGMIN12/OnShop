package egov.service;

import java.util.List;

public interface CartService {

	
	//장바구니추가
	String insertShoppingCart(CartVO vo)throws Exception;

	
	//장바구니 리스트 출력
	List<?> userCartList(CartVO vo)throws Exception;

	
	//장바구니 총 가격 
	String usertotalPrice(CartVO vo)throws Exception;


	ShoppingUserVO selectUserInfo(ShoppingUserVO uvo)throws Exception;



	int selectProductCount(CartVO vo)throws Exception;


	int updateProductCount(CartVO vo)throws Exception;


	int updatePcount(CartVO vo)throws Exception;
	int updatePcountminus(CartVO vo)throws Exception;

	int deleteproduct(CartVO vo)throws Exception;


	int selectCountuser(CartVO vo)throws Exception;


	int deleteproductAll(String datas)throws Exception;


	int deleteCartReset(CartVO vo) throws Exception;


	//개별 상품 (unq)
	CartVO selectCartUnq(CartVO vo)throws Exception;


	String insertOrderSave(OrderVO vo)throws Exception;

	//마일리지(총)
	int usertotalMileage(CartVO vo)throws Exception;


	void insertPlusMileage(OrderVO vo)throws Exception;


	void updateUserMileage(OrderVO vo)throws Exception;


	void insertMinusMileage(OrderVO vo)throws Exception; 


	void updateMUserMileage(OrderVO vo)throws Exception;


	void deleteUserCart(OrderVO vo)throws Exception;


	void updatePlusPcount(OrderVO vo)throws Exception;


	void updateMinusPcount(OrderVO vo)throws Exception; 


	



	






}
