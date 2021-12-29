package Oramyun.shop.goods;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class GoodsController {
	
	@Inject
	private GoodsService goodsService;
	
	@RequestMapping(value = "/shop/write.do", method = RequestMethod.GET)
	public String write() {
		System.out.println("GoodsController.write()");
		return "shop/goodsWrite";
	}
	

	@RequestMapping(value = "/shop/writePro", method = RequestMethod.POST)
	public String writePro(GoodsDTO goods) {
		System.out.println("GoodsController.writePro()");
		goodsService.insertGoods(goods);
		return "redirect:/shop/goodsList";
	}
	
	@RequestMapping(value = "/shop/goodsList", method = RequestMethod.GET)
	public String goodsList(Model model) {
		System.out.println("GoodsController.goodsList()");
		List<GoodsDTO> goodslist = goodsService.cateGoodsList();
		model.addAttribute("goodslist", goodslist);
		return "shop/goodsList";
	}
	
	@RequestMapping(value = "/shop/goodsModify", method = RequestMethod.GET)
	public String goodsModifyForm(HttpSession session, Model model) {
		System.out.println("GoodsController.goodsModifyForm()");
		String GOODS_NO=(String)session.getAttribute("GOODS_NO");
		GoodsDTO goods = goodsService.getGoods(GOODS_NO);
		model.addAttribute("goods",goods);
		return "shop/goodsModifyForm";
	}
	
	@RequestMapping(value = "/shop/goodsModifyPro", method = RequestMethod.POST)
	public String updatePro(GoodsDTO goods) {
		System.out.println("GoodsController.updatePro()");
			goodsService.goodsModifyPro(goods);
			return "redirect:/shop/goodsList";
	}
		
	@RequestMapping(value = "/shop/goodsDelete", method = RequestMethod.GET)
		public String goodsDelete() {
			System.out.println("GoodsController.goodDelete()");
			return "shop/goodsDeleteForm";
	}
		
	@RequestMapping(value = "/shop/goodsDeletePro", method = RequestMethod.POST)
		public String goodsDeletePro(GoodsDTO goods) {
			System.out.println("GoodsController.goodsDeletePro()");
			goodsService.goodsDeletePro(goods);
			return "redirect:/shop/goodsList";
	}
	
	@RequestMapping(value = "/member/join", method = RequestMethod.GET)
	public String join() {
		System.out.println("GoodsController.join()");
		return "member/joinForm";
	}
	
	@RequestMapping(value = "/member/joinPro", method = RequestMethod.POST)
	public String joinPro() {
		System.out.println("GoodsController.joinPro()");
		return "redirect:/member/login";
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		System.out.println("GoodsController.main()");
		return "redirect:/";
	}
	

}
