package com.project.dao;

import com.project.Bean.Appointment;

public interface AppointmentDao {
	public boolean fixAppointment(Appointment app) throws Exception;
	public Appointment checkAppointment(int pId,int slots,String bookingDate);
}
