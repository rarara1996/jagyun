package petsitter.model.vo;

import java.sql.Date;

public class PsSchedule {
	private int scheduleNo;
	private Date apDate;
	private int psNo;
	
	public PsSchedule() { }

	public PsSchedule(int scheduleNo, Date apDate, int psNo) {
		super();
		this.scheduleNo = scheduleNo;
		this.apDate = apDate;
		this.psNo = psNo;
	}

	
	
	public int getScheduleNo() {
		return scheduleNo;
	}

	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	public Date getApDate() {
		return apDate;
	}

	public void setApDate(Date apDate) {
		this.apDate = apDate;
	}

	public int getPsNo() {
		return psNo;
	}

	public void setPsNo(int psNo) {
		this.psNo = psNo;
	}

	@Override
	public String toString() {
		return "PsSchedule [scheduleNo=" + scheduleNo + ", apDate=" + apDate + ", psNo=" + psNo + "]";
	}
	
	
}
