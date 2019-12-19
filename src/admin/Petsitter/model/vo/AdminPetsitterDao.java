package admin.Petsitter.model.vo;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import petsitter.model.vo.PsInfo;
import user.model.dao.UserDao;
import user.model.vo.User;

public class AdminPetsitterDao {
	private Properties prop = new Properties();
	public AdminPetsitterDao() {
		// 항상 memeber-query.properties에서 값을 가져올 수 있도록
		// 기본 생성자 안에서 properties 파일을 불러오는 작업을 하자~~
		String fileName = UserDao.class.getResource("/sql/admin/admin-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<PsInfo> selectList(Connection conn) {
		ArrayList<PsInfo> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectPetsitterList");
		//select m.user_id,m.user_name,pi.* from ps_info pi, member m where pi.user_no=m.user_no and approval='y';
		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while (rset.next()) {
				list.add(new PsInfo(rset.getString("user_id"),rset.getString("user_name"),rset.getInt("petsitter_no"), rset.getInt("user_no"), rset.getString("reason"),
						rset.getString("job"), rset.getString("dog_chk"),rset.getString("care_exp"),
						rset.getString("certific"),rset.getString("approval"),rset.getInt("score")
						));
			}
			System.out.println("zzz"+list);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}


	public ArrayList<PsInfo> selectRequestList(Connection conn) {
		ArrayList<PsInfo> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectPetsitterRequestList");
		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while (rset.next()) {
				list.add(new PsInfo(rset.getString("user_id"),rset.getString("user_name"),rset.getInt("petsitter_no"), rset.getInt("user_no"), rset.getString("reason"),
						rset.getString("job"), rset.getString("dog_chk"),rset.getString("care_exp"),
						rset.getString("certific"),rset.getString("approval"),rset.getInt("score")
						));
			}
			System.out.println("신청자"+list);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}


	public int adUpdatePetsitterRequest(Connection conn, String[] irr, String status) {
		PreparedStatement pstmt = null;
		System.out.println("dao..");
		int result = 0;
		
		String query = prop.getProperty("adupdatePetsitterRequest");
		System.out.println(query);
		try {
			System.out.println("흠");
			
			for(int i=0; i<irr.length; i++) {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, status);
			pstmt.setString(2, irr[i]);
			System.out.println("엥");
			result = pstmt.executeUpdate();
			System.out.println(result+"안됨?");
			}
			
			System.out.println("ㅠㅠ");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
