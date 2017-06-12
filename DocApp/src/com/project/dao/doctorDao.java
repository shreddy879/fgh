package com.project.dao;

import com.project.models.Doctor;


public interface doctorDao {
	public Doctor validateDoctor(String dNo, String dPwd) throws ClassNotFoundException;
}
