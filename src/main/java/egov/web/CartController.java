package egov.web;

import java.text.DecimalFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.support.ReplaceOverride;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egov.service.CartService;
import egov.service.CartVO;
import egov.service.MileageVO;
import egov.service.OrderVO;
import egov.service.ProductVO;
import egov.service.ShoppingService;
import egov.service.ShoppingUserVO;

@Controller
public class CartController {
	@Resource(name="cartService")
	CartService cartService;
	
	@Resource(name="shoppingService")
	ShoppingService shoppingService;
	
	/*장바구니 추가 (담기 )*/
	@RequestMapping("adduserCart.do")
	@ResponseBody
	public String insertAdduserCart(CartVO vo ) 
								throws Exception {
		
		int cartp = cartService.selectProductCount(vo);
		
		
		String msg = "ok";
		
		if(cartp>0) {
			cartService.updateProductCount(vo);
			
			
			
			
		}else {
			String result = cartService.insertShoppingCart(vo);
			System.out.println("-------------");
			
			
			  if( result != null ) { 
				  msg = "error"; 
			  }
			 
			System.out.println(msg);
			
		}
		
		
		
		
		return msg;
	}
	
	
	/*장바구니*/
	@RequestMapping("shoppingUserCart.do")
	public String SelectshoppingUserCart(CartVO vo,
										ProductVO pvo,
										MileageVO mvo,
										ShoppingUserVO uvo,
										Model model) 
															throws Exception {
		int gaesu = cartService.selectCountuser(vo);
		
		
		List<?> list = cartService.userCartList(vo);
		//존재유무
		
		DecimalFormat decFormat = new DecimalFormat("###,###");
		System.out.println("+++++++++++++++++++"+gaesu);
		
		ShoppingUserVO uservo = cartService.selectUserInfo(uvo);
		int mile = uservo.getUserMileage();
		String mileage =  decFormat.format(mile);

		
		
		if(gaesu>0) {
			
		//개별 상품금액
		
			
		//총상품금액
		String totalprice = cartService.usertotalPrice(vo);
		model.addAttribute("totalprice",totalprice);
		
		
		//배송비 추가
		String a = (totalprice.replace(",", "")).trim();
		int hap = 3000 + Integer.parseInt(a);
		
		String hapPrice = decFormat.format(hap);
		model.addAttribute("hapPrice",hapPrice);

		int rownum=1;
		
		model.addAttribute("rownum",rownum);
		
	
		}
		model.addAttribute("uvo",uservo);
		model.addAttribute("mileage",mileage);
		model.addAttribute("list",list);
		
		return "user/cart";
	
	}
	
	/* 수량변경 */
	@RequestMapping("plusPcount.do")
	@ResponseBody
	public String updatePcountplus(CartVO vo ) 
							throws Exception {
		
		System.out.println("-----------------++++++++++++++++++++-----------");
		int result = cartService.updatePcount(vo);
		String message = "ok";
		if( result != 1) {
			message = "error";
		}
		return message;
	}
	
	/* 수량변경 */
	@RequestMapping("minusPcount.do")
	@ResponseBody
	public String updatePcountminus(CartVO vo ) 
							throws Exception {
		
		System.out.println("-----------------++++++++++++++++++++-----------");
		int result = cartService.updatePcountminus(vo);
		String message = "ok";
		if( result != 1) {
			message = "error";
		}
		return message;
	}
	
	
	
	/*장바구니 삭제 */
	@RequestMapping(value="/cartDelete.do")
	@ResponseBody
	public String cartDelete(CartVO vo) throws Exception {
		
		System.out.println("---------------------------");
		int result = cartService.deleteproduct(vo);
		String message = "ok";
		if( result != 1) {
			message = "error";
		}
		return message;
	}
	
	/*
	 * 장바구니 체크 삭제
	 */		
	@RequestMapping(value="/cartAllDelete.do")
	@ResponseBody	
	public String cartAllDelete(String datas) throws Exception {
		
		datas = datas.substring(0,datas.length()-1);
		int result = cartService.deleteproductAll(datas);
				
				
		return result+"";
	}
	/*장바구니 리셋 */
	@RequestMapping(value="/cartReset.do")
	@ResponseBody
	public String cartReset(CartVO vo) throws Exception {
		
		System.out.println("---------------------------");
		int result = cartService.deleteCartReset(vo);
		String message = "ok";
		if( result == 0) {
			message = "error";
		}
		return message;
	}
	
	/* 개별 주문 */
	@RequestMapping("/userOrder.do")
	public String userOrder(String dataz, CartVO vo, ShoppingUserVO uvo, Model model ,HttpSession session,OrderVO ovo ) 
								throws Exception {

		//order -payment 조회
		String userid = (String) session.getAttribute("SESSION_USERID");
		uvo.setUserId(userid);
		
		
		//상품 출력 (unq)
	
		
			List<?> list = cartService.userCartList(vo);
			model.addAttribute("list",list);

			uvo = cartService.selectUserInfo(uvo);
			model.addAttribute("uvo",uvo);
	
			
			//금액별 합계
			String totalprice = cartService.usertotalPrice(vo);
			model.addAttribute("totalprice",totalprice);
			
			//마일리지 (넘길 데이터 )
			int totalMileage = cartService.usertotalMileage(vo);
			model.addAttribute("totalMileage",totalMileage);
			System.out.println("---------------------------------------------");
	
			//배송비 추가 
			DecimalFormat decFormat = new DecimalFormat("###,###");
			String a = (totalprice.replace(",", "")).trim();
			int hap = 3000 + Integer.parseInt(a);
			
			String hapPrice = decFormat.format(hap);
			System.out.println("---------------------------------------------2");
			model.addAttribute("hapPrice",hapPrice);
			model.addAttribute("hap",hap);
		return "user/userOrder";
	}
	
	//주문 테이블 저장
	@RequestMapping("OrderSave.do")
	@ResponseBody
	public String OrderSave(OrderVO vo)throws Exception {
		
		//주문 내역 저장
		String result = cartService.insertOrderSave(vo);
		String msg = "ok";
		if( result != null ) {
			msg = "error";
		}
		
		//마일리지
			cartService.insertPlusMileage(vo);
			cartService.updateUserMileage(vo);

		//마일리지 차감
			cartService.insertMinusMileage(vo);
			cartService.updateMUserMileage(vo);
		System.out.println("+++++++++++++++++++++++++++++++++");
		//장바구니 삭제
			cartService.deleteUserCart(vo);

			
			
		// 개별적용 SQL 
			String punq = vo.getOrderPunq();
			String pname = vo.getOrderPname();
			String pcount = vo.getOrderPcount();
			
			String []punq2= punq.split(",");
			String []pname2= pname.split(",");
			String []pcount2= pcount.split(",");
			
			
			
			
			System.out.println("-------------------------------------------------");
			
			for(int i=0;i<punq2.length; i++) {
				
				vo.setOrderPunq(punq2[i]);
				vo.setOrderPcount(pcount2[i]);
				
				cartService.updatePlusPcount(vo);
				cartService.updateMinusPcount(vo);
			} 
			
			System.out.println("-------------------------------------------------------------");
			//cartService.updatePlusPcount(vo);
			
			
			
		return msg;
		
	}
		
	
	//결제
	@RequestMapping("orderPayment.do")
	public String ShoppingUserWriteBefore(OrderVO ovo,
											CartVO cvo,
											ShoppingUserVO vo,HttpServletRequest request,Model model) 
								throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("SESSION_USERID");
		vo.setUserId(id);
		
		
		vo= shoppingService.selectuserInfo(vo);
		  
		
		model.addAttribute("vo",vo);
		
		
		 
		 
		
		return "user/payment";
	}
	
	
	
	
	
	
	
}
