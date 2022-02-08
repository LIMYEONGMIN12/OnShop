package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service.ProductService;
import egov.service.ProductVO;
import egov.service.WishlistVO;

@Service("productService")
public class ProductImpl implements ProductService{
	@Resource(name="productDAO")
	ProductDAO productDAO;

	//상품입력
	@Override
	public String insertProduct(ProductVO vo) throws Exception {
		return productDAO.insertProduct(vo);
	}

	//메인화면 상품출력
	@Override
	public List<?> selectMainList(ProductVO vo) throws Exception {
		return productDAO.selectMainList(vo);
	}

	//구분(카테고리별 리스트)
	@Override
	public List<?> selectGubunList(ProductVO vo) throws Exception {
		return productDAO.selectGubunList(vo);
	}

	//상품 총 개수
	@Override
	public int selectProductTotal(ProductVO vo) throws Exception {
		return productDAO.selectProductTotal(vo);
	}

	//상품 리스트 출력
	@Override
	public List<?> selectProductList(ProductVO vo) throws Exception {
		return productDAO.selectProductList(vo);
	}

	@Override
	public ProductVO selectProductDetail(ProductVO vo) throws Exception {
		return productDAO.selectProductDetail(vo);
	}

	@Override
	public List<?> selectSizeColor(String productname) throws Exception {
		return productDAO.selectSizeColor(productname);
	}

	@Override
	public int selectCountWish(WishlistVO wvo) throws Exception {
		return productDAO.selectCountWish(wvo);
	}

	@Override
	public List<?> selectMainListnew(ProductVO vo) throws Exception {
		return productDAO.selectMainListnew(vo);
	}


	

	
 
	
	
	
	
	
}
