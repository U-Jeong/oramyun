package Oramyun.shop.cart;

public class CartDTO {
	
	private int cartId;
	private int m_num;
	private int GOODS_NO;
	private int amount;
	
	private String GOODS_NAME;
	private int GOODS_SELL_PRICE;
	private int price;
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public int getGOODS_NO() {
		return GOODS_NO;
	}
	public void setGOODS_NO(int gOODS_NO) {
		GOODS_NO = gOODS_NO;
	}
	
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getGOODS_NAME() {
		return GOODS_NAME;
	}
	public void setGOODS_NAME(String gOODS_NAME) {
		GOODS_NAME = gOODS_NAME;
	}
	public int getGOODS_SELL_PRICE() {
		return GOODS_SELL_PRICE;
	}
	public void setGOODS_SELL_PRICE(int gOODS_SELL_PRICE) {
		GOODS_SELL_PRICE = gOODS_SELL_PRICE;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "CartDTO [cartId=" + cartId + ", m_num=" + m_num + ", GOODS_NO=" + GOODS_NO + ", amount=" + amount
				+ ", GOODS_NAME=" + GOODS_NAME + ", GOODS_SELL_PRICE=" + GOODS_SELL_PRICE + ", price=" + price + "]";
	}
	
	
	
 
		
}
