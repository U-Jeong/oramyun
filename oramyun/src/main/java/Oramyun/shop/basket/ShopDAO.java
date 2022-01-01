package Oramyun.shop.basket;

import java.util.List;


public interface ShopDAO {

	

	// 카트 담기
	public void addCart(CartListVO cart) throws Exception;

	// 카트 리스트
	public List<CartListVO> cartList(String member_email) throws Exception;

	// 카트 삭제
	public void deleteCart(CartVO cart) throws Exception;

	// 카트 비우기
	public void cartAllDelete(String userId) throws Exception;


}   