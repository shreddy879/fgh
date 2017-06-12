package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.project.Bean.Patient;

public class BookAppoDao {

	public Patient setPatientDetails(Patient obj) {

		Patient pt = new Patient();
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			DBUtil dbConn = new DBUtil();
			con = dbConn.getConnection();
			String sql = "insert into patient(pId,FName,LName,Age,Gender,Addr,Cont,Disease) values(pId.nextval,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, obj.getpId());
			pstmt.setString(2, obj.getFName());
			pstmt.setString(3, obj.getLName());
			pstmt.setInt(4, obj.getAge());
			pstmt.setString(5, obj.getGender());
			pstmt.setString(6, obj.getAddr());
			pstmt.setString(7, obj.getCont());
			pstmt.setString(8, obj.getDisease());

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pt;

	}
//	public ArrayList<Patient> getInfo(){
//		ArrayList<Patient> list=new ArrayList<Patient>();
//		Connection con = null;
//		ResultSet rs=null;
//		try{
//			DBUtil dbConn=new DBUtil();
//			dbConn.getConnection();
//			Statement stmt=con.createStatement();
//			String sql="select patientId.currval,slot from patient";
//			rs=stmt.executeQuery(sql);
//			while(rs.next()){
//				Patient pat=new Patient();
//				pat.setPatId(Integer.parseInt(rs.getString("patId")));
//				pat.setSlot(Integer.parseInt(rs.getString("slot")));
//				list.add(pat);
//			}
//		}
//		catch(Exception e){
//			e.printStackTrace();
//		}
//		return list;
//		
//	}

}
