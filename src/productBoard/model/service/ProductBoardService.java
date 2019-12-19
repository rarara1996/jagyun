package productBoard.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.model.vo.IMG;
import productBoard.model.dao.ProductBoardDao;
import productBoard.model.vo.ProductBoard;
import static common.JDBCTemplate.*;

public class ProductBoardService {
	ProductBoardDao pbd = new ProductBoardDao();

	public ProductBoard selectProductBoard(int productNo) { // 상세 조회
		Connection conn = getConnection();
		ProductBoard pb = new ProductBoardDao().selectProductBoard(conn,productNo);
		
		close(conn);
		
		return pb;
	}



	public ArrayList selectList(int flag) {
		Connection conn = getConnection();

		ArrayList list = null;

		ProductBoardDao pbDao = new ProductBoardDao();

		if (flag == 1) {
			list = pbDao.selectpbList(conn);
		} else {
			list = pbDao.selectFList(conn);
		}

		close(conn);

		return list;
	}

	public int insertThumbnail(ProductBoard b, ArrayList<IMG> fileList) {
		Connection conn = getConnection();
		
		ProductBoardDao pbDao = new ProductBoardDao();
		
		int result1 = pbDao.insertThBoard(conn, b);
		int result2 = pbDao.insertIMG(conn, fileList);
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1;
	}

	public ArrayList<IMG> selectIMG(int product_No) {
		Connection conn = getConnection();
		
		ArrayList<IMG> list = new ProductBoardDao().selectIMG(conn, product_No);
		
		close(conn);
		
		return list;
	}



	public ArrayList<ProductBoard> searchList(String search) {
		Connection conn = getConnection();
		
		ArrayList<ProductBoard> list = new ProductBoardDao().searchList(conn, search);

		close(conn);
		
		return list;

	}



	public ArrayList<ProductBoard> cateList(String product_Cate) {
		Connection conn = getConnection();
		
		ArrayList<ProductBoard> list = new ProductBoardDao().cateList(conn, product_Cate);

		close(conn);
		
		return list;
	}

}
