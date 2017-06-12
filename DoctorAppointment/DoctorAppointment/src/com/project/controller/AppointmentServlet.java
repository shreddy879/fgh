package com.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.Bean.Appointment;
import com.project.Bean.Patient;
import com.project.dao.AppointmentDao;
import com.project.dao.BookAppoDao;

public class AppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
		protected void doPost(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			
			response.setContentType("text/css");
			PrintWriter out = response.getWriter();
			AppointmentDao dao = new AppointmentDao();
			Appointment app = new Appointment();
			
			int pId = Integer.parseInt(request.getParameter("pId"));
			int dNo = Integer.parseInt(request.getParameter("dNo"));
			int slots = Integer.parseInt(request.getParameter("slots"));
			String bookingDate = request.getParameter("bookingDate");
			String couponNo = request.getParameter("couponNo");
			
			app.setpId(pId);
			app.setdNo(dNo);
			app.setSlots(slots);
			app.setBookingDate(bookingDate);
			app.setCouponNo(couponNo);


			dao.fixAppointment(app);
			
			response.sendRedirect("nextPage.jsp");

		}

	}

