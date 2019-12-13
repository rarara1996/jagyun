package projectDiagram.petsitter.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import projectDiagram.petsitter.model.dao.PetSitterInfoDao;
import projectDiagram.petsitter.model.vo.PsInfo;
import static projectDiagram.common.JDBCTemplate.*;
public class PetSitterInfoService {

	public int insertPs(PsInfo ps) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PetSitterInfoDao().insertPs(ps,con);
		return 0;
	}

	public int deletePs(int psNo) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PetSitterInfoDao().deletePs(psNo,con);
		return 0;
	}

	public int updatePsInfo(PsInfo psInfo,int psNo) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PetSitterInfoDao().updatePsInfo(psInfo,psNo,con);
		return 0;
	}

	public ArrayList<PsInfo> selectList() {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		ArrayList<PsInfo> list = new PetSitterInfoDao().selectList(con);
		return null;
	}

	public PsInfo selectDetail(int psNo) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		PsInfo psInfo = new PetSitterInfoDao().selectDetail(psNo,con);
		return null;
	}

}
