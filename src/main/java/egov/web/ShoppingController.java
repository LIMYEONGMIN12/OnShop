
package egov.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service.ShoppingUserVO;
import egov.service.WishlistVO;
import egov.service.AdminService;
import egov.service.CartVO;
import egov.service.MileageVO;
import egov.service.OrderVO;
import egov.service.ReturnVO;
import egov.service.ShoppingService;

@Controller
public class ShoppingController {

	@Resource(name="shoppingService")
	ShoppingService shoppingService;
	
	
	
	
	
	
	/* 약관 동의 페이지 */
	@RequestMapping("ShoppingUserWriteBefore.do")
	public String ShoppingUserWriteBefore( ) 
								throws Exception {
		
		return "user/userWriteBefore";
	}
	
	
	/* 회원 가입 페이지 */
	@RequestMapping("ShoppingUserWrite.do")
	public String ShoppingUserWrite( ) 
								throws Exception {
		return "user/userWrite";
	}
	
	
	
	/* 회원 가입 아이디 체크  */
	@RequestMapping("idcheck.do")
	@ResponseBody
	public String userIdcheck(String userId) 
										throws Exception {
		String msg = "ok"; 
		String pattern = "^[a-z0-9_-]{4,12}$";
		boolean result = userId.matches(pattern);
		
		if( result == false) {
			msg = "er2";
		} else {
			int count = shoppingService.userdupleIdCheck(userId);
			if( count > 0 ) {
				msg = "er1";
			}
		}
		return msg;
	}
	
	/* 회원 가입 페이지  -- 저장 */
	@RequestMapping("ShoppingUserWriteSave.do")
	@ResponseBody
	public String ShoppingUserWriteSave( ShoppingUserVO vo ) throws Exception {
				
		//회원가입 서비스
		String result = shoppingService.insertUser(vo);
		String msg = "ok";
		if( result != null ) {
			msg = "error";
		}
		// 마일리지 적립(마일리지 테이블)
		shoppingService.insertWelcomeMileage(vo);
		return msg;
	}
	
	/* 로그인 페이지 화면 */
	@RequestMapping("ShoppingLoginWrite.do")
	public String ShoppingLoginWrite() 
								throws Exception {
		return "user/loginWrite";
	}
	
	/* 로그인 페이지 화면 */
	@RequestMapping("findPass.do")
	public String findPass() 
								throws Exception {
		return "user/findPass";
	}
	
	
	//로그인 액션 
	@RequestMapping("ShoppingLoginWriteSub.do")
	@ResponseBody
	public String ShoppingLoginWriteSub( HttpServletRequest request, Model model, ShoppingUserVO vo) 
																					throws Exception {
		HttpSession session = request.getSession();
		
		int idpass = shoppingService.userIdCheck(vo);

		String msg ="";
		if(idpass == 0 ) {
			msg = idpass+"";
		}else {
			
			ShoppingUserVO uservo =  shoppingService.userLogin(vo);
			
			
			String userId = request.getParameter("userId");
			String userNickname= uservo.getUserNickname();
			
			
			System.out.println(userNickname);
			session.setAttribute("vo", uservo);
			session.setAttribute("SESSION_USERID", userId);
			session.setAttribute("SESSION_NICKNAME", userNickname);
			
			
			msg = "ok";
		}
		  
		return msg;
	
	}
	/* 아이디 찾기 */
	@RequestMapping("findUserid.do")
	public String findUserid( ) 
							throws Exception {

		return "user/userIdFind";
	}
	
	
	/* 아이디 찾기 */
	@RequestMapping("userIdFindSub.do")
	@ResponseBody
	public String findUseridSub(ShoppingUserVO vo,Model model) 
										throws Exception {
		String message = "";
		int result = shoppingService.selectfindUserId(vo);
		
		vo = shoppingService.selectfindUserIdResult(vo);
		
		String username = vo.getUserName();
		String useremail = vo.getUserEmail();
		
		if( result != 1) {
			message = "fail";
		}else {
			vo.setUserName(username);
			vo.setUserEmail(useremail);
			
			model.addAttribute("userName",username);
			model.addAttribute("userEmail",useremail);
			model.addAttribute("vo",vo);
			message ="ok";
			
		}
	
		return message;
	
	}
	
	/* 아이디 찾기 결과출력 */
	@RequestMapping("userIdFindResult.do")
	
	public String userIdFindResult(ShoppingUserVO vo,Model model ) 
							throws Exception {
		vo = shoppingService.selectfindUserIdResult(vo);
		model.addAttribute("vo",vo);
		
		return "user/userIdFindResult";
	}
	

	/* 유저 마이페이지 */
	@RequestMapping("ShoppingMypage.do")
	public String ShoppingMypage(OrderVO vo, Model model,HttpServletRequest request,ShoppingUserVO uvo ) 
								throws Exception {
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("SESSION_USERID");
		uvo.setUserId(id);
		
		
		uvo= shoppingService.selectuserInfo(uvo);
		 
		
		
		
		
		vo.setOrderId(id);
		int total = shoppingService.selectuserOrderTotal(vo);
		
		
		
		model.addAttribute("uvo",uvo);
		model.addAttribute("total",total);
		return "user/userMypage";
	}
	
	
	/* 주문내역 조회 */
	@RequestMapping("shoppingOrderList.do")
	public String shoppingBuyList(OrderVO vo, Model model,HttpServletRequest request
									) 
								throws Exception {
		
		HttpSession session = request.getSession();
		String userid = (String) session.getAttribute("SESSION_USERID");
		vo.setOrderId(userid);
		
		

		int page_no = vo.getPage_no(); // 1->1 ;; 2->11 ;; 3->21
		int page_unit = vo.getPage_unit();

		int s_no = (page_no - 1) * page_unit + 1;
		int e_no = s_no + (page_unit - 1);

		vo.setS_no(s_no);
		vo.setE_no(e_no);
		vo.setUnq3("0");
		
		int total = shoppingService.selectuserOrderTotal(vo);
		int total_page = (int)Math.ceil((double)total/10);
		vo.setTotal(total);
		vo.setTotal_page(total_page);
		
		List<?>list = shoppingService.selectOrderList(vo);
		
		// 출력 페이지의 시작(행)번호
		int rownum = total - (page_no-1)*10;

		model.addAttribute("s_field",vo.getS_field());
		model.addAttribute("s_text",vo.getS_text());
		
		model.addAttribute("list",list);
		model.addAttribute("total",total);
		model.addAttribute("total_page",total_page);
		model.addAttribute("rownum",rownum);
		
		System.out.println("------------");
		
		
		
		/*
		 * Object []arr= list.toArray();
		 * 
		 * 
		 * String data=""; String k ="";
		 * System.out.println("-------------------------------------"+arr.length);
		 * for(int i=0; i<arr.length; i++) { String a0[] = arr[i].toString().split(",");
		 * String a00[] = a0[2].split("="); if(a00[1].contains("<br>")) { String a000[]
		 * = a00[1].split("<br>"); for(int j=0; j<a000.length; j++) {
		 * 
		 * k = "<img src=\""+a000[j]+"\" width=\""+150+"\" height=\""+150+"\"/> <br>";
		 * 
		 * //System.out.println(k); data += k; }
		 * 
		 * 
		 * System.out.println(data);
		 * 
		 * 
		 * }else { k =
		 * "<img src=\""+a00[1]+"\" width=\""+150+"\" height=\""+150+"\"/> <br>";
		 * System.out.println(k); }
		 * 
		 * System.out.println("///////////////////////////////");
		 * 
		 * model.addAttribute("list", list);
		 * 
		 * }
		 * 
		 * 
		 * System.out.println("-------------------------------------");
		 */
		
		 
		
		
		
		 
		
		
		return "user/userOrderList";
	} 
	
	
	
	
	
	
	
	/* 회원정보 수정 */
	@RequestMapping("ShoppingUserModify.do")
	public String updateShoppingUserModify( ShoppingUserVO vo,Model model,HttpServletRequest request) 
								throws Exception {
		
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("SESSION_USERID");
		vo.setUserId(id);
		
		
		vo= shoppingService.selectuserInfo(vo);
		  
		
		model.addAttribute("vo",vo);
		return "user/userModify";
	}
	
	
	
	
	
	/* 회원정보 수정  저장 */
	@RequestMapping("ShoppingUserModifySave.do")
	@ResponseBody
	public String ShoppingUserModifySave( ShoppingUserVO vo ) throws Exception {
				
		//회원가입 서비스
		int result = shoppingService.updateUserInfo(vo);
		String message = "ok";
		if( result != 1) {
			message = "error";
		}
		return message;
	}
		
	/* 찜페이지 */
	@RequestMapping("userWishList.do")
	public String userWishList(WishlistVO vo,Model model) 
								throws Exception {
		
		
		List<?> list = shoppingService.selectUserWishlist(vo);
		
		
		model.addAttribute("list",list);
		
		
		
		
		
		return "user/userWishlist";
	}
	
	
	
	/* 찜  버튼*/
	
	@RequestMapping("wishlistPlus.do")
	@ResponseBody
	public String wishlistPlus(WishlistVO vo) 
								throws Exception {
		
		int likecnt = shoppingService.selectCountlike(vo);
		
		String message = "ok";
		
		if(likecnt == 0 ) {
		
			String result = shoppingService.insertWishList(vo);
			shoppingService.updatePtblPluswish(vo);
			
			if( result != null) {
				message = "error";
			}
			
		}else {
			
			shoppingService.deleteCountlike(vo);
			shoppingService.updatePtblMinuswish(vo); 
		}
		
		
		return message;
	
	
	}
	
	
	
	
	
	
	
	/*마일리지*/
	@RequestMapping("ShoppingUserMileageList.do")
	public String ShoppingUserMileageList( HttpServletRequest request,  MileageVO mvo, 
																		Model model,
																		ShoppingUserVO vo ) 
																					throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("SESSION_USERID");
		vo.setUserId(id);
		vo = shoppingService.selectuserInfo(vo);
		
		int page_no = mvo.getPage_no();
		int page_unit = mvo.getPage_unit();
		
		// 1p -> 1 ; 2p -> 11 ; 3p->21
		int s_no = (page_no-1)*page_unit + 1;
		//1,10 ; 11,20 ; 21,30
		int e_no = s_no + (page_unit -1 );
		
		mvo.setS_no(s_no);
		mvo.setE_no(e_no);
		
		int total = shoppingService.selectMileageTotal(mvo);
		 
//		17->2 33 ->4
		int total_page =   (int) Math.ceil((double)total/10);
	
		mvo.setTotal(total);
		mvo.setTotal_page(total_page);
		
		
		// 목록 서비스 실행
		List<?> list = shoppingService.selectMileageList(mvo);
		
		// 화면으로 전송
		model.addAttribute("list", list);
		model.addAttribute("mvo",mvo);
		model.addAttribute("total",total);
		model.addAttribute("total_page",total_page);
		model.addAttribute("vo",vo);

		
		return "user/userMileage";
	}
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	/*배송조회*/
	/* 약관 동의 페이지 */
	@RequestMapping("userTracking.do")
	public String ShoppingUserTracking( ) 
								throws Exception {
		
		return "user/userTracking";
	}
	
	
	
	
	
	
	
	
	
	/* 배송지변경 (마이페이지) */
	@RequestMapping("userAddrChange.do")
	public String ShoppingUserChangeAddr(ShoppingUserVO vo,Model model,HttpServletRequest request) 
								throws Exception {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("SESSION_USERID");
		vo.setUserId(id);
		
		 
		vo= shoppingService.selectuserInfo(vo);
		  
		
		model.addAttribute("vo",vo);
		return "user/userAddrChange";
	}
	
	
	/* 배송지 변경 저장 */
	@RequestMapping("userAddrChangeSave.do")
	@ResponseBody
	public String userAddrChangeSave( ShoppingUserVO vo ) throws Exception {
				
	
		int result = shoppingService.updateUserAddr(vo);
		String message = "ok";
		if( result != 1) {
			message = "error";
		}
	
		return message;
	}
	
	
	/*==  주소 검색  post1 ==*/
	@RequestMapping("userAddrSearch.do")
	public String userAddrSearch() 
								throws Exception {
		return "user/post1";
	}
	
	
	/*==  주소 검색  post2 ==*/
	@RequestMapping("userAddrSearch2.do")
	public String userAddrSearch2() 
								throws Exception {
		return "user/post2";
	}
	
	
	
	/*
	 * 반품
	 */	
	@RequestMapping("userReturn.do")
	public String userReturn(OrderVO vo,Model model) 
								throws Exception {
		
		vo = shoppingService.selectUserReturnList(vo);
		
		
		
		model.addAttribute("vo",vo);
		
		return "user/userReturn";
	}
	
	/* 반품 테이블 저장 */
	
	@RequestMapping("returnSave.do")
	@ResponseBody
	public String returnSave(ReturnVO vo) 
											throws Exception {
		
		String result = shoppingService.insertUserReturn(vo);
		String msg = "ok";
		if( result != null ) {
			msg = "error";
		}
		shoppingService.updateOrderState(vo);
		System.out.println("UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU");
		
		
		return msg;
	}
	
	
	
	
	
	

	
}
