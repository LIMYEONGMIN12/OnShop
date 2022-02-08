package egov.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service.AdminService;
import egov.service.BoardVO;
import egov.service.OrderVO;
import egov.service.ReturnVO;
import egov.service.ShoppingService;
import egov.service.ShoppingUserVO;

@Controller
public class AdminController {

	@Resource(name = "adminService")
	AdminService adminService;

	@Resource(name="shoppingService")
	ShoppingService shoppingService;
	
	/* 관리자 페이지 화면 */
	@RequestMapping("adminIndex.do")
	public String adminIndex() throws Exception {
		return "admin/adminIndex";
	}

	/* 회원 목록 */
	@RequestMapping("adminUserList.do")
	public String selectAdminUserList(ShoppingUserVO vo, Model model) throws Exception {

		int page_no = vo.getPage_no(); // 1->1 ;; 2->11 ;; 3->21
		int page_unit = vo.getPage_unit();

		int s_no = (page_no - 1) * page_unit + 1;
		int e_no = s_no + (page_unit - 1);

		vo.setS_no(s_no);
		vo.setE_no(e_no);
		vo.setUnq3("0");

		int total = adminService.selectUserTotal(vo);
		int total_page = (int) Math.ceil((double) total / 10);
		vo.setTotal(total);
		vo.setTotal_page(total_page);
		List<?> list = adminService.selectUserList(vo);

		// 총 페이지 수, (double)15/10 -> 1.5 ;; ceil(1.5)->2.0 ;; (int) 2.0 -> 2
		int rownum = total - (page_no - 1) * 10;

		model.addAttribute("s_field", vo.getS_field());
		model.addAttribute("s_text", vo.getS_text());

		model.addAttribute("list", list);
		model.addAttribute("total", total);
		model.addAttribute("total_page", total_page);
		model.addAttribute("rownum", rownum);

		return "admin/userList";
	}

	/* 공지사항 */
	@RequestMapping("boardList.do")
	public String boardList(BoardVO vo, Model model) throws Exception {
		
		
		int page_no = vo.getPage_no();  // 1->1 ;; 2->11 ;; 3->21
		int s_no = (page_no-1)*10 + 1;
		int e_no = s_no + (10-1);
		
		vo.setS_no(s_no);
		vo.setE_no(e_no);
		
		
		List<?> list = adminService.selectBoardList(vo);
		int total = adminService.selectBoardTotal(vo);
		
		int total_page = (int)Math.ceil((double)total/10);
		
		// 출력 페이지의 시작(행)번호
		int rownum = total - (page_no-1)*10;
		
		model.addAttribute("s_field",vo.getS_field());
		model.addAttribute("s_text",vo.getS_text());
		
		model.addAttribute("list",list);
		model.addAttribute("total",total);
		model.addAttribute("total_page",total_page);
		model.addAttribute("rownum",rownum);
		
		
		
		
		
		
		
		
		
		
		
		return "board/boardList";
	}

	/* 공지사항 쓰기 */
	@RequestMapping("boardWrite.do")
	public String boardWrite() throws Exception {
		return "board/boardWrite";
	}

	/* 공지사항 저장 */
	@RequestMapping("boardWriteSave.do")
	@ResponseBody
	public String boardWriteSave(BoardVO vo) throws Exception {

		String result = adminService.insertNboard(vo);
		String message = "ok";

		if (result != null) {
			message = "error";
		}
		return message;
	}

	//공지사항 상세
	@RequestMapping("boardDetail.do")
	public String selectBoardDetail(BoardVO vo, Model model) throws Exception {
	
		vo = adminService.selectBoardDetail(vo);
		
		adminService.updateBoardHits(vo);
		String content = vo.getContent();
		if( content != null && !content.equals("") ) {
			content = content.replace("\n","<br>");
			content = content.replace(" ","&nbsp;");
			vo.setContent(content);
		}
		model.addAttribute("vo",vo);
	 
		
		return "board/boardDetail";
	}
	
	/*
	 * 공지사항 삭제
	 */	
	@RequestMapping("boardDelete.do")
	@ResponseBody
	public String BoardDelete(BoardVO vo) throws Exception {
		
		int result = adminService.deleteBoard(vo);
		
		String message = "ok";
		if( result != 1) {
			message = "error";
		}
		return message;
	
	}
	/*
	 * 공지사항 수정
	 */	
	@RequestMapping("boardModify.do")
	public String BoardModify(BoardVO vo, Model model) throws Exception {
	
		vo = adminService.selectBoardDetail(vo);
		
		
		
		model.addAttribute("vo",vo);
		
		return "board/boardModify";
	
	}
	
	/* 공지사항 수정  저장 */
	@RequestMapping("boardModifySave.do")
	@ResponseBody
	public String BoardModifySave(BoardVO vo) throws Exception {

		int result = adminService.updateBoard(vo);
		String message = "ok";

		if (result != 1) {
			message = "error";
		}
		return message;
	}
	 
	
	
	
	 
	
	
	
	
	
	/* 주문 목록 */
	@RequestMapping("adminOrderList.do")
	public String adminOrderList(OrderVO vo,  Model model) throws Exception {
		

		int page_no = vo.getPage_no();  // 1->1 ;; 2->11 ;; 3->21
		int page_unit = vo.getPage_unit();

		int s_no = (page_no-1)*page_unit  + 1;
		int e_no = s_no + (page_unit -1);
		
		vo.setS_no(s_no);
		vo.setE_no(e_no);
		vo.setUnq3("0");
		
		System.out.println("----------------------------------");

		int total = adminService.selectOrderListTotal(vo); 
		int total_page = (int)Math.ceil((double)total/10);
		vo.setTotal(total);
		vo.setTotal_page(total_page);
		List <?> list = adminService.selectadminOrderList(vo);
		
		
		// 출력 페이지의 시작(행)번호
		int rownum = total - (page_no-1)*10;
		
		model.addAttribute("s_field",vo.getS_field());
		model.addAttribute("s_text",vo.getS_text());
		
		model.addAttribute("list",list);
		model.addAttribute("total",total);
		model.addAttribute("total_page",total_page);
		model.addAttribute("rownum",rownum);
		
		 
		return "admin/adminOrderList";
	}
	
	
	/* 관리자 배송상태 변경하기  */
	@RequestMapping("adminChangeState.do")
	public String adminChageState(OrderVO vo,Model model) throws Exception {
		 
		vo = shoppingService.selectUserReturnList(vo);
		
		model.addAttribute("vo",vo);
		
		
		
		return "admin/adminChangeState";
	}

	
	/* 관리자 배송상태 변경하기  */
	@RequestMapping("orderUpdateState.do")
	@ResponseBody
	public String orderUpdateState(OrderVO vo) throws Exception {
	
		
		int result = adminService.updateOrderState(vo);
		
		String message = "ok";
		
		System.out.println("----------------------------"+result);
		if( result != 1) {
			message = "error";
		}
		
		return message;		
	}
	 		
	
	/* 환불 리스트 */
	
	@RequestMapping("adminReturnList.do")
	public String adminReturnList(ReturnVO vo, Model model) throws Exception {


		int page_no = vo.getPage_no();  // 1->1 ;; 2->11 ;; 3->21
		int page_unit = vo.getPage_unit();

		int s_no = (page_no-1)*page_unit  + 1;
		int e_no = s_no + (page_unit -1);
		
		vo.setS_no(s_no);
		vo.setE_no(e_no);
		vo.setUnq3("0");
		
		System.out.println("----------------------------------");

		int total = adminService.selectReturnListTotal(vo); 
		int total_page = (int)Math.ceil((double)total/10);
		vo.setTotal(total);
		vo.setTotal_page(total_page);
		
		List <?> list = adminService.selectadminReturnList(vo);
		 
		// 출력 페이지의 시작(행)번호
		int rownum = total - (page_no-1)*10;
		
		model.addAttribute("s_field",vo.getS_field());
		model.addAttribute("s_text",vo.getS_text());
		
		model.addAttribute("list",list);
		model.addAttribute("total",total);
		model.addAttribute("total_page",total_page);
		model.addAttribute("rownum",rownum);
		
		
		return "admin/adminReturnList";
	}
		
		
	
 
}
