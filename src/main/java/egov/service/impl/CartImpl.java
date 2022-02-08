package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service.CartService;
import egov.service.CartVO;
import egov.service.OrderVO;
import egov.service.ShoppingUserVO;

@Service("cartService")
public class CartImpl implements CartService {
	@Resource(name="cartDAO")
	CartDAO cartDAO;

	@Override
	public String insertShoppingCart(CartVO vo) throws Exception {
		return cartDAO.insertShoppingCart(vo);
	}

	@Override
	public List<?> userCartList(CartVO vo) throws Exception {
		return cartDAO.userCartList(vo);
	}

	@Override
	public String usertotalPrice(CartVO vo) throws Exception {
		return cartDAO.usertotalPrice(vo);
	}

	@Override
	public ShoppingUserVO selectUserInfo(ShoppingUserVO uvo) {
		return  cartDAO.selectUserInfo(uvo);
	}

	@Override
	public int selectProductCount(CartVO vo) throws Exception {
		return cartDAO.selectProductCount(vo);
	}

	@Override
	public int updateProductCount(CartVO vo) throws Exception {
		return cartDAO.updateProductCount(vo);
	}

	@Override
	public int updatePcount(CartVO vo) throws Exception {
		return cartDAO.updatePcount(vo);
	}


	@Override
	public int updatePcountminus(CartVO vo) throws Exception {
		return  cartDAO.updatePcountminus(vo);
	}
	
	@Override
	public int deleteproduct(CartVO vo) throws Exception {
		return cartDAO.deleteproduct(vo);
	}

	@Override
	public int selectCountuser(CartVO vo) throws Exception {
		return cartDAO.selectCountuser(vo);
	}

	@Override
	public int deleteproductAll(String datas) throws Exception {
		return cartDAO.deleteproductAll(datas);
	}

	@Override
	public int deleteCartReset(CartVO vo) throws Exception {
		return cartDAO.deleteCartReset(vo);
	}

	@Override
	public CartVO selectCartUnq(CartVO vo) throws Exception {
		return cartDAO.selectCartUnq(vo);
	}

	@Override
	public String insertOrderSave(OrderVO vo) throws Exception {
		return cartDAO.insertOrderSave(vo);
	}

	@Override
	public int usertotalMileage(CartVO vo) throws Exception {
		return cartDAO.usertotalMileage(vo);
	}

	@Override
	public void insertPlusMileage(OrderVO vo) throws Exception {
		cartDAO.insertPlusMileage(vo);
	}

	@Override
	public void updateUserMileage(OrderVO vo) throws Exception {
		cartDAO.updateUserMileage(vo);
	}

	@Override
	public void insertMinusMileage(OrderVO vo) throws Exception {
		cartDAO.insertMinusMileage(vo);

	}

	@Override
	public void updateMUserMileage(OrderVO vo) throws Exception {
		cartDAO.updateMUserMileage(vo); 

	}

	@Override
	public void deleteUserCart(OrderVO vo) throws Exception {
		cartDAO.deleteUserCart(vo);
	}

	@Override
	public void updatePlusPcount(OrderVO vo) throws Exception {
		cartDAO.updatePlusPcount(vo);
	}

	@Override
	public void updateMinusPcount(OrderVO vo) throws Exception {
		cartDAO.updateMinusPcount(vo);
	}


	


}
