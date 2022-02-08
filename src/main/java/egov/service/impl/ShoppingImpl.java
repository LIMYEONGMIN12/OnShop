package egov.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service.CartVO;
import egov.service.MileageVO;
import egov.service.OrderVO;
import egov.service.ReturnVO;
import egov.service.ShoppingService;
import egov.service.ShoppingUserVO;
import egov.service.WishlistVO;

@Service("shoppingService")
public class ShoppingImpl implements ShoppingService{
	@Resource(name="shoppingDAO")
	ShoppingDAO shoppingDAO;

	
	//회원가입
	@Override
	public String insertUser(ShoppingUserVO vo) throws Exception {
		return shoppingDAO.insertUser(vo);
	}


	//회원가입 환영마일리지
	@Override
	public String insertWelcomeMileage(ShoppingUserVO vo) throws Exception {
		return shoppingDAO.insertWelcomeMileage(vo);
	}
	
	//아이디 체크
	@Override
	public int userIdCheck(ShoppingUserVO vo) throws Exception {
		return shoppingDAO.userIdCheck(vo);
	}


	//로그인
	@Override
	public ShoppingUserVO userLogin(ShoppingUserVO vo) throws Exception {
		return shoppingDAO.userLogin(vo);
	}

	//회원 정보 수정
	@Override
	public int updateUserInfo(ShoppingUserVO vo) throws Exception {
		return shoppingDAO.updateUserInfo(vo);
	}


	@Override
	public int selectMileageTotal(MileageVO vo) {
		return shoppingDAO.selectMileageTotal(vo);
	}


	@Override
	public List<?> selectMileageList(MileageVO vo) {
		return shoppingDAO.selectMileageList(vo);
	}


	@Override
	public int updateUserAddr(ShoppingUserVO vo) throws Exception {
		return shoppingDAO.updateUserAddr(vo);
	}


	@Override
	public int selectfindUserId(ShoppingUserVO vo) throws Exception {
		return shoppingDAO.selectfindUserId(vo);
	}


	@Override
	public ShoppingUserVO selectfindUserIdResult(ShoppingUserVO vo) throws Exception {
		return shoppingDAO.selectfindUserIdResult(vo);
	}


	@Override
	public int userdupleIdCheck(String userId) throws Exception {
		return shoppingDAO.userdupleIdCheck(userId);
	}


	@Override
	public String insertWishList(WishlistVO vo) throws Exception {
		return shoppingDAO.insertWishList(vo);
	}


	@Override
	public int selectCountlike(WishlistVO vo) throws Exception {
		return  shoppingDAO.selectCountlike(vo);
	}


	@Override
	public void deleteCountlike(WishlistVO vo) {
		shoppingDAO.deleteCountlike(vo);
	}


	@Override
	public List<?> selectUserWishlist(WishlistVO vo) throws Exception {
		return shoppingDAO.selectUserWishlist(vo);
	}


	@Override
	public void updatePtblPluswish(WishlistVO vo) throws Exception {
		shoppingDAO.updatePtblPluswish(vo);
	}


	@Override
	public void updatePtblMinuswish(WishlistVO vo) throws Exception {
		shoppingDAO.updatePtblMinuswish(vo);
	}


	@Override
	public List<?> selectOrderList(OrderVO vo) throws Exception {
		return shoppingDAO.selectOrderList(vo);
	}


	@Override
	public int selectuserOrderTotal(OrderVO vo) throws Exception {
		return shoppingDAO.selectuserOrderTotal(vo);
	}


	@Override
	public OrderVO selectUserReturnList(OrderVO vo) throws Exception {
		return shoppingDAO.selectUserReturnList(vo);
	}


	@Override
	public String insertUserReturn(ReturnVO vo) throws Exception {
		return shoppingDAO.insertUserReturn(vo);
	}


	@Override
	public void updateOrderState(ReturnVO vo) throws Exception {
		shoppingDAO.updateOrderState(vo); 
	}


	@Override
	public ShoppingUserVO selectuserInfo(ShoppingUserVO uvo) throws Exception {
		return 	shoppingDAO.selectuserInfo(uvo); 
	} 

	

	
	
	


	




}
