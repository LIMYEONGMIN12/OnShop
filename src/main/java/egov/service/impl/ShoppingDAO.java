package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service.CartVO;
import egov.service.MileageVO;
import egov.service.OrderVO;
import egov.service.ReturnVO;
import egov.service.ShoppingUserVO;
import egov.service.WishlistVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("shoppingDAO")
public class ShoppingDAO extends EgovAbstractDAO {
 
	
	//회원가입
	public String insertUser(ShoppingUserVO vo) {
		return (String)  insert("shoppingDAO.insertUser",vo);
	}

	//회원가입 마일리지 
	public String insertWelcomeMileage(ShoppingUserVO vo) {
		return (String) insert("shoppingDAO.insertWelcomeMileage",vo);
	}

	//중복 체크
	public int userIdCheck(ShoppingUserVO vo) {
		return (int) select("shoppingDAO.userIdCheck",vo);
	}

	
	//로그인 
	public ShoppingUserVO userLogin(ShoppingUserVO vo) {
		return (ShoppingUserVO) select ("shoppingDAO.userLogin",vo);
	}

	
	//회원정보수정 
	public int updateUserInfo(ShoppingUserVO vo) {
		return (int) update("shoppingDAO.updateUserInfo",vo);
	}
	
	//마일리지 갯수 검색
	public int selectMileageTotal(MileageVO vo) {
		return (int) select("shoppingDAO.selectMileageTotal",vo);
	}
	
	//마일리지 리스트 출력
	public List<?> selectMileageList(MileageVO vo) {
		return list("shoppingDAO.selectMileageList",vo);
	}

	//배송지 주소 변경 
	public int updateUserAddr(ShoppingUserVO vo) {
		return (int) update("shoppingDAO.updateUserAddr",vo);
	}

	//아이디 찾기 ( 메일 ,  이름 )
	public int selectfindUserId(ShoppingUserVO vo) {
		return  (int) select("shoppingDAO.selectfindUserId",vo);
	}

	//아이디찾기 결과창
	public ShoppingUserVO selectfindUserIdResult(ShoppingUserVO vo) {
		return (ShoppingUserVO) select ("shoppingDAO.selectfindUserIdResult",vo);
	}

	public int userdupleIdCheck(String userId) {
		return (int) select("shoppingDAO.userdupleIdCheck",userId);
	}

	public String insertWishList(WishlistVO vo) {
		return (String) insert("shoppingDAO.insertWishList",vo);
	}

	public int selectCountlike(WishlistVO vo) {
		return (int) select("shoppingDAO.selectCountlike",vo);
	}

	public void deleteCountlike(WishlistVO vo) {
		 delete("shoppingDAO.deleteCountlike",vo);
	}

	public List<?> selectUserWishlist(WishlistVO vo) {
		return list("shoppingDAO.selectUserWishlist",vo);
	}

	public void updatePtblPluswish(WishlistVO vo) {
		update("shoppingDAO.updatePtblPluswish",vo);
	}

	public void updatePtblMinuswish(WishlistVO vo) {
		update("shoppingDAO.updatePtblMinuswish",vo);
	}

	public List<?> selectOrderList(OrderVO vo) {
		return list("shoppingDAO.selectOrderList",vo);
	}

	public int selectuserOrderTotal(OrderVO vo) {
		return (int) select("shoppingDAO.selectuserOrderTotal",vo);
	}

	public OrderVO selectUserReturnList(OrderVO vo) {
		return (OrderVO) select("shoppingDAO.selectUserReturnList",vo);
	}

	public String insertUserReturn(ReturnVO vo) {
		return (String) insert("shoppingDAO.insertUserReturn",vo);
	}

	public void updateOrderState(ReturnVO vo) {
		update("shoppingDAO.updateOrderState",vo);
	}

	public ShoppingUserVO selectuserInfo(ShoppingUserVO uvo) {
		return (ShoppingUserVO) select("shoppingDAO.selectuserInfo",uvo);
	}

	
	
	

}
