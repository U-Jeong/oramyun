package Oramyun.shop.cart;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Oramyun.member.join.MemberVO;
import Oramyun.shop.goods.GoodsDTO;


@Controller
public class CartController {
	
	@Inject
	private CartService cartService;
	
	// 장바구니 이동
	@RequestMapping(value = "/cart/${member.member_num}", method=RequestMethod.GET)
	public void mycart() {
		
	}
	
	// 상품등록
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String cartAdd(CartDTO cart, HttpServletRequest request) {
		System.out.println("CartController.cartAdd()");
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("member_num");
		if(mvo == null) {
			return "5";
		}
		
		int result = cartService.addCart(cart);
		
		return result + "";
	}

}
