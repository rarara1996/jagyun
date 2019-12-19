package productBoard.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import productBoard.model.dao.ProductBoardDao;
import productBoard.model.vo.ProductBoard;
import static common.JDBCTemplate.*;

public class ProductBoardService {
	ProductBoardDao pbd = new ProductBoardDao();

	public int deleteProductBoard(int productNo) { //삭제
		Connection conn = getConnection();
		int result = new ProductBoardDao().deleteProductBoard(conn,productNo);
		return 0;
	}

	public ProductBoard selectProductBoard(int productNo) { //상세 조회
		Connection conn = getConnection();
		ProductBoard pb = new ProductBoardDao().selectProductBoard(productNo);
		return null;
	}

	public int insertProductBoard(ProductBoard pd) {// 상품 게시판 작성
		Connection conn = getConnection();
		int result = new ProductBoardDao().insertProductBoard(conn , pd);
		return 0;
	}

	public int updateProductBoard(ProductBoard pb) { // 업데이트
		Connection conn = getConnection();
		int result = new ProductBoardDao().updateProductBoard(conn,pb);
		return 0;
	}

	public ArrayList<ProductBoard> selectList(int currentPage, int boardLimit) { //상품 리스트 출력
		Connection conn = getConnection();
		ArrayList<ProductBoard> plist = new ProductBoardDao().selectList(conn , currentPage , boardLimit);
		return null;
	}

	public int getListCount() {// 페이징  리스트 
		// TODO Auto-generated method stub
		return 0;
	}

}
