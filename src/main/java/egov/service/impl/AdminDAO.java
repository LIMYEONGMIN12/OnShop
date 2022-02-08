package egov.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egov.service.BoardVO;
import egov.service.OrderVO;
import egov.service.ReturnVO;
import egov.service.ShoppingUserVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("adminDAO")
public class AdminDAO extends EgovAbstractDAO{


	
	public List<?> selectUserList(ShoppingUserVO vo) {
		return list("adminDAO.selectUserList",vo);
	}
	public int selectUserTotal(ShoppingUserVO vo) {
		return (int) select("adminDAO.selectUserTotal",vo);
	}
	public String insertNboard(BoardVO vo) {
		return (String) insert("adminDAO.insertNboard",vo);
	}
	
	public List<?> selectBoardList(BoardVO vo) {
		return list("adminDAO.selectBoardList",vo);
	}
	
	public int selectBoardTotal(BoardVO vo) {
		return (int) select("adminDAO.selectBoardTotal",vo);
	}
	public List<?> selectadminOrderList(OrderVO vo) {
		return list("adminDAO.selectadminOrderList",vo);
	}
	public int selectOrderListTotal(OrderVO vo) {
		return (int) select("adminDAO.selectOrderListTotal",vo);
	}
	public void updateBoardHits(BoardVO vo) {
		update("adminDAO.updateBoardHits",vo);
	}
	public BoardVO selectBoardDetail(BoardVO vo) {
		return (BoardVO) select("adminDAO.selectBoardDetail",vo);
	}
	public int deleteBoard(BoardVO vo) {
		return (int) delete("adminDAO.deleteBoard",vo);
	}
	public int updateOrderState(OrderVO vo) {
		return (int) update("adminDAO.updateOrderState",vo);
	}
	public int updateBoard(BoardVO vo) {
		return (int) update("adminDAO.updateBoard",vo);
	}
	public int selectReturnListTotal(ReturnVO vo) {
		return (int) select("adminDAO.selectReturnListTotal",vo);
	}
	public List<?> selectadminReturnList(ReturnVO vo) {
		return list("adminDAO.selectadminReturnList",vo);
	}
	 

}
