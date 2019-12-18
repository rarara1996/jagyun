package admin.user.model.service;
import static common.JDBCTemplate.*;

import java.sql.Connection;

import admin.user.model.dao.adminUserDao;
public class adminUserService {

	public int adupdateUser(String[] irr,String status) {
	Connection conn = getConnection();
		
		int result = new adminUserDao().adUpdateUser(conn, irr,status);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}



}
