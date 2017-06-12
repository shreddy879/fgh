package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.project.Bean.Patient;

public class PatientHistoryDao {
	

	public ArrayList<Patient> getPatientDetails(int pId){
		ArrayList<Patient> list=new ArrayList<Patient>();
		Connection con = null;
		PreparedStatement pstmt=null;
		try{
			DBUtil dbConn = new DBUtil();
			con = dbConn.getConnection();
			String sql="select * from patient where pId=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, pId);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				Patient pat=new Patient();
				pat.setpId(Integer.parseInt(rs.getString("pId")));
				pat.setFName(rs.getString("FName"));
				pat.setLName(rs.getString("LName"));
				pat.setAge(rs.getInt("Age"));
				pat.setGender(rs.getString("Gender"));
				pat.setAddr(rs.getString("Addr"));
				pat.setCont(rs.getString("Cont"));
				pat.setDisease(rs.getString("Disease"));
				list.add(pat);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	/*public static void main(String[] args) {
		PatientHistoryDao dao=new PatientHistoryDao();
		ArrayList<Patient> l=dao.getPatientDetails(3);
		System.out.println("Total no of emps= "+l.size());
	}*/
	

}
