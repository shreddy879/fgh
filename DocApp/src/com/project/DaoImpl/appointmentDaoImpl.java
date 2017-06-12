package com.project.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.project.dao.DBUtil;
import com.project.dao.appointmentDao;
import com.project.models.Appointment;

public class appointmentDaoImpl implements appointmentDao{

	@Override
	public boolean fixAppointment(Appointment app) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateAppointment(Appointment app) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Appointment> getAllDetailsRecp() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Appointment> getAllDetailsDoc(int dId) throws ClassNotFoundException {
		String SQL="select * from appointment";
		ArrayList<Appointment>appList=new ArrayList<Appointment>();
		Appointment app=null;
		Connection con = null;
		DBUtil dbConn=new DBUtil();
		try {
			PreparedStatement ps=con.prepareStatement(SQL); 
			dbConn.getConnection();
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				app=new Appointment();
				app.setpId(rs.getInt("pId"));
				app.setdNo(rs.getInt("dNo"));
				app.setSlots(rs.getInt("slots"));
				app.setBookingDate(rs.getString("bookingDate"));
				app.setCouponNo(rs.getString("couponNo"));
				appList.add(app);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			dbConn.closeConnection();
		}
		return appList;
	}
}
