package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service.CartVO;
import egov.service.OrderVO;
import egov.service.ShoppingUserVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("cartDAO")
public class CartDAO extends EgovAbstractDAO {

	public String insertShoppingCart(CartVO vo) {
		return (String) insert("cartDAO.insertShoppingCart",vo);

	}

	public List<?> userCartList(CartVO vo) {
		return list("cartDAO.userCartList",vo);

	}

	public String usertotalPrice(CartVO vo) {
		return (String) select("cartDAO.usertotalPrice",vo);
	}

	public ShoppingUserVO selectUserInfo(ShoppingUserVO uvo) {
		return  (ShoppingUserVO) select ("cartDAO.selectUserInfo",uvo);
	}

	public int selectProductCount(CartVO vo) {
		return (int)select("cartDAO.selectProductCount",vo);
	}

	public int updateProductCount(CartVO vo) {
		return (int)update("cartDAO.updateProductCount",vo);
	}

	public int updatePcount(CartVO vo) {
		return (int)update("cartDAO.updatePcount",vo);
	}

	public int updatePcountminus(CartVO vo) {
		return (int)update("cartDAO.updatePcountminus",vo);
	}
	
	public int deleteproduct(CartVO vo) {
		return (int)delete("cartDAO.deleteproduct",vo);
	}

	public int selectCountuser(CartVO vo) {
		return (int)select("cartDAO.selectCountuser",vo);
	}

	public int deleteproductAll(String datas) {
		return (int)delete("cartDAO.deleteproductAll",datas);
	}

	public int deleteCartReset(CartVO vo) {
		return (int)delete("cartDAO.deleteCartReset",vo);
	}

	public CartVO selectCartUnq(CartVO vo) {
		return (CartVO) select("cartDAO.selectCartUnq",vo);
	}

	public String insertOrderSave(OrderVO vo) {
		return (String) insert("cartDAO.insertOrderSave",vo);
	}

	public int usertotalMileage(CartVO vo) {
		return (int) select("cartDAO.usertotalMileage",vo);
	}

	public void insertPlusMileage(OrderVO vo) {
		insert("cartDAO.insertPlusMileage",vo);
	}

	public void updateUserMileage(OrderVO vo) {
		update("cartDAO.updateUserMileage",vo);
	}

	public void insertMinusMileage(OrderVO vo) {
		insert("cartDAO.insertMinusMileage",vo);
	}

	public void updateMUserMileage(OrderVO vo) {
		update("cartDAO.updateMUserMileage",vo);
	}

	public void deleteUserCart(OrderVO vo) {
		delete("cartDAO.deleteUserCart",vo);
	}

	public void updatePlusPcount(OrderVO vo) {
		update("cartDAO.updatePlusPcount",vo);
	}

	public void updateMinusPcount(OrderVO vo) {
		update("cartDAO.updateMinusPcount",vo);
	}

	

	



	
}
