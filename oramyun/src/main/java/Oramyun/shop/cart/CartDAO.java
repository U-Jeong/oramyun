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

	// 카트 담기
	public void addCart(CartListVO cartlist) throws Exception {
		System.out.println("CartDAO.addCart()");
		sqlSession.insert(namespace + ".addCart", cartlist);
	}

	// 카트 리스트
	public List<CartListVO> cartList(String member_email) throws Exception {
//		public List<CartListVO> cartList(int m_num) throws Exception {
		System.out.println("CartDAO.cartList()");
		return sqlSession.selectList(namespace + ".listCart", member_email);
	}

	// 카트 삭제
	public void deleteCart(CartVO cart) throws Exception {
		System.out.println("CartDAO.deleteCart()");
		sqlSession.delete(namespace + ".deleteCart", cart);
	}

	// 카트 비우기
	public void cartAllDelete(String userId) throws Exception {
		System.out.println("CartDAO.cartAllDelete()");
		sqlSession.delete(namespace + ".cartAllDelete", userId);
	}

	// ----------------------------------------------------------------------------
	public List<CartListVO> cartMoney() {
		return sqlSession.selectList(namespace + ".cartMoney");
	}

	// 장바구니에 담기
	public void insert(CartListVO cart) {
		sqlSession.insert(namespace + ".insert", cart);
	}

	public List<CartListVO> listCart(String m_num) {
		return sqlSession.selectList(namespace + ".listCart", m_num);
	}

	public void delete(int cartId) {
		sqlSession.delete(namespace + ".delete", cartId);
	}

	public void deleteAll(String m_num) {
		sqlSession.delete(namespace + ".deleteAll", m_num);
	}

	public void update(int cartId) {
		sqlSession.update(namespace + ".update", cartId);
	}

	public int sumMoney(String m_num) {
		return sqlSession.selectOne(namespace + ".sumMoney", m_num);
	}

	public int countCart(String m_num, int GOODS_NO) {

		return 0;
	}

	public void updateCart(CartListVO cart) {
		// TODO Auto-generated method stub

	}

	public void modifyCart(CartListVO cart) {
		sqlSession.update(namespace + ".modify", cart);
	}

	public void setUserid(String m_num) {
		// TODO Auto-generated method stub

	}

}
