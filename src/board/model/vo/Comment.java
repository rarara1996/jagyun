package projectDiagram.board.model.vo;

public class Comment {
	private int commentNo;
	private String content;
	private int boardNo;
	private int userNo;
	
	public Comment() {}

	public Comment(int commentNo, String content, int boardNo, int userNo) {
		super();
		this.commentNo = commentNo;
		this.content = content;
		this.boardNo = boardNo;
		this.userNo = userNo;
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

	@Override
	public String toString() {
		return "Comment [commentNo=" + commentNo + ", content=" + content + ", boardNo=" + boardNo + ", userNo="
				+ userNo + "]";
	}
	
	
	
	
	

}
