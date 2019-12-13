package projectDiagram.petsitter.model.service;

import static projectDiagram.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import projectDiagram.petsitter.model.dao.PsBoardInfoDao;
import projectDiagram.petsitter.model.dao.PsReservInfoDao;
import projectDiagram.petsitter.model.vo.PsBoard;
import projectDiagram.petsitter.model.vo.Reservation;

public class PsReservInfoService {

	public int insertReserv(Reservation reserv) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PsReservInfoDao().insertReserv(reserv,con);
		return 0;
	}

	public int deleteReserv(int reservNo) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PsReservInfoDao().deleteReserv(reservNo,con);
		return 0;
	}

	public ArrayList<Reservation> selectReservList() {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		ArrayList<Reservation> list = new PsReservInfoDao().selectReservList(con);
		return null;
	}

	public Reservation selectReserv(int reservNO) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		Reservation reservation = new PsReservInfoDao().selectReserv(reservNO,con);
		return null;
	}
}
