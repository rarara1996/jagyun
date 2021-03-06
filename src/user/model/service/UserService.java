package user.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import common.model.dao.IMGDao;
import common.model.vo.IMG;
import user.model.dao.UserDao;
import user.model.vo.User;
public class UserService {
	// 1. 로그인
	public User loginUser(String userId, String userPwd) {
		Connection conn = getConnection();
		User loginUser = new UserDao().loginUser(conn, userId, userPwd);
		close(conn);
		return loginUser;
	}

	// 2. 회원가입용 서비스
	public int insertUser(User m) {
		Connection conn = getConnection();
		int result = new UserDao().insertUser(conn, m);
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	// 3. 아이디 중복 체크용 서비스
	public int idCheck(String userId) {
		Connection conn = getConnection();
		int result = new UserDao().idCheck(conn, userId);
		close(conn);
		return result;
	}
	
	// 4. 회원 정보 수정용 서비스
	public User updateUser(User m) {
		Connection conn = getConnection();
		User updateUser = null;
		// 1. 수정사항 업데이트
		int result = new UserDao().updateUser(conn, m);
		System.out.println(result+"수ㅈ정됨");
		if(result > 0) {
			// 업데이트 성공 시
			updateUser = new UserDao().selectUser(conn, m.getUserId());
			System.out.println("ㅋㅋ"+updateUser);
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		System.out.println("ㅋㅋ"+updateUser);
		return updateUser;
	}
	
	// 5. 비밀번호 변경용 서비스
	public User updatePwd(String userId, String userPwd, String newPwd) {
		Connection conn = getConnection();
		User updateUser = null;
		// 1. 비밀번호 변경
		int result = new UserDao().updatePwd(conn, userId, userPwd, newPwd);
		// 2. updateUser select 해오기
		if(result > 0) {
			updateUser = new UserDao().selectUser(conn, userId);
			commit(conn);
		}else {
			rollback(conn);
		}
		return updateUser;
	}
	
	// 6. 회원 탈퇴용 서비스
	public int deleteUser(String userId) {
		Connection conn = getConnection();
		int result = new UserDao().deleteUser(conn, userId);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	
	//7. 회원 조회용 dao
	public ArrayList<User> selectList() {
		Connection conn = getConnection();

		ArrayList<User> list = new UserDao().selectList(conn);

		close(conn);

		return list;
	}
	
	//8. 이메일 중복 체크용
	public int emailCheck(String email) {
		Connection conn = getConnection();
		int result = new UserDao().emailCheck(conn, email);
		close(conn);
		return result;
	}
	
	//9.이미지용 유저넘버 셀렉
	public User userNOSelect(String userId) {
		// JDBCTemplate 만들기
		Connection conn = getConnection();

		User User = new UserDao().selectUser(conn, userId);

		close(conn);

		return User;
	}
	
	
	//10. 유저사진넣기
	public int insertUserIMG(IMG userimg) {
		Connection conn = getConnection();
		int result = new IMGDao().insertUserImg(conn, userimg);
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

}