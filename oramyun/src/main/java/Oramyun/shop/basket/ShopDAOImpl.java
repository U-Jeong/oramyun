package Oramyun.shop.basket;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ShopDAOImpl implements ShopDAO {

	@Inject
	private SqlSession sql;

	// 매퍼 
	private static String namespace = "com.itwillbs.mapper.shopMapper";


	// 카트 담기
	@Override
	public void addCart(CartListVO cart) throws Exception {
		sql.insert(namespace + ".addCart", cart);
	}

	// 카트 리스트
	@Override
	public List<CartListVO> cartList(String member_email) throws Exception {
		return sql.selectList(namespace + ".cartList", member_email);
	}

	// 카트 삭제
	@Override
	public void deleteCart(CartVO cart) throws Exception {
		sql.delete(namespace + ".deleteCart", cart);
	}


	// 카트 비우기
	@Override
	public void cartAllDelete(String userId) throws Exception {
		sql.delete(namespace + ".cartAllDelete", userId);
	}


}   