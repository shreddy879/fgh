package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import com.project.Bean.Appointment;


public class AppointmentDaoImpl implements AppointmentDao {
	
	public boolean fixAppointment(Appointment app) throws Exception {
		String SQL="insert into appointment values(?,?,?,?,?)";
		boolean isAdded=false;
		Connection con = null;
		DBUtil dbConn = new DBUtil();
		
		try {
			con = dbConn.getConnection();
			PreparedStatement ps=con.prepareStatement(SQL);
			ps.clearParameters();
			ps.setInt(1, app.getpId());
			ps.setInt(2, app.getdNo());
			ps.setInt(3, app.getSlots());
			ps.setString(4, app.getBookingDate());
			ps.setString(5, app.getCouponNo());
			
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
	private static int getRandomNumberInRange(int min,int max){
		if(min>=max){
			System.out.println("max must be greater than min");
		}
		Random r=new Random();
		return r.nextInt((max-min)+1)+min;
		
	}
//	
//	@Override
//	public Appointment checkAppointment(int pId, int slots, String bookingDate)
//	{
//		if (slots==1){
//			int docNo=getRandomNumberInRange(1,3);
//		//	if(dNo==docNo){
//				
//			}
//		}else{
//			
//		}
//		return null;
//	}
//	
	@Override
	public Appointment checkAppointment(int pId, int slots, String bookingDate) {
		// TODO Auto-generated method stub
		return null;
	}
}
