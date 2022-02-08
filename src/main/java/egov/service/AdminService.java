package egov.service;

import java.util.List;

public interface AdminService {

	//유저리스트
	List<?> selectUserList(ShoppingUserVO vo) throws Exception;
	
	//유저 회원수 출력
	int selectUserTotal(ShoppingUserVO vo)throws Exception;
	
	//공지사항 저장
	String insertNboard(BoardVO vo)throws Exception;

	List<?> selectBoardList(BoardVO vo)throws Exception;

	int selectBoardTotal(BoardVO vo)throws Exception;

	List<?> selectadminOrderList(OrderVO vo)throws Exception;

	int selectOrderListTotal(OrderVO vo)throws  Exception;

	void updateBoardHits(BoardVO vo)throws  Exception;

	BoardVO selectBoardDetail(BoardVO vo)throws  Exception;

	int deleteBoard(BoardVO vo)throws  Exception;

	int updateOrderState(OrderVO vo)throws  Exception;

	int updateBoard(BoardVO vo)throws  Exception;

	int selectReturnListTotal(ReturnVO vo)throws  Exception; 

	List<?> selectadminReturnList(ReturnVO vo)throws  Exception;

 
}
