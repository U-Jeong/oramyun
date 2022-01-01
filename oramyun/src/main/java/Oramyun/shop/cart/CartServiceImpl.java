package Oramyun.shop.cart;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Inject
	private CartDAO cartDAO;

	// 카트 담기
	@Override
	public void addCart(CartListVO cartlist) throws Exception {
		System.out.println("CartServiceImpl.addCart()");
		cartDAO.addCart(cartlist);
	}

	// 카트 리스트
	@Override
	public List<CartListVO> cartList(String member_email) throws Exception {
//		public List<CartListVO> cartList(int m_num) throws Exception {
		System.out.println("CartServiceImpl.cartList()");
		return cartDAO.cartList(member_email);
	}

	// 카트 삭제
	@Override
	public void deleteCart(CartVO cart) throws Exception {
		System.out.println("CartServiceImpl.deleteCart()");
		cartDAO.deleteCart(cart);
	}

	// 카트 비우기
	@Override
	public void cartAllDelete(String userId) throws Exception {
		System.out.println("CartServiceImpl.cartAllDelete()");
		cartDAO.cartAllDelete(userId);
	}
	
	// --------------------------------------------------------------------

	@Override
	public List<CartListVO> cartMoney() {
		return null;
	}

	@Override
	public void insert(CartListVO cart) {
		cartDAO.insert(cart);
	}

	@Override
	public List<CartListVO> listCart(String m_num) {
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
	public void updateCart(CartListVO cart) {
		cartDAO.updateCart(cart);
	}

	@Override
	public void modifyCart(CartListVO cart) {
		cartDAO.modifyCart(cart);
	}

	@Override
	public void setUserid(String m_num) {
		cartDAO.setUserid(m_num);
	}

}
