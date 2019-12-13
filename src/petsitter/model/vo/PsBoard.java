package projectDiagram.petsitter.model.vo;

import java.sql.Date;

public class PsBoard {
	private int psBoardNo;
	private Date enrollDate;
	private int price;
	private String region;
	private String service;
	private String careEnviron;
	private String careSize;
	private int careAge;
	private int psNo;
	
	public PsBoard() { }

	public PsBoard(int psBoardNo, Date enrollDate, int price, String region, String service, String careEnviron,
			String careSize, int careAge, int psNo) {
		super();
		this.psBoardNo = psBoardNo;
		this.enrollDate = enrollDate;
		this.price = price;
		this.region = region;
		this.service = service;
		this.careEnviron = careEnviron;
		this.careSize = careSize;
		this.careAge = careAge;
		this.psNo = psNo;
	}

	public int getPsBoardNo() {
		return psBoardNo;
	}

	public void setPsBoardNo(int psBoardNo) {
		this.psBoardNo = psBoardNo;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public String getCareEnviron() {
		return careEnviron;
	}

	public void setCareEnviron(String careEnviron) {
		this.careEnviron = careEnviron;
	}

	public String getCareSize() {
		return careSize;
	}

	public void setCareSize(String careSize) {
		this.careSize = careSize;
	}

	public int getCareAge() {
		return careAge;
	}

	public void setCareAge(int careAge) {
		this.careAge = careAge;
	}

	public int getPsNo() {
		return psNo;
	}

	public void setPsNo(int psNo) {
		this.psNo = psNo;
	}

	@Override
	public String toString() {
		return "PsBoard [psBoardNo=" + psBoardNo + ", enrollDate=" + enrollDate + ", price=" + price + ", region="
				+ region + ", service=" + service + ", careEnviron=" + careEnviron + ", careSize=" + careSize
				+ ", careAge=" + careAge + ", psNo=" + psNo + "]";
	}
}
