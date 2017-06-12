package com.project.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.project.dao.DBUtil;
import com.project.dao.patientDao;
import com.project.models.Patient;

public class patientDaoImpl implements patientDao {
	
	public boolean setPatientDetails(Patient pat) throws ClassNotFoundException {
		String SQL="insert into patient values(?,?,?,?,?,?,?)";
		boolean isAdded=false;
		Connection con = null;
		DBUtil dbConn = new DBUtil();
		try {
			con = dbConn.getConnection();
			PreparedStatement ps=con.prepareStatement(SQL);
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("SELECT pId FROM patient ");
			int pId=0;
			if(rs.last()){
				pId=rs.getInt(pId)+1;
			}
			ps.setInt(1, pId);
			ps.setString(2, pat.getName());
			ps.setInt(3, pat.getAge());
			ps.setString(4, pat.getGender());
			ps.setString(5, pat.getAddr());
			ps.setString(6, pat.getCont());
			ps.setString(7, pat.getDisease());
			ps.setInt(8, pat.getAge());
			int cnt=ps.executeUpdate();
			if (cnt==1){
				isAdded=true;
				System.out.println("+++ User Added Successfully +++");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			dbConn.closeConnection();
		}
		return isAdded;
	}

	@Override
	public List<Patient> getAllPatientDetails() throws ClassNotFoundException {
		
		String SQL="select * from patient";
		ArrayList<Patient>patList=new ArrayList<Patient>();
		Patient pat=null;
		Connection con = null;
		DBUtil dbConn = new DBUtil();
		try {
			con = dbConn.getConnection();
			Statement st=con.createStatement(); 
			//Statement st=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABALE);
			ResultSet rs=st.executeQuery(SQL);
			while(rs.next()){
				pat=new Patient();
				pat.setName(rs.getString("Name"));
				pat.setAge(rs.getInt("Age"));
				pat.setGender(rs.getString("Gender"));
				pat.setAddr(rs.getString("Addr"));
				pat.setCont(rs.getString("Cont"));
				pat.setDisease(rs.getString("Cont"));
				patList.add(pat);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			dbConn.closeConnection();
		}
		return patList;
	}

	
}
