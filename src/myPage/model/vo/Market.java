package  projectDiagram.myPage.model.vo;

import java.sql.Date;



public class Market {

	private int nno;
	private String ntitle;
	private String ncontent;
	private String nwriter;
	public Market(int nno, String ntitle, String ncontent, String nwriter, int ncount, Date ndate, String status) {
		super();
		this.nno = nno;
		this.ntitle = ntitle;
		this.ncontent = ncontent;
		this.nwriter = nwriter;
		this.ncount = ncount;
		this.ndate = ndate;
		this.status = status;
	}
	private int ncount;
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public String getNwriter() {
		return nwriter;
	}
	public void setNwriter(String nwriter) {
		this.nwriter = nwriter;
	}
	public int getNcount() {
		return ncount;
	}
	public void setNcount(int ncount) {
		this.ncount = ncount;
	}
	public Date getNdate() {
		return ndate;
	}
	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	private Date ndate;
	private String status;
}
