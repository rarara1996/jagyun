package myPage.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import myPage.model.dao.mpPetsitterDao;
import petsitter.model.vo.PsInfo;
import petsitter.model.vo.PsSchedule;
import user.model.dao.UserDao;
import user.model.vo.User;

public class mpPetsitterSerivce {

	public PsInfo checkUser(int userNo) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		System.out.println("ㅋㅋ!");
		PsInfo ps = new mpPetsitterDao().checkUser(con,userNo);
		
		close(con);
		
		return ps;
	}
	
	//스케줄 입력
	public PsInfo insertSch(int userNo,int psNo, String sch) {
		Connection conn = getConnection();
		PsInfo updateSch = null;
		// 스케줄입력하기
		int result = new mpPetsitterDao().insertSch(conn, userNo, psNo, sch);
		System.out.println(result+"수정됨!!");
		if(result > 0) {
			// 업데이트 성공 시
			updateSch = new mpPetsitterDao().checkUser(conn,userNo);
			System.out.println("ㅋㅋ"+updateSch);
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		System.out.println("ㅋㅋ"+updateSch);
		return updateSch;
	}

	public PsSchedule selectSch(int userNo) {
		Connection con = getConnection();
		PsSchedule ps = new mpPetsitterDao().selectSch(con,userNo);
		
		close(con);
		
		return ps;
	}
}
