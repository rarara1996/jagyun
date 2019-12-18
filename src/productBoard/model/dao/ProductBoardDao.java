package productBoard.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;


import common.model.vo.IMG;
import productBoard.model.vo.ProductBoard;

public class ProductBoardDao {
	private Properties prop = new Properties();
	
	public ProductBoardDao(){
		String fileName = ProductBoardDao.class.getResource("/sql/productBoard/productBoard-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int deleteProductBoard(Connection conn, int bId) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ProductBoard selectProductBoard(Connection conn, int productNo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ProductBoard pb = null;

		// 쿼리문 복잡하니 스크립트 참고
		String query = prop.getProperty("selectProductBoard");

		try {
			pstmt = conn.prepareStatement(query);

			pstmt.setInt(1, productNo);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				pb = new ProductBoard(
						rs.getInt("PRODUCT_NO"), 
						rs.getInt("PRODUCT_CATE"), 
						rs.getString("PRODUCT_NAME"),
						rs.getString("PRODUCT_EXPLAIN"),
						rs.getString("STATUS"),
						rs.getInt("AMOUNT"),
						rs.getInt("PRICE"), 
						rs.getString("SIZE")
						);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return pb;
	}

	public int insertProductBoard(Connection conn, ProductBoard pd) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int getListCount(Connection conn) {
		// TODO Auto-generated method stub
		return 0;
	}



	public int updateProductBoard(Connection conn, ProductBoard pb) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<ProductBoard> selectList(Connection conn, int currentPage, int boardLimit) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList selectpbList(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<ProductBoard> list = null;
		
		System.out.println();

		String sql = prop.getProperty("selectpbList");

		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			list = new ArrayList<ProductBoard>();

			while (rset.next()) {
				list.add(new ProductBoard(
						rset.getInt("PRODUCT_NO"), 
						rset.getString("PRODUCT_NAME"),
						rset.getString("PRODUCT_EXPLAIN"), 
						rset.getString("STATUS"),
						rset.getInt("PRICE"),
						rset.getString("'SIZE'")
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}

		return list;
	}

	public ArrayList selectFList(Connection conn) {
		ArrayList<IMG> list = new ArrayList<IMG>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectFList");

		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				IMG at = new IMG();
				at.setProductNo(rset.getInt("product_No"));
				at.setChangeName(rset.getString("change_name"));

				list.add(at);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int insertThBoard(Connection conn, ProductBoard b) {
		PreparedStatement pstmt = null;

		int result = 0;

		String sql = prop.getProperty("insertThBoard");
		//insertThBoard=INSERT INTO BOARD VALUES(SEQ_BID.NEXTVAL, 2, 10, ?, ?, ?, DEFAULT, SYSDATE, SYSDATE, DEFAULT)

		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, b.getProductCate());
			pstmt.setString(2, b.getProductName());
			pstmt.setString(3, b.getProductExplain());
			pstmt.setInt(4,b.getAmount());
			pstmt.setInt(5,b.getPrice());
			pstmt.setString(6, b.getSize());
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int insertIMG(Connection conn, ArrayList<IMG> fileList) {
		PreparedStatement pstmt = null;

		int result = 0;

		String sql = prop.getProperty("insertIMG");
		
		try {
			for (int i = 0; i < fileList.size(); i++) {

				IMG at = fileList.get(i);
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, at.getOriginName());
				pstmt.setString(2, at.getChangeName());
				pstmt.setString(3, at.getFilePath());
				pstmt.setInt(4, at.getFileLevel());

				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<IMG> selectIMG(Connection conn, int product_No) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<IMG> list = null;

		String sql = prop.getProperty("selectIMG");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, product_No);

			rset = pstmt.executeQuery();

			list = new ArrayList<IMG>();

			while (rset.next()) {
				IMG at = new IMG();
				at.setIMGNum(rset.getInt("IMG_NUM"));
				at.setOriginName(rset.getString("origin_name"));
				at.setChangeName(rset.getString("change_name"));
				at.setFilePath(rset.getString("file_path"));
				at.setUploadDate(rset.getDate("upload_date"));

				list.add(at);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}
	
}
