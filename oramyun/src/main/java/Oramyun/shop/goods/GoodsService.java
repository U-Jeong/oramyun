package Oramyun.shop.goods;

import java.util.List;

public interface GoodsService {
	
	public void insertGoods(GoodsDTO goods);

	public GoodsDTO getGoods(String GOODS_NO);
	
	public void goodsModifyPro(GoodsDTO goods);

	public void goodsDeletePro(GoodsDTO goods);

	public List<GoodsDTO> cateGoodsList();

	public GoodsDTO numCheck(GoodsDTO goods);

}
