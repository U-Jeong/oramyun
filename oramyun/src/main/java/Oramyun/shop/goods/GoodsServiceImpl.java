package Oramyun.shop.goods;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

	@Inject
	private GoodsDAO goodsDAO;
	
	@Override
	public void insertGoods(GoodsDTO goods) {
		System.out.println("GoodsServiceImpl.insertGoods()");
		goods.setGOODS_DATE(new Timestamp(System.currentTimeMillis()));		
		goodsDAO.goodsInsert(goods);
	}

	@Override
	public GoodsDTO getGoods(String GOODS_NO) {
		System.out.println("GoodsServiceImpl.getMember()");
		return goodsDAO.getGoods(GOODS_NO);
	}

	@Override
	public List<GoodsDTO> cateGoodsList() {
		System.out.println("GoodsServiceImpl.cateGoodsList()");
		return goodsDAO.cateGoodsList();
	}

	@Override
	public void goodsModifyPro(GoodsDTO goods) {
		System.out.println("GoodsServiceImpl.goodsModifyPro()");
		goodsDAO.goodsModifyPro(goods);
	}

	@Override
	public void goodsDeletePro(GoodsDTO goods) {
		System.out.println("GoodsServiceImpl.goodsDeletePro()");
		goodsDAO.goodsDeletePro(goods);
		
	}




	
}
