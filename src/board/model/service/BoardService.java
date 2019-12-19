package board.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;


import board.model.dao.BoardDao;
import board.model.vo.Board;
import board.model.vo.Comment;
import common.model.vo.IMG;

public class BoardService {
	
	private BoardDao bd = new BoardDao();
	
	public int deleteBoard(int boardNo) {
		
		Connection conn = getConnection();
		int result = bd.deleteBoard(conn,boardNo);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public Board selectBoard(int boardNo) {
		Connection conn = getConnection();
		
		int result = bd.increasCount(conn,boardNo);
		Board board = null;
		if(result>0) {
			commit(conn);
			board = bd.selectBoard(conn, boardNo);
		}else {
			rollback(conn);
		}
		close(conn);
		
		
		return board;
		
		
	}
	// 게시글 입력
	public int insertBoard(Board b) {
		Connection conn = getConnection();
		int result = new BoardDao().insertBoard(conn,b);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	public int getListCount() {
		Connection conn = getConnection();
		int listCount = bd.getListCount(conn);
		close(conn);
	

		return listCount;
		
	}

	public void updateForm() {
		bd.updateForm();
		
	}

	public int updateBoard(Board b) {
		Connection conn = getConnection();
		int result = new BoardDao().updateBoard(conn,b);
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public int IMGDelete(int bId) {
		Connection conn = getConnection();
		
		int result = new BoardDao().IMGDelete(conn,bId);
		return bId;
		
		
	}

	public ArrayList<IMG> selectIMG(int bId) {
		Connection conn = getConnection();
		ArrayList<IMG> list = new BoardDao().selectIMG(conn,bId);
		return list;
		
	}

	public int insertIMG(Board b, ArrayList<IMG> fileList) {
		Connection conn = getConnection();
	
		int result = bd.insertIMGBoard(conn,b);
		int result2 = bd.insertIMG(conn,fileList);
		return result;
		
	}


	public int updateIMG(Board b, ArrayList<IMG> fileList) {
		Connection conn = getConnection();
		int result = new BoardDao().updateIMG(conn,b);
		return result;
		
	}

	public ArrayList<Board> selectList(int currentPage, int boardLimit) {
		Connection conn = getConnection();
		
		ArrayList<Board>list = new BoardDao().selectList(conn,currentPage,boardLimit);
				
		close(conn);
		
		return list;
	}

	public ArrayList<Comment> insertComment(Comment cm) {
		Connection conn = getConnection();
		int result = bd.insertComment(conn,cm);
		ArrayList<Comment> rlist =bd.selectCommentList(conn,cm.getCommentNo());
		return null;
	}

	public ArrayList<Board> selectList(int flag) {
		Connection conn = getConnection();
		ArrayList list =null;
		BoardDao  bDao = new BoardDao();
		if(flag == 1) {
			list = bDao.selectBList(conn);
		}else {
			list = bDao.selectFList(conn);
		}
		return null;
	}

	// 조회수 증가하지 않고 조회
	public Board selectBoradNoCnt(int boardNo) {
		Connection conn = getConnection();
		Board board = bd.selectBoard(conn, boardNo);
		close(conn);
		
		return board;
	}



	

}
