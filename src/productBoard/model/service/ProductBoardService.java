package projectDiagram.productBoard.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import projectDiagram.productBoard.model.dao.ProductBoardDao;
import projectDiagram.productBoard.model.vo.ProductBoard;
import static projectDiagram.common.JDBCTemplate.*;

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

	public int getListCount() {//리스트 총 개수 구하기
		Connection conn = getConnection();
		int result = new ProductBoardDao().getListCount(conn);
		return 0;
	}


	public int updateProductBoard(ProductBoard pb) {
		Connection conn = getConnection();
		int result = new ProductBoardDao().updateProductBoard(conn,pb);
		return 0;
	}

}
