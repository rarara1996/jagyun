package purchase.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import static common.JDBCTemplate.*;

import javax.swing.plaf.synth.SynthSpinnerUI;

import productBoard.model.dao.ProductBoardDao;
import purchase.model.vo.Purchase;

public class PurchaseDao {
	private Properties prop = new Properties();
	
	public PurchaseDao() {
		String fileName = ProductBoardDao.class.getResource("/sql/purchase/purchase-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public int InsertPurchase(Connection conn, Purchase pu) {
		PreparedStatement pstmt = null;

		int result = 0;

		String sql = prop.getProperty("insertPurchase");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pu.getUser_no());
			pstmt.setInt(2, pu.getProduct_no());
			pstmt.setString(3, pu.getGet_people());
			pstmt.setString(4, pu.getGet_where());
			pstmt.setString(5, pu.getGet_phone());
			pstmt.setInt(6, pu.getAmount());
			pstmt.setInt(7,pu.getPrice());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int JjimInsert(Connection conn, int userNo, int productNo) {


		PreparedStatement pstmt = null;

		int result = 0;

		String sql = prop.getProperty("jjimInsert");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, productNo);
			
			result=pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}
	
}
