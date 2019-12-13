package projectDiagram.petsitter.model.vo;

import java.sql.Date;

public class Reservation {
	private int reservNO;
	private int psBoardNum;
	private int dogNum;
	private String checkIn;
	private Date preMeet;
	private String pay;
	private Date reservDate;
	private Date endReserv;
	
	public Reservation() { }

	public Reservation(int reservNO, int psBoardNum, int dogNum, String checkIn, Date preMeet, String pay,
			Date reservDate, Date endReserv) {
		super();
		this.reservNO = reservNO;
		this.psBoardNum = psBoardNum;
		this.dogNum = dogNum;
		this.checkIn = checkIn;
		this.preMeet = preMeet;
		this.pay = pay;
		this.reservDate = reservDate;
		this.endReserv = endReserv;
	}

	public int getReservNO() {
		return reservNO;
	}

	public void setReservNO(int reservNO) {
		this.reservNO = reservNO;
	}

	public int getPsBoardNum() {
		return psBoardNum;
	}

	public void setPsBoardNum(int psBoardNum) {
		this.psBoardNum = psBoardNum;
	}

	public int getDogNum() {
		return dogNum;
	}

	public void setDogNum(int dogNum) {
		this.dogNum = dogNum;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public Date getPreMeet() {
		return preMeet;
	}

	public void setPreMeet(Date preMeet) {
		this.preMeet = preMeet;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public Date getReservDate() {
		return reservDate;
	}

	public void setReservDate(Date reservDate) {
		this.reservDate = reservDate;
	}

	public Date getEndReserv() {
		return endReserv;
	}

	public void setEndReserv(Date endReserv) {
		this.endReserv = endReserv;
	}

	@Override
	public String toString() {
		return "Reservation [reservNO=" + reservNO + ", psBoardNum=" + psBoardNum + ", dogNum=" + dogNum + ", checkIn="
				+ checkIn + ", preMeet=" + preMeet + ", pay=" + pay + ", reservDate=" + reservDate + ", endReserv="
				+ endReserv + "]";
	}
	
	
}
