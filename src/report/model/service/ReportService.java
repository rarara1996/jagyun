package  projectDiagram.report.model.service;

import static  projectDiagram.common.JDBCTemplate.*;


import java.sql.Connection;
import java.util.ArrayList;


import  projectDiagram.report.model.dao.ReportDao;
import  projectDiagram.report.model.vo.Report;



public class ReportService {
	// 1. 신고내역 리스트 조회용 서비스
	public ArrayList<Report> selectList() {
		Connection conn = getConnection();

		ArrayList<Report> list = new ReportDao().selectList(conn);

		close(conn);

		return list;
	}

	// 2. 신고 작성용 서비스

	
	public int insertReport(Report n, String writer) {
		Connection conn = getConnection();
		int result = new ReportDao().insertReport(conn,n,writer);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);

		return result;
	}

	
	// 3. 신고 조회용 서비스
	public Report selectReport(int nno) {
		Connection conn = getConnection();
		Report r = new ReportDao().selectReport(conn, nno);
		close(conn);
		return r;
	}
	
	// 4. 신고 수정용 서비스
	public int updateReport(Report r) {
		Connection conn = getConnection();

		int result = new ReportDao().updateReport(conn, r);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);

		return result;
	}




	
}
