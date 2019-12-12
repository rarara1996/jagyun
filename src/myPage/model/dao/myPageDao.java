package  projectDiagram.myPage.model.dao;

import static  projectDiagram.common.JDBCTemplate.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import  projectDiagram.member.model.vo.User;

public class myPageDao {
	private Properties prop = new Properties();
	// 4. 회원 수정용 dao
	public int updateUser(Connection conn, User m) {
		int result = 0;
//updateUser=UPDATE User SET USERNAME=?, EMAIL=?, ADDRESS=?, DOGCOUNT=?, PHONE=?, BIRTH=? WHERE USERID=?

		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateUser");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getUserName());
			pstmt.setString(2, m.getEmail());
			pstmt.setString(3, m.getAddress());
			pstmt.setInt(4, m.getDogCount());
			pstmt.setString(5, m.getPhone());
			pstmt.setString(6, m.getBirth());
			pstmt.setString(7, m.getUserId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	// 5. 회원 조회용 dao
	public User selectUser(Connection conn, String userId) {
		User mem = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectUser");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				mem = new User(rset.getInt("userno"), rset.getString("userId"), rset.getString("userPwd"),
						rset.getString("userName"), rset.getString("gender"),rset.getString("email"),
						rset.getString("address"),rset.getInt("dogCount"),rset.getString("phone"),
						rset.getString("birth"),rset.getString("admin"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return mem;
	}

	// 6. 비밀번호 변경용 dao
	public int updatePwd(Connection conn, String userId, String userPwd, String newPwd) {
		int result = 0;
		PreparedStatement pstmt = null;

		String sql = prop.getProperty("updatePwd");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, newPwd);
			pstmt.setString(2, userId);
			pstmt.setString(3, userPwd);

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;

	}
	
	// 7. 회원 탈퇴용 dao
	public int deleteUser(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = prop.getProperty("deleteUser");
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}
