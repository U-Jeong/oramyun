package Oramyun.shop.cart;

public class CartDTO {
		/* create table cart(
    			cartId int primary key auto_increment,
    			member_num int,
    			GOODS_NO int,
    			GOODS_AMOUNT int,
    			foreign key member_num references member(member_num),
    			foreign key GOODS_NO references GOODS(GOODS_NO)
			);
		 */
	
	private int cartId;
	private int member_num;
	private int GOODS_NO;
	private int GOODS_AMOUNT;
	
	// GOODS
	private String GOODS_NAME;
	private int GOODS_SELL_PRICE;
	private int GOODS_SALE_PRICE;
	
	private int salePrice;
	private int totalPrice;
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public int getGOODS_NO() {
		return GOODS_NO;
	}
	public void setGOODS_NO(int gOODS_NO) {
		GOODS_NO = gOODS_NO;
	}
	public int getGOODS_AMOUNT() {
		return GOODS_AMOUNT;
	}
	public void setGOODS_AMOUNT(int gOODS_AMOUNT) {
		GOODS_AMOUNT = gOODS_AMOUNT;
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
	public int getGOODS_SALE_PRICE() {
		return GOODS_SALE_PRICE;
	}
	public void setGOODS_SALE_PRICE(int gOODS_SALE_PRICE) {
		GOODS_SALE_PRICE = gOODS_SALE_PRICE;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	
	public void initSaleTotal() {
		this.salePrice = (int) (this.GOODS_SELL_PRICE * (1-this.GOODS_SALE_PRICE));
		this.totalPrice = this.salePrice*this.GOODS_AMOUNT;
	}
	
	@Override
	public String toString() {
		return "CartVO [cartId=" + cartId + ", member_num=" + member_num + ", GOODS_NO=" + GOODS_NO
				+ ", GOODS_ATT_AMOUNT=" + GOODS_AMOUNT + ", GOODS_NAME=" + GOODS_NAME + ", GOODS_SELL_PRICE=" + GOODS_SELL_PRICE + ", GOODS_SALE_PRICE="
				+ GOODS_SALE_PRICE + ", salePrice=" + salePrice + ", totalPrice=" + totalPrice + "]";
	}
 
		
}
