package purchase.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import purchase.model.dao.PurchaseDao;
import purchase.model.vo.Purchase;

public class PurchaseService {
	PurchaseDao pd = new PurchaseDao();

	public int InsertPurchase(Purchase pu) {
		Connection conn = getConnection();
		
		int result = new PurchaseDao().InsertPurchase(conn , pu); 
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}

	public int JjimInsert(int userNo, int productNo) {//찜 목록
		Connection conn = getConnection();
		
		int result = new PurchaseDao().JjimInsert(conn , userNo , productNo); 
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}
	
}
