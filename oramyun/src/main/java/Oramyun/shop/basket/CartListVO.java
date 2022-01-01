package Oramyun.shop.basket;

import java.util.Date;

public class CartListVO {

	private int cartNum;
	private int m_num;
	private String gdsNum;
	private String cartStock;
	private Date addDate;

	private int num;
	private String gdsName;
	private int gdsPrice;
//	private String gdsThumbImg;
	public int getCartNum() {
		return cartNum;
	}
	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public String getGdsNum() {
		return gdsNum;
	}
	public void setGdsNum(String gdsNum) {
		this.gdsNum = gdsNum;
	}
	public String getCartStock() {
		return cartStock;
	}
	public void setCartStock(String cartStock) {
		this.cartStock = cartStock;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getGdsName() {
		return gdsName;
	}
	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}
	public int getGdsPrice() {
		return gdsPrice;
	}
	public void setGdsPrice(int gdsPrice) {
		this.gdsPrice = gdsPrice;
	}

    

} 