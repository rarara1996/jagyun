package projectDiagram.purchase.model.vo;

import java.sql.Date;

public class Purchase {
	private int buyNo;
	private int userNo;
	private int productNo;
	private String getPeople;
	private String getWhere;
	private String getPhone;
	private int amount;
	private int price;
	private Date buyDate;
	private String boxNum;
	
	public Purchase() {}

	public Purchase(int buyNo, int userNo, int productNo, String getPeople, String getWhere, String getPhone,
			int amount, int price, Date buyDate, String boxNum) {
		super();
		this.buyNo = buyNo;
		this.userNo = userNo;
		this.productNo = productNo;
		this.getPeople = getPeople;
		this.getWhere = getWhere;
		this.getPhone = getPhone;
		this.amount = amount;
		this.price = price;
		this.buyDate = buyDate;
		this.boxNum = boxNum;
	}

	public int getBuyNo() {
		return buyNo;
	}

	public void setBuyNo(int buyNo) {
		this.buyNo = buyNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getGetPeople() {
		return getPeople;
	}

	public void setGetPeople(String getPeople) {
		this.getPeople = getPeople;
	}

	public String getGetWhere() {
		return getWhere;
	}

	public void setGetWhere(String getWhere) {
		this.getWhere = getWhere;
	}

	public String getGetPhone() {
		return getPhone;
	}

	public void setGetPhone(String getPhone) {
		this.getPhone = getPhone;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}

	public String getBoxNum() {
		return boxNum;
	}

	public void setBoxNum(String boxNum) {
		this.boxNum = boxNum;
	}

	@Override
	public String toString() {
		return "Purchase [buyNo=" + buyNo + ", userNo=" + userNo + ", productNo=" + productNo + ", getPeople="
				+ getPeople + ", getWhere=" + getWhere + ", getPhone=" + getPhone + ", amount=" + amount + ", price="
				+ price + ", buyDate=" + buyDate + ", boxNum=" + boxNum + "]";
	}
	
	

}
