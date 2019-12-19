package admin.Petsitter.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import admin.Petsitter.model.vo.AdminPetsitterDao;
import admin.user.model.dao.adminUserDao;
import petsitter.model.vo.PsInfo;
import user.model.dao.UserDao;
import user.model.vo.User;

public class AdminPetsitterService {
	public ArrayList<PsInfo> selectList() {
		Connection conn = getConnection();

		ArrayList<PsInfo> list = new AdminPetsitterDao().selectList(conn);
		close(conn);
		System.out.println("z"+list);
		return list;
	}
	
	public ArrayList<PsInfo> selectRequestList() {
		Connection conn = getConnection();

		ArrayList<PsInfo> list = new AdminPetsitterDao().selectRequestList(conn);
		close(conn);
		System.out.println("zz"+list);
		return list;
	}

	public int adUpdatePetsitterRequest(String[] irr, String status) {
	Connection conn = getConnection();
		System.out.println("여긴옴?");
		int result = new AdminPetsitterDao().adUpdatePetsitterRequest(conn, irr,status);
		System.out.println(result+"왔냐");

		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}
