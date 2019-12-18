package petsitter.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import common.model.vo.IMG;
import petsitter.model.vo.PsBList;
import petsitter.model.vo.PsBoard;

public class PsBoardInfoDao {
	
	private Properties prop = new Properties();

	public PsBoardInfoDao() {
		String fileName = PetSitterInfoDao.class.getResource("/sql/petsitter/petsitter-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int deleteBoard(int psBoardNo, Connection con) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateBoard(PsBoard psBoard, int psBoardNo, Connection con) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<PsBoard> selectList(Connection con) {
		// TODO Auto-generated method stub
		return null;
	}

	public PsBoard selectDetail(int psBoardNo, Connection con) {
		// TODO Auto-generated method stub
		return null;
	}

	//ps_board 게시물 내용을 저장하는 부분 
	public int insertPsBoard(PsBoard pb,Connection con) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String sql = prop.getProperty("insertPsBoard");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1,pb.getHourPrice()); //hourPrice
			pstmt.setString(2,pb.getService());//service
			pstmt.setString(3,pb.getCareSize());//size
			pstmt.setString(4, pb.getCareAge());//age
			pstmt.setInt(5,pb.getPsNo());//psNo
			pstmt.setString(6,pb.getCheckIn()); //checkIn
			pstmt.setString(7, pb.getCheckOut()); //checkOut
			pstmt.setInt(8,pb.getOneDayPrice());
			pstmt.setString(9,pb.getTitle());
			pstmt.setString(10, pb.getContent());
			System.out.println("psboard 저장중");
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	//IMG테이블에 바뀐 사진이랑 이런것들 저장하는 부분
	public int insertImg(ArrayList<IMG> fileList,Connection con) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("insertImg");
		
		try {
			for(int i = 0;i<fileList.size();i++) {
				IMG img = fileList.get(i);
				System.out.println(img);
				System.out.println("IMG 저장중");
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, img.getOriginName());
				pstmt.setString(2, img.getChangeName());
				pstmt.setString(3, img.getFilePath());
				pstmt.setInt(4, img.getCategory());
				pstmt.setInt(5, img.getFileLevel());
				
				result += pstmt.executeUpdate();
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public PsBoard checkBoard(Connection con, int psNo) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("checkBoard");
		PsBoard pb = null;
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, psNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				pb = new PsBoard();
				pb.setPsNo(rset.getInt("petsitter_no"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return pb;
	}

	public ArrayList selectBList(Connection con) {
		// TODO Auto-generated method stub
		System.out.println("PsBoardInfoDao : selectBList(게시글)");
		Statement stmt = null; 
		ResultSet rset = null;
		ArrayList<PsBList> list = new ArrayList<>(); //얘는 bList를 뽑아 오기 위해서 사용하는 부분
		
		String sql = prop.getProperty("selectBList");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				PsBList psb = new PsBList(rset.getInt("rnum"),rset.getInt("ps_board_no"),
						rset.getString("title"),rset.getInt("hour_price"),rset.getInt("oneday_price"),
						rset.getString("user_name"),rset.getInt("dog_su"),rset.getInt("score"),rset.getInt("user_no"));
				System.out.println(psb);
				list.add(psb);
				System.out.println("success : add psb to list");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		return list;
	}

	public ArrayList selectIList(Connection con) {
		// TODO Auto-generated method stub
		System.out.println("PsBoardInfoDao : selectIList(이미지)");
		Statement stmt = null; 
		ResultSet rset = null;
		
		ArrayList<IMG> list = new ArrayList<>(); //IMG리스트를 받아오기 위해서
		
		String sql = prop.getProperty("selectIList");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				IMG img = new IMG();
				img.setBoardNo(rset.getInt("board_no"));
				img.setChangeName(rset.getString("change_name"));
				System.out.println(img);
				list.add(img);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		
		return list;
	}

	public ArrayList selectPList(Connection con) {
		// TODO Auto-generated method stub
		System.out.println("PsBoardInfoDao : selectPList(프로필 이미지)");
		Statement stmt = null; 
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectPList");
		
		ArrayList<IMG> list = new ArrayList<>(); 
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				IMG img = new IMG();
				img.setBoardNo(rset.getInt("board_no"));
				img.setUserNo(rset.getInt("user_no"));
				img.setChangeName(rset.getString("change_name"));
				
				list.add(img);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		
		return list;
	}
	
}
