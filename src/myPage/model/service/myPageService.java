package  projectDiagram.myPage.model.service;

import static  projectDiagram.common.JDBCTemplate.*;


import java.sql.Connection;


import  projectDiagram.member.model.vo.User;
import  projectDiagram.myPage.model.dao.myPageDao;

public class myPageService {
	// 4. 회원 정보 수정용 서비스
	public User updateUser(User m) {
		Connection conn = getConnection();
		User updateUser = null;
		// 1. 수정사항 업데이트

		int result = new myPageDao().updateUser(conn, m);
		if(result > 0) {
			// 업데이트 성공 시
			updateUser = new myPageDao().selectUser(conn, m.getUserId());
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return updateUser;
	}
	
	// 5. 비밀번호 변경용 서비스
	public User updatePwd(String userId, String userPwd, String newPwd) {
		Connection conn = getConnection();
		User updateUser = null;
		// 1. 비밀번호 변경
		int result = new myPageDao().updatePwd(conn, userId, userPwd, newPwd);
		// 2. updateUser select 해오기
		if(result > 0) {
			updateUser = new myPageDao().selectUser(conn, userId);
			commit(conn);
		}else {
			rollback(conn);
		}
		return updateUser;
	}
	
	// 6. 회원 탈퇴용 서비스
	public int deleteUser(String userId) {
		Connection conn = getConnection();
		int result = new myPageDao().deleteUser(conn, userId);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	//7.회원 조회용 서비스
	public User selectUser(int nno) {
		return null;
	}
}
