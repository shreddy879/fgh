package com.project.dao;

import java.util.List;

import com.project.models.Appointment;

public interface appointmentDao {
	public boolean fixAppointment(Appointment app); //public boolean addUser(user user);
	public boolean updateAppointment(Appointment app);//public boolean updateUser(user user);
	public List<Appointment> getAllDetailsRecp();//public List<user> getAllUsersUsingStatement(); 
									//get details of appointment for a particular date
	public List<Appointment> getAllDetailsDoc(int dId) throws ClassNotFoundException;//public List<user> getAllUsersUsingStatement(); 
													//get details of appointment for a particular doc no, slot & date
}
