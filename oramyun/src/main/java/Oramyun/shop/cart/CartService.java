package Oramyun.shop.cart;

import java.util.List;

public interface CartService {
	
	public List<CartDTO> cartMoney();

	public void insert(CartDTO cart);

	public List<CartDTO> listCart(String m_num);

	public void delete(int cartId);

	public void deleteAll(String m_num);

	public void update(int cartId);

	public int sumMoney(String m_num);

	public int countCart(String m_num, int GOODS_NO);

	public void updateCart(CartDTO cart);

	public void modifyCart(CartDTO cart);

	public void setUserid(String m_num);
}
