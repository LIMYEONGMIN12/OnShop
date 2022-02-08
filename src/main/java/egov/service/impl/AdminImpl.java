package egov.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egov.service.AdminService;
import egov.service.BoardVO;
import egov.service.OrderVO;
import egov.service.ReturnVO;
import egov.service.ShoppingUserVO;

@Service("adminService")
public class AdminImpl implements AdminService{
	@Resource(name="adminDAO")
	AdminDAO adminDAO;


	
	@Override
	public List<?> selectUserList(ShoppingUserVO vo) throws Exception {
		return adminDAO.selectUserList(vo);
	}

	@Override
	public int selectUserTotal(ShoppingUserVO vo) throws Exception {
		return adminDAO.selectUserTotal(vo);
	}

	@Override
	public String insertNboard(BoardVO vo) throws Exception {
		return adminDAO.insertNboard(vo);
	}

	@Override
	public List<?> selectBoardList(BoardVO vo) throws Exception {
		return adminDAO.selectBoardList(vo);
	}

	@Override
	public int selectBoardTotal(BoardVO vo) throws Exception {
		return adminDAO.selectBoardTotal(vo);
	}

	@Override
	public List<?> selectadminOrderList(OrderVO vo) throws Exception {
		return adminDAO.selectadminOrderList(vo);
	}

	@Override
	public int selectOrderListTotal(OrderVO vo) throws Exception {
		return adminDAO.selectOrderListTotal(vo);
	}

	@Override
	public void updateBoardHits(BoardVO vo) throws Exception {
		adminDAO.updateBoardHits(vo); 
	}

	@Override
	public BoardVO selectBoardDetail(BoardVO vo) throws Exception {
		return adminDAO.selectBoardDetail(vo); 
	}

	@Override
	public int deleteBoard(BoardVO vo) throws Exception {
		return adminDAO.deleteBoard(vo); 
	}

	@Override
	public int updateOrderState(OrderVO vo) throws Exception {
		return adminDAO.updateOrderState(vo);
	}

	@Override
	public int updateBoard(BoardVO vo) throws Exception {
		return adminDAO.updateBoard(vo);
	}

	@Override
	public int selectReturnListTotal(ReturnVO vo) throws Exception {
		return adminDAO.selectReturnListTotal(vo);
	}

	@Override 
	public List<?> selectadminReturnList(ReturnVO vo) throws Exception {
		return adminDAO.selectadminReturnList(vo);
	}

	
	
	
	
	
	
}
