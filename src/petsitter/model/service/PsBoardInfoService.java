package petsitter.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import petsitter.model.dao.PetSitterInfoDao;
import petsitter.model.dao.PsBoardInfoDao;
import petsitter.model.vo.PsBoard;
import petsitter.model.vo.PsInfo;

import static common.JDBCTemplate.*;
public class PsBoardInfoService {

	public int deletePsBoard(int psBoardNo) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PsBoardInfoDao().deleteBoard(psBoardNo,con);
		return 0;
	}

	public int insertPsBoard(PsBoard psBoard) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PsBoardInfoDao().insertBoard(psBoard,con);
		return 0;
	}

	public int updatePsBoard(PsBoard psBoard,int psBoardNo) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PsBoardInfoDao().updateBoard(psBoard,psBoardNo,con);
		return 0;
	}

	public ArrayList<PsBoard> selectList() {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		ArrayList<PsBoard> list = new PsBoardInfoDao().selectList(con);
		return null;
	}

	public PsBoard selectPsBoard(int psBoardNo) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		PsBoard psBoard = new PsBoardInfoDao().selectDetail(psBoardNo,con);
		return null;
	}

}
