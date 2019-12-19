package myPage.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import petsitter.model.dao.PetSitterInfoDao;
import petsitter.model.vo.PsInfo;
import petsitter.model.vo.PsSchedule;

public class mpPetsitterDao {
	
	private Properties prop = new Properties();
	public mpPetsitterDao(){
		String fileName = PetSitterInfoDao.class.getResource("/sql/petsitter/mp-petsitter-query.properties").getPath();
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
	
	public PsInfo checkUser(Connection con, int userNo) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		PsInfo ps = null;
		String query = prop.getProperty("checkUser");
		System.out.println(query);
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ps = new PsInfo(rset.getString("user_id"),rset.getString("user_name"),rset.getInt("petsitter_no"), rset.getInt("user_no"), rset.getString("reason"),
						rset.getString("job"), rset.getString("dog_chk"),rset.getString("care_exp"),
						rset.getString("certific"),rset.getString("approval"),rset.getInt("score")
						);
			}
			
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return ps;
	}

	
	//스케줄넣기!
	public int insertSch(Connection conn, int psNo, int userNo, String sch) {
		int result = 0;

		PreparedStatement pstmt = null;


		
		String sql = prop.getProperty("insertSch");
		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sch);
			pstmt.setInt(2, psNo);
			pstmt.setInt(3, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	//펫시터스케줄갖고오기
	public PsSchedule selectSch(Connection con, int userNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		PsSchedule ps = null;
		String query = prop.getProperty("selectSch");
		System.out.println(query);
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ps = new PsSchedule(rset.getInt("schedule_no"),rset.getString("ap_date"),rset.getInt("petsitter_no"),rset.getInt("user_no")
						);
			}
			
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return ps;
	}


}
