package user.model.dao;
import static common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import user.model.vo.User;
public class UserDao {
	// sql 폴더 안에 User 폴더 만들고 User-query.properties 파일 만들기
	private Properties prop = new Properties();

	public UserDao() {
		// 항상 memeber-query.properties에서 값을 가져올 수 있도록
		// 기본 생성자 안에서 properties 파일을 불러오는 작업을 하자~~
		String fileName = UserDao.class.getResource("/sql/User/User-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 1. 회원 로그인용 dao
	public User loginUser(Connection conn, String id, String pwd) {
		User loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginUser");
//loginUser=SELECT * FROM User WHERE USERID=? AND USERPWD=? AND ADMIN='Y'
		System.out.println(id);
		System.out.println(pwd);
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);
			pstmt.setString(2, pwd);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				loginUser = new User(rset.getInt("user_no"), rset.getString("user_id"), rset.getString("user_pwd"),
						rset.getString("user_name"), rset.getString("gender"),rset.getString("email"),
						rset.getString("address"),rset.getInt("dog_su"),rset.getString("phone"),
						rset.getString("birth"),rset.getString("admin"));
			}System.out.println(loginUser);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return loginUser;
	}

	// 2. 회원 가입용 dao
	public int insertUser(Connection conn, User m) {
		int result = 0;

		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertUser");
		System.out.println(sql);
		System.out.println(m);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getGender());
			pstmt.setString(5, m.getAddress());
			pstmt.setString(6, m.getEmail());
			pstmt.setInt(7, m.getdogSu());
			pstmt.setString(8, m.getPhone());
			pstmt.setString(9, m.getBirth());
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
	// 3. 아이디 중복 확인용 dao
	public int idCheck(Connection conn, String userId) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("idCheck");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}

	// 4. 회원 수정용 dao
	public int updateUser(Connection conn, User m) {
		int result = 0;
//updateUser=UPDATE MEMBER SET ADDRESS=?, dogSu=?, PHONE=? WHERE USER_ID=?

		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateUser");
		System.out.println(sql);
		System.out.println("ㅋㅋ"+m);
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getAddress());
			pstmt.setString(2, m.getPhone());
			pstmt.setInt(3, m.getUserNo());
			
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
		System.out.println(userId+1);
		String sql = prop.getProperty("selectUser");
		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				mem = new User(rset.getInt("user_no"), rset.getString("user_id"), rset.getString("user_pwd"),
						rset.getString("user_name"), rset.getString("gender"),rset.getString("email"),
						rset.getString("address"),rset.getInt("dog_Su"),rset.getString("phone"),
						rset.getString("birth"),rset.getString("admin"));
			}
			System.out.println(mem);
			
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
	
	//관리자용 리스트 뽑기
	public ArrayList<User> selectList(Connection conn) {
		ArrayList<User> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectUserList");
		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while (rset.next()) {
				list.add(new User(rset.getInt("user_no"), rset.getString("user_id"), rset.getString("user_pwd"),
						rset.getString("user_name"), rset.getString("gender"),rset.getString("email"),
						rset.getString("address"),rset.getInt("dog_Su"),rset.getString("phone"),
						rset.getString("birth"),rset.getString("admin")));
			}
			System.out.println(list);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	//이메일 체크용
	public int emailCheck(Connection conn, String email) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("emailCheck");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}
}
