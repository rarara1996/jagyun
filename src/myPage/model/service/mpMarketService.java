package  projectDiagram.myPage.model.service;

import static  projectDiagram.common.JDBCTemplate.close;
import static  projectDiagram.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import  projectDiagram.myPage.model.dao.mpMarketDao;
import  projectDiagram.myPage.model.vo.Market;
import  projectDiagram.report.model.dao.ReportDao;
import  projectDiagram.report.model.vo.Report;



public class mpMarketService {

	//리스트셀렉용
	public ArrayList<Market> selectList() {
		Connection conn = getConnection();

		ArrayList<Market> list = new mpMarketDao().selectList(conn);

		close(conn);

		return list;
	}
	
	//디테일셀렉용
	public Market selectMarket(int nno) {
		Connection conn = getConnection();
		Market r = new mpMarketDao().selectMarket(conn, nno);
		close(conn);
		return r;
	}
}
