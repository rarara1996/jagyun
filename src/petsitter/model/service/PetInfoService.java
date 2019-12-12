package projectDiagram.petsitter.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import projectDiagram.petsitter.model.dao.PetInfoDao;
import projectDiagram.petsitter.model.vo.Pet;
import static projectDiagram.common.JDBCTemplate.*;
public class PetInfoService {

	public int deletePet(int dogNum) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PetInfoDao().deletePet(con,dogNum);
		return 0;
	}

	public int insertPet(Pet pet) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PetInfoDao().insertPet(con,pet);
		return 0;
	}

	public int updatePet(Pet pet,int dogNum) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		int result = new PetInfoDao().updatePet(con,pet,dogNum);
		return 0;
	}

	public ArrayList<Pet> selectPetList() {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		ArrayList<Pet> list = new PetInfoDao().selectPetList(con);
		return null;
	}

	public Pet selectPet(int pId) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		Pet pet = new PetInfoDao().selectPet(con, pId);
		return null;
	}

}
