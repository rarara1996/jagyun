package petsitter.model.vo;

/**
 * @author LG
 *
 */
public class PsInfoDetail {
	private int userNo;
	private String userName;
	private String address;
	private String email;
	private String phone;
	private int psNo;
	
	
	
	public PsInfoDetail() { }

	public PsInfoDetail(int userNo, String userName, String address, String email, String phone, int psNo) {
		super();
		this.userNo = userNo;
		this.userName = userName;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.psNo = psNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getPsNo() {
		return psNo;
	}

	public void setPsNo(int psNo) {
		this.psNo = psNo;
	}

	@Override
	public String toString() {
		return "PsInfoDetail [userNo=" + userNo + ", userName=" + userName + ", address=" + address + ", email=" + email
				+ ", phone=" + phone + ", psNo=" + psNo + "]";
	}
	
	
}
