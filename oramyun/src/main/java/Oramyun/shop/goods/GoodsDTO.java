package Oramyun.shop.goods;

import java.sql.Timestamp;

public class GoodsDTO {
	
	private String GOODS_NO;
	private String GOODS_CATEGORY;
	private String GOODS_NAME;
	private String GOODS_CONTENT;
	private int GOODS_SELL_PRICE;
	private int GOODS_SALE_PRICE;
	private Timestamp GOODS_DATE;
	private String GOODS_AMOUNT;
	
	public String getGOODS_NO() {
		return GOODS_NO;
	}
	public void setGOODS_NO(String gOODS_NO) {
		GOODS_NO = gOODS_NO;
	}
	public String getGOODS_CATEGORY() {
		return GOODS_CATEGORY;
	}
	public void setGOODS_CATEGORY(String gOODS_CATEGORY) {
		GOODS_CATEGORY = gOODS_CATEGORY;
	}
	public String getGOODS_NAME() {
		return GOODS_NAME;
	}
	public void setGOODS_NAME(String gOODS_NAME) {
		GOODS_NAME = gOODS_NAME;
	}
	public String getGOODS_CONTENT() {
		return GOODS_CONTENT;
	}
	public void setGOODS_CONTENT(String gOODS_CONTENT) {
		GOODS_CONTENT = gOODS_CONTENT;
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
	public Timestamp getGOODS_DATE() {
		return GOODS_DATE;
	}
	public void setGOODS_DATE(Timestamp gOODS_DATE) {
		GOODS_DATE = gOODS_DATE;
	}
	public String getGOODS_AMOUNT() {
		return GOODS_AMOUNT;
	}
	public void setGOODS_AMOUNT(String gOODS_AMOUNT) {
		GOODS_AMOUNT = gOODS_AMOUNT;
	}
	
	@Override
	public String toString() {
		return "GoodsDTO [GOODS_NO=" + GOODS_NO + ", GOODS_CATEGORY=" + GOODS_CATEGORY + ", GOODS_NAME=" + GOODS_NAME
				+ ", GOODS_CONTENT=" + GOODS_CONTENT + ", GOODS_SELL_PRICE=" + GOODS_SELL_PRICE + ", GOODS_SALE_PRICE="
				+ GOODS_SALE_PRICE + ", GOODS_DATE=" + GOODS_DATE + ", GOODS_AMOUNT=" + GOODS_AMOUNT + "]";
	}
	

	
}
