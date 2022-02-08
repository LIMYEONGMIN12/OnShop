package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service.ProductVO;
import egov.service.WishlistVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("productDAO")
public class ProductDAO extends EgovAbstractDAO{

	
	//상품등록
	public String insertProduct(ProductVO vo) {

		return (String) insert("productDAO.insertProduct",vo);
	}

	//메인화면 상품리스트
	public List<?> selectMainList(ProductVO vo) {
		return list("productDAO.selectMainList",vo);
	}

	//카테고리 별 리스트 
	public List<?> selectGubunList(ProductVO vo) {
		return list("productDAO.selectGubunList",vo);
	}

	//상품 총 개수 
	public int selectProductTotal(ProductVO vo) {
		return (int) select ("productDAO.selectProductTotal",vo);
	}

	//상품 리스트 출력 
	public List<?> selectProductList(ProductVO vo) {
		return list("productDAO.selectProductList",vo);
	}

	public ProductVO selectProductDetail(ProductVO vo) {
		return (ProductVO) select("productDAO.selectProductDetail",vo);
	}

	public List<?> selectSizeColor(String productname) {
		return list("productDAO.selectSizeColor", productname);
	}

	public int selectCountWish(WishlistVO wvo) {
		return (int) select("productDAO.selectCountWish",wvo);
	}

	public List<?> selectMainListnew(ProductVO vo) {
		return list("productDAO.selectMainListnew",vo);
	}

	
	


}
