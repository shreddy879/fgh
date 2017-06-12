package com.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.project.Bean.Doctor;
import com.project.Bean.Patient;
import com.sun.org.apache.xalan.internal.xsltc.util.IntegerArray;

public class DoctorDao {
	
	public Doctor checkUser(String dName, String dPwd){
		Doctor doc=null;
		Connection con=null;
		try{
			DBUtil dbConn=new DBUtil();
			con=dbConn.getConnection();
			String sql="select dName,dPwd from doctor where dName=? and dPwd=?";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, dName);
			pstmt.setString(2, dPwd);
			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				doc=new Doctor();
				doc.setdName(rs.getString("dName"));
				doc.setdPwd(rs.getString("dPwd"));
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return doc;
		
	}


	public ArrayList<Patient> getPatientDetails(int pId) {
		ArrayList<Patient> arr = new ArrayList<Patient>();
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			DBUtil dbConn = new DBUtil();
			con = dbConn.getConnection();
			String sql = "select * from patient where pId=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, pId);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Patient pat = new Patient();
				pat.setpId(Integer.parseInt(rs.getString("pId")));
				pat.setFName(rs.getString("FName"));
				pat.setLName(rs.getString("LName"));
				pat.setAge(rs.getInt("Age"));
				pat.setGender(rs.getString("Gender"));
				pat.setAddr(rs.getString("Addr"));
				pat.setCont(rs.getString("Cont"));
				pat.setDisease(rs.getString("Disease"));
				arr.add(pat);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return arr;

	}
	
	@SuppressWarnings("null")
	public int[] getDocIDs() throws ClassNotFoundException{
		DBUtil dbConn=new DBUtil();
		int docIdList[]=null;
		try{
			
			Connection con=dbConn.getConnection();
			String sql="select dNo from doctor";
			PreparedStatement pstmt=con.prepareStatement(sql);
						
			ResultSet rs=pstmt.executeQuery();
			int i=0;
			
			//docIdList[]= new int[rs.getFetchSize()];
			while(rs.next())
			{
				
				docIdList[i]=(rs.getInt("dNo"));
				
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			dbConn.closeConnection();
		}
	return docIdList;
	}

}
