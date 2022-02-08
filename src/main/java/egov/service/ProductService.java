package egov.service;

import java.util.List;

public interface ProductService {

	//상품등록
	String insertProduct(ProductVO vo) throws Exception;

	//메인페이지
	List<?> selectMainList(ProductVO vo)throws Exception;

	//구분
	List<?> selectGubunList(ProductVO vo)throws Exception;

	//상품 총개수 
	int selectProductTotal(ProductVO vo)throws Exception;

	//상품  리스트
	List<?> selectProductList(ProductVO vo)throws Exception;

	//상품 상세
	ProductVO selectProductDetail(ProductVO vo)throws Exception;

	List<?> selectSizeColor(String productname)throws Exception;

	int selectCountWish(WishlistVO wvo)throws Exception;

	List<?> selectMainListnew(ProductVO vo)throws Exception;

	

	
	

	



}
