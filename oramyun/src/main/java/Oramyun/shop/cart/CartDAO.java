package Oramyun.shop.cart;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.itwillbs.mapper.CartMapper";
	
	public int addCart(CartDTO cart) {
		// TODO Auto-generated method stub
		return 0;
	}

	public void deleteCart(int cartId) {
		// TODO Auto-generated method stub
		
	}

	public CartDTO checkCart(CartDTO cart) {
		// TODO Auto-generated method stub
		return null;
	}




}
