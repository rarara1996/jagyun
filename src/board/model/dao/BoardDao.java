package board.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import board.model.vo.Board;
import board.model.vo.Comment;
import common.model.vo.IMG;

public class BoardDao {
	private Properties prop = new Properties();
	
	
	public BoardDao() {
		String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	public int deleteBoard(Connection conn, int boardNo) {
		PreparedStatement pstmt = null;
		int result =0;
		String sql = prop.getProperty("deleteBoard");
		
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			result=pstmt.executeUpdate();			
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		return result;
		
	}

	public Board selectBoard(Connection conn, int boardNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board board = null;
		
		String sql = prop.getProperty("selectBoard");
		
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				board = new Board(rset.getInt("BOARD_NO"),
						rset.getString("USER_NAME"),
						rset.getString("TITLE"),
						rset.getString("CONTENT"),
						// 오타 ENROLL_DATE
						rset.getDate("EROLL_DATE"),
						rset.getInt("CATE"),
						rset.getString("STATUS"),
						rset.getInt("BOARD_COUNT"));
			
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return board;
		
	}

	public int insertBoard(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result=0;
		String sql = prop.getProperty("insertBoard");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(b.getUserName()));
			pstmt.setString(2, b.getTitle());
			pstmt.setString(3, b.getContent());
			
			result = pstmt.executeUpdate();
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);			
		}
		return result;
	}

	
	
	
	
	
	
	
	
	
	public int getListCount(Connection conn) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("getListCount");
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}

	
	public ArrayList<Board> selectList(Connection conn, int currentPage, int boardLimit) {
		ArrayList<Board> list = new ArrayList<>();
		
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (currentPage-1)* boardLimit +1;
			int endRow = startRow + boardLimit -1;
		
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
		
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt(2),
								rset.getString(6),
								rset.getString(4),
								rset.getString(5),
								rset.getDate(8),
								rset.getInt(3),
								rset.getString(9),
								rset.getInt(7)));
				
		}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
	public void updateForm() {
		
		
	}

	public int updateBoard(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result=0;
		String sql=prop.getProperty("updateBoard");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setInt(3, Integer.parseInt(b.getUserName()));
			
			result =pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);			
		}
		
		
		return result;
		
	}

	public int IMGDelete(Connection conn, int bId) {
		int result=0;
		return result;
	}

	public ArrayList<IMG> selectIMG(Connection conn, int bId) {
		ArrayList<IMG>list = null;
		return list;
		
	}

	public int insertIMG(Connection conn, ArrayList<IMG> fileList) {
		int result = 0;
		return result;
		
	}



	public int updateIMG(Connection conn, Board b) {
		int result =0;
		return result;
		
	}

	

	public int insertComment(Connection conn, Comment cm) {
		int result = 0;
		return result;
	}

	public ArrayList<Comment> selectCommentList(Connection conn, int commentNo) {
		ArrayList<Comment> rlist = null;
		return rlist;
		
	}

	public int insertIMGBoard(Connection conn, Board b) {
		int result = 0;
		return result;
	}

	public ArrayList selectBList(Connection conn) {
		ArrayList<Board> list = null;
		return list;
		
	}

	public ArrayList selectFList(Connection conn) {
		ArrayList<IMG> list = new ArrayList<IMG>();
		return list;
	}




	public int increasCount(Connection conn, int boardNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}



}
