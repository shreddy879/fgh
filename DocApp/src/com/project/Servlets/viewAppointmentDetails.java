package com.project.Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.DaoImpl.appointmentDaoImpl;
import com.project.models.Appointment;


public class viewAppointmentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String dId=request.getParameter("dId");
		appointmentDaoImpl appDao=new appointmentDaoImpl();
		ArrayList<Appointment> arrList;
		try {
			arrList = appDao.getAllDetailsDoc(Integer.parseInt(dId));
			ServletContext context= getServletContext();
			context.setAttribute("APPLIST_REC", arrList);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		

		
		RequestDispatcher rd= request.getRequestDispatcher("viewPatientHistory.jsp");
		rd.forward(request, response);
	} 
	  
	
}
