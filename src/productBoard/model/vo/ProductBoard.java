package productBoard.model.vo;

public class ProductBoard {
	private int productNo;
	private int productCate;
	private String productName;
	private String productExplain;
	private String status;
	private int amount;
	private int price;
	private String sell;
	
	public ProductBoard() {}
	
	public ProductBoard(int productNo, int productCate, String productName, String productExplain, String status,
			int amount, int price, String sell) {
		super();
		this.productNo = productNo;
		this.productCate = productCate;
		this.productName = productName;
		this.productExplain = productExplain;
		this.status = status;
		this.amount = amount;
		this.price = price;
		this.sell = sell;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getProductCate() {
		return productCate;
	}

	public void setProductCate(int productCate) {
		this.productCate = productCate;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductExplain() {
		return productExplain;
	}

	public void setProductExplain(String productExplain) {
		this.productExplain = productExplain;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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

	public String getSell() {
		return sell;
	}

	public void setSell(String sell) {
		this.sell = sell;
	}

	@Override
	public String toString() {
		return "ProductBoard [productNo=" + productNo + ", productCate=" + productCate + ", productName=" + productName
				+ ", productExplain=" + productExplain + ", status=" + status + ", amount=" + amount + ", price="
				+ price + ", sell=" + sell + "]";
	}
	
	

	
	
	
}
