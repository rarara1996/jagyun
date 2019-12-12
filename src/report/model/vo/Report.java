package projectDiagram.report.model.vo;

public class Report {
	public Report() {};
	private int reportNo;
	private int buyNo;
	private String reason;
	private int category;
	@Override
	public String toString() {
		return "Report [reportNo=" + reportNo + ", buyNo=" + buyNo + ", reason=" + reason + ", category=" + category
				+ "]";
	}
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public int getBuyNo() {
		return buyNo;
	}
	public void setBuyNo(int buyNo) {
		this.buyNo = buyNo;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public Report(int reportNo, int buyNo, String reason, int category) {
		super();
		this.reportNo = reportNo;
		this.buyNo = buyNo;
		this.reason = reason;
		this.category = category;
	}
}
