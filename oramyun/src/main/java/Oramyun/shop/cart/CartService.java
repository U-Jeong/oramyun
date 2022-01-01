package Oramyun.shop.cart;

import java.util.List;

public interface CartService {

	// 카트 담기
	public void addCart(CartListVO cartlist) throws Exception;

	// 카트 리스트
	public List<CartListVO> cartList(String member_email) throws Exception;
//		public List<CartListVO> cartList(int m_num) throws Exception;

	// 카트 삭제
	public void deleteCart(CartVO cart) throws Exception;

	// 카트 비우기
	public void cartAllDelete(String userId) throws Exception;

	// -------------------------------------------------------------------------------
	
	public List<CartListVO> cartMoney();

	public void insert(CartListVO cart);

	public List<CartListVO> listCart(String m_num);

	public void delete(int cartId);

	public void deleteAll(String m_num);

	public void update(int cartId);

	public int sumMoney(String m_num);

	public int countCart(String m_num, int GOODS_NO);

	public void updateCart(CartListVO cart);

	public void modifyCart(CartListVO cart);

	public void setUserid(String m_num);
}
