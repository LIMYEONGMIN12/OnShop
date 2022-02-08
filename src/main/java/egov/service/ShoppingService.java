package egov.service;

import java.util.List;
import java.util.Map;

public interface ShoppingService {

	
	//회원 가입 
	String insertUser(ShoppingUserVO vo)throws Exception;

	//회원가입  환영  마일리지(마일리지테이블)
	String insertWelcomeMileage(ShoppingUserVO vo)throws Exception;

	//아이디 체크 
	int userIdCheck(ShoppingUserVO vo)throws Exception;

	//로그인
	ShoppingUserVO userLogin(ShoppingUserVO vo)throws Exception;

	//회원정보 수정 
	int updateUserInfo(ShoppingUserVO vo)throws Exception;
	
	//마일리지 총개수 
	int selectMileageTotal(MileageVO vo)throws Exception;

	//마일리지  리스트
	List<?> selectMileageList(MileageVO vo)throws Exception;

	//배송지 변경
	int updateUserAddr(ShoppingUserVO vo)throws Exception;

	//아이디 찾기 ( 이름 , 이메일 ) 입력 
	int selectfindUserId(ShoppingUserVO vo)throws Exception;

	//아이디찾기
	ShoppingUserVO selectfindUserIdResult(ShoppingUserVO vo)throws Exception;

	//중복체킹--2
	int userdupleIdCheck(String userId)throws Exception;

	
	//좋아요
	String insertWishList(WishlistVO vo)throws Exception;

	
	//좋아요 있는지 개수 파악 
	int selectCountlike(WishlistVO vo)throws Exception;

	
	//좋아요 제거
	void deleteCountlike(WishlistVO vo)throws Exception;

	
	//찜 리스트 출력
	List<?> selectUserWishlist(WishlistVO vo)throws Exception;

	//좋아요수 증가 (상품 tbl)
	void updatePtblPluswish(WishlistVO vo)throws Exception;

	//좋아요수 감소 (상품 tbl)
	void updatePtblMinuswish(WishlistVO vo)throws Exception;

	//사용자 주문내역 조회
	List<?> selectOrderList(OrderVO vo)throws Exception;

	//사용자 주문내역 건수 total 갯수 출력
	int selectuserOrderTotal(OrderVO vo)throws Exception;

	//교환 반품 대상 출력
	OrderVO selectUserReturnList(OrderVO vo)throws Exception;

	String insertUserReturn(ReturnVO vo)throws Exception;

	void updateOrderState(ReturnVO vo)throws Exception;

	ShoppingUserVO selectuserInfo(ShoppingUserVO uvo)throws Exception;


	

	


	


	
}
