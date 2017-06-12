package com.project.dao;

import java.util.List;

import com.project.models.Patient;

public interface patientDao {
	public boolean setPatientDetails(Patient obj) throws ClassNotFoundException;
	public List<Patient> getAllPatientDetails() throws ClassNotFoundException;//using statement
}
