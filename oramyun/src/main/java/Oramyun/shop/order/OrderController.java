package Oramyun.shop.order;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class OrderController {
	
//	@Inject
//	private GoodsService goodsService;
	
	// 장바구니
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String order() {
		System.out.println("OrderController.order()");
		return "order/orderForm";
	}

	// 장바구니 결제
	@RequestMapping(value = "/orderPro", method = RequestMethod.POST)
	public String orderPro() {
		System.out.println("OrderController.orderPro()");
		return "";
	}

}
