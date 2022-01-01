package Oramyun.shop.basket;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Oramyun.member.join.MemberVO;


//@RequestMapping("/shop/*")
@Controller
public class ShopController{
	

	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);

	@Inject
	ShopService service;

	
	// 카트 담기
	@ResponseBody
	@RequestMapping(value = "/addCart", method = RequestMethod.POST)
	public int addCart(CartListVO cart, HttpSession session) throws Exception {

		int result = 0;

		MemberVO member = (MemberVO)session.getAttribute("member_email");
		System.out.println(member.getMember_email());
//		MemberVO member = (MemberVO)session.getAttribute("member");
//
		if(member != null) {
//			cart.setUserId(member.getMember_email());
//			cart.setUserId(member.getMember_num());
			service.addCart(cart);
			result = 1;
		}

		return result;
	}

	// 카트 목록
//	@RequestMapping(value = "/view/cartlist?={member.member_email}", method = RequestMethod.GET)
	@RequestMapping(value = "/getCartList", method = RequestMethod.GET)
	public String getCartList(HttpSession session, HttpServletRequest request, Model model) throws Exception {
		System.out.println("ShopController.getCartList()");
		logger.info("get cart list");

		String member_email = (String)session.getAttribute("member_email");
		System.out.println("member_email : " + member_email);
//		String member_email = (String)request.getParameter("member_email");
//		MemberVO member = (MemberVO)session.getAttribute("member_email");
//		member.setMember_email(member.getMember_email());
//		System.out.println("member : " + member.getMember_email());
//		String member_email = member.getMember_email();
//		String userId = member.getUserId();

		List<CartListVO> cartList = service.cartList(member_email);

		model.addAttribute("cartList", cartList);

		return "shop/view";
	}

	

	// 카트 삭제
	@ResponseBody
	@RequestMapping(value = "/deleteCart", method = RequestMethod.POST)
	public int deleteCart(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, CartVO cart) throws Exception {
		logger.info("ShopController.deleteCart()");
		
		MemberVO member = (MemberVO)session.getAttribute("member_email");
		int userId = member.getMember_num();

		int result = 0;
		int cartNum = 0;		

		// 로그인 여부 구분
		if(member != null) {
			cart.setM_num(userId);
//			cart.setUserId(userId);

			for(String i : chArr) {  // 에이젝스에서 받은 chArr의 갯수만큼 반복
//				cart.setCartId(cartNum);
//				cart.setCartNum(cartNum);
//				service.deleteCart(cart);
			}			
			result = 1;
		}		
		return result;		
	}

	






}  