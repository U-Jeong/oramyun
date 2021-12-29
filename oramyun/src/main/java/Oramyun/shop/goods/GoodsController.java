package Oramyun.shop.goods;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class GoodsController {
	
	@Inject
	private GoodsService goodsService;
	
	// 상품등록
	@RequestMapping(value = "/shop/write.do", method = RequestMethod.GET)
	public String write() {
		System.out.println("GoodsController.write()");
		return "shop/goodsWrite";
	}

	@RequestMapping(value = "/shop/writePro", method = RequestMethod.POST)
	public String writePro(GoodsDTO goods) {
		System.out.println("GoodsController.writePro()");
		goodsService.insertGoods(goods);
		return "redirect:/goodsList";
	}
	
	// 상품목록
	@RequestMapping(value = "/goodsList", method = RequestMethod.GET)
	public String goodsList(Model model) {
		System.out.println("GoodsController.goodsList()");
		List<GoodsDTO> goodslist = goodsService.cateGoodsList();
		model.addAttribute("goodslist", goodslist);
		return "shop/goodsList";
	}
	
	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public String shop() {
		System.out.println("GoodsController.shop()");
		return "main/shop";
	}
	
//	@RequestMapping(value = "/product_details", method = RequestMethod.GET)
//	public String product_details() {
//		System.out.println("GoodsController.product_details()");
//		return "shop/product_details";
//	}
	
	@RequestMapping(value = "/product_details/{GOODS_NO}", method = RequestMethod.GET)
	public String product_details(@PathVariable("GOODS_NO")String GOODS_NO, Model model) {
		System.out.println("GoodsController.product_details()");
		model.addAttribute("goods_details", goodsService.getGoods(GOODS_NO));
		return "shop/product_details";
	}
	
	// 상품수정
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
		System.out.println("GoodsController.goodsModifyPro()");
			GoodsDTO goods2 = goodsService.numCheck(goods);
			System.out.println(goods.getGOODS_NO()+","+goods.getGOODS_NAME()+","+goods.getGOODS_AMOUNT());
			if(goods2!=null) {
				System.out.println("success");
				goodsService.goodsModifyPro(goods);
				return "redirect:/goodsList";
			} else {
				System.out.println("fail");
				return "goods/msg";
			}
			
	}
	
	// 상품삭제
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
	

}
