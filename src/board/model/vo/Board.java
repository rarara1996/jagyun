package board.model.vo;

import java.util.Date;

public class Board {
	private int boardNo;
	private String userName;
	private String title;
	private String content;
	private Date enrollDate;
	private int category;
	private String status;
	private int boardCount;
	
	public Board() {}

	
	public Board(int boardNo, String userNo, String title, String content, Date enrollDate, int category, String status,int boardCount) {
		super();
		this.boardNo = boardNo;
		this.userName = userNo;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.category = category;
		this.status = status;
		this.boardCount=boardCount;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getBoardCount() {
		return boardCount;
	}


	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}


	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", userName=" + userName + ", title=" + title + ", content=" + content
				+ ", enrollDate=" + enrollDate + ", category=" + category + ", status=" + status + ", boardCount="
				+ boardCount + "]";
	}


	

}
