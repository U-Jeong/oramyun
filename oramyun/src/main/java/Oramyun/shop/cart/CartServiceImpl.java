package Oramyun.shop.cart;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Inject
	private CartDAO cartDAO;

	@Override
	public int addCart(CartDTO cart) {
		// 장바구니 데이터 체크
				CartDTO checkCart = cartDAO.checkCart(cart);
				
				if(checkCart != null) {
					return 2;
				}
				
				// 장바구니 등록 & 에러 시 0반환
				try {
					return cartDAO.addCart(cart);
				} catch (Exception e) {
					return 0;
				}
		 
	}

	@Override
	public int deleteCart(int cartId) {
		cartId = 1;
		cartDAO.deleteCart(cartId);
		return 0;
	}

	@Override
	public int modifyCount(CartDTO cart) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CartDTO> getCart(String memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CartDTO checkCart(CartDTO cart) {
		// TODO Auto-generated method stub
		return null;
	}
	




	
}
