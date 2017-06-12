package com.project.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.Bean.Patient;
import com.project.dao.PatientHistoryDao;


public class ViewHistoryServlet_Recp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String patId=request.getParameter("pId");
		PatientHistoryDao patHisDao=new PatientHistoryDao();
		ArrayList<Patient> arrList=patHisDao.getPatientDetails(Integer.parseInt(patId));
		
		ServletContext context= getServletContext();
		context.setAttribute("PATLIST_REC", arrList);
		
		RequestDispatcher rd= request.getRequestDispatcher("viewPatientHistory_Rec.jsp");
		rd.forward(request, response);
	}

}
