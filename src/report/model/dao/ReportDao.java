package  projectDiagram.report.model.dao;


import static  projectDiagram.common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import  projectDiagram.report.model.vo.Report;
public class ReportDao {
	private Properties prop = new Properties();

	public ReportDao() {
		String fileName = Report.class.getResource("/sql/notice/notice-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	
	//리스트 조회용
	public ArrayList<Report> selectList(Connection conn) {
		ArrayList<Report> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectReport");

		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new Report(rset.getInt("reportNo"), rset.getInt("buyNo"),rset.getString("reason"),rset.getInt("category")));
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
	public Report selectReport(Connection conn, int nno) {
		Report n = null;

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectReport");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, nno);

			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				n = new Report(rset.getInt("rerpotNo"), rset.getInt("buyNo"), rset.getString("reason"),
						rset.getInt("category"));

			}}catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}

			return n;
	
	}
	
	//수정용
	public int updateReport(Connection conn, Report r) {
		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("updateReport");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, r.getReason());
			pstmt.setInt(2, r.getReportNo());
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	//신고 작성용
	public int insertReport(Connection conn, Report n,String writer) {
		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("insertNotice");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, n.getBuyNo());
			pstmt.setString(2, n.getReason());
			pstmt.setString(3, writer);
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
}
