package projectDiagram.purchase.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import projectDiagram.purchase.model.dao.PurchaseDao;
import projectDiagram.purchase.model.vo.Purchase;

import static projectDiagram.common.JDBCTemplate.*;

public class PurchaseService {

	public int deletePurhase(int buyNo) {
		Connection con = getConnection();
		
		int result = new PurchaseDao().deletePurchase(buyNo);
		
		return 0;
	}

	public Purchase selectPurchase(int buyNo) {
		Connection con = getConnection();
		Purchase p = new PurchaseDao().selectPurchase(con , buyNo);
		return null;
	}

	public int insertPurchase(Purchase p) {
		Connection con = getConnection();
		
		int result = new PurchaseDao().insertPurchase(con,p);
		
		return 0;
	}

	public int getListCount() {
		Connection con = getConnection();
		
		int result = new PurchaseDao().getListCount(con);
		
		return 0;
	}

	public int updatePurchase(Purchase p) {
		Connection con = getConnection();
		
		int result = new PurchaseDao().updatePurchase(con , p);
		
		return 0;
	}


}
