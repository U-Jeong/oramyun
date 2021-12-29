package Oramyun.shop.goods;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.mapper.GoodsMapper";
	
	public void goodsInsert(GoodsDTO goods) {
		System.out.println("GoodsDAO.goodsInsert()");
		sqlSession.insert(namespace+".goodsInsert",goods);
	}

	public List<GoodsDTO> cateGoodsList() {
		System.out.println("GoodsDAO.cateGoodsList()");
		return sqlSession.selectList(namespace+".cateGoodsList");
	}

	public void goodsModifyPro(GoodsDTO goods) {
		System.out.println("GoodsDAO.goodsModifyPro()");
		sqlSession.update(namespace+".goodsModifyPro", goods);
		
	}

	public void goodsDeletePro(GoodsDTO goods) {
		System.out.println("GoodsDAO.goodsDeletePro()");
		sqlSession.delete(namespace+".goodsDeletePro", goods);
	}

	public GoodsDTO getGoods(String GOODS_NO) {
		System.out.println("GoodsDAO.userCheck()");
		return sqlSession.selectOne(namespace+".getGoods", GOODS_NO);
	}


}
