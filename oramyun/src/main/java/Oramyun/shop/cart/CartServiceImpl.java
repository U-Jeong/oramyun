package Oramyun.shop.cart;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Inject
	private CartDAO cartDAO;

	 @Override
	    public List<CartDTO> cartMoney() {
	        return null;
	    }
	    @Override
	    public void insert(CartDTO cart) {
	        cartDAO.insert(cart);
	    }
	 
	    @Override
	    public List<CartDTO> listCart(String m_num) {
	        return cartDAO.listCart(m_num);
	    }
	 
	    @Override
	    public void delete(int cartId) {
	        cartDAO.delete(cartId);
	    }
	 
	    @Override
	    public void deleteAll(String m_num) {
	        cartDAO.deleteAll(m_num);
	    }
	 
	    @Override
	    public void update(int cartId) {
	    	cartDAO.update(cartId);
	    }
	 
	    @Override
	    public int sumMoney(String m_num) {
	        return cartDAO.sumMoney(m_num);
	    }
	 
	    @Override
	    public int countCart(String m_num, int GOODS_NO) {
	        return cartDAO.countCart(m_num, GOODS_NO);
	    }
	 
	    @Override
	    public void updateCart(CartDTO cart) {
	    	cartDAO.updateCart(cart);
	    }
	 
	    @Override
	    public void modifyCart(CartDTO cart) {
	        cartDAO.modifyCart(cart);
	    }
		@Override
		public void setUserid(String m_num) {
			cartDAO.setUserid(m_num);
		}
	 
}
