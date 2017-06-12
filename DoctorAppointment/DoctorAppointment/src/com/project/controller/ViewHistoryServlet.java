package com.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.Bean.Patient;
import com.project.dao.DoctorDao;
import com.project.dao.PatientHistoryDao;


public class ViewHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				System.out.println("Inside doPost()");
				String patId=request.getParameter("pId");
				PatientHistoryDao patHistDao=new PatientHistoryDao();
				ArrayList<Patient> list=patHistDao.getPatientDetails(Integer.parseInt(patId));
				
	
				ServletContext context= getServletContext();
				String p=context.getInitParameter("ADMINNAME");
				System.out.println("COntext value: "+p);
				
				context.setAttribute("PATLIST", list); 
				

				RequestDispatcher rd= request.getRequestDispatcher("viewPatientHistory.jsp");
				rd.forward(request, response);
	}

}
