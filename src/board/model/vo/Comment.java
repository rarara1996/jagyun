package board.model.vo;

import java.util.Date;

public class Comment {
	private int commentNo;
	private String content;
	private int boardNo;
	private int userNo;
	private String userName;
	private String status;
	private Date enrollDate;
	
	public Comment() {}

	public Comment(int commentNo, String content, int boardNo, int userNo, String userName, String status,
			Date enrollDate) {
		super();
		this.commentNo = commentNo;
		this.content = content;
		this.boardNo = boardNo;
		this.userNo = userNo;
		this.userName = userName;
		this.status = status;
		this.enrollDate = enrollDate;
	}

	

	public Comment(int commentNo, String content, int boardNo, String userName, String status, Date enrollDate) {
		super();
		this.commentNo = commentNo;
		this.content = content;
		this.boardNo = boardNo;
		this.userName = userName;
		this.status = status;
		this.enrollDate = enrollDate;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "Comment [commentNo=" + commentNo + ", content=" + content + ", boardNo=" + boardNo + ", userNo="
				+ userNo + ", userName=" + userName + ", status=" + status + ", enrollDate=" + enrollDate + "]";
	}

	
	

	
	

}
