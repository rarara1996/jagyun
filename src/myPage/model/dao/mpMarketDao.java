package  projectDiagram.myPage.model.dao;

import static  projectDiagram.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import  projectDiagram.myPage.model.vo.Market;

import  projectDiagram.report.model.vo.Report;

public class mpMarketDao {
	private Properties prop = new Properties();

	public mpMarketDao() {
		String fileName = Report.class.getResource("/sql/notice/notice-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	//리스트 조회용
	public ArrayList<Market> selectList(Connection conn) {

		ArrayList<Market> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectMarket");

		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new Market(rset.getInt("nno"), rset.getString("ntitle"), rset.getString("ncontent"),
						rset.getString("nwriter"), rset.getInt("ncount"), rset.getDate("ndate"),
						rset.getString("status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	//상세조회용
	public Market selectMarket(Connection conn, int nno) {
		Market m = null;

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectMarket");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, nno);

			rset = pstmt.executeQuery();
			if (rset.next()) {
				m = new Market(rset.getInt("nno"), rset.getString("ntitle"), rset.getString("ncontent"),
						rset.getString("nwriter"), rset.getInt("ncount"), rset.getDate("ndate"),
						rset.getString("status"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return m;
	}
}
