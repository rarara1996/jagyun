package petsitter.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.model.vo.IMG;
import petsitter.model.dao.PsBoardInfoDao;
import petsitter.model.vo.PsBoard;

import static common.JDBCTemplate.*;
public class PsBoardInfoService {
	public int deletePsBoard(int psBoardNo) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PsBoardInfoDao().deleteBoard(psBoardNo,con);
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
	public int insertPsBoard(PsBoard pb, ArrayList<IMG> fileList) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		
		PsBoardInfoDao pDao = new PsBoardInfoDao();
		
		int insertPsB = pDao.insertPsBoard(pb,con);
		System.out.println(insertPsB);
		int insertImg = pDao.insertImg(fileList,con);
		System.out.println(insertImg);
		if(insertPsB>0 && insertImg>0) {
			System.out.println("commit 중...");
			commit(con);
			System.out.println("저장 성공");
		}else {
			System.out.println("rollback 중...");
			rollback(con);
		}
		
		close(con);
		
		return insertPsB;
	}

	public PsBoard checkBoard(int psNo) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		
		
		PsBoard pb = new PsBoardInfoDao().checkBoard(con,psNo);
		
		close(con);
		
		return pb;
	}

	public ArrayList selectList(int i) { //리스트를 뽑아보기 위해서
		// TODO Auto-generated method stub
		Connection con = getConnection();
		System.out.println("service : PsBoardInfoService - selectList 함수");
		ArrayList list = null;
		
		PsBoardInfoDao pbd = new PsBoardInfoDao();
		
		if(i == 1) {
			list = pbd.selectBList(con);
		}else if(i == 2){
			list = pbd.selectIList(con);
		}else {
			list = pbd.selectPList(con);
		}
		
		close(con);
		
		return list;
	}
	
	
	
}
